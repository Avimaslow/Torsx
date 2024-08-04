//
//  cloudkitManager.swift
//  Torsx
//
//  Created by Avi Maslow on 8/5/24.
//

import CloudKit

struct cloudkitManager {
    static let shared = cloudkitManager()
    private init() {}
    let container = CKContainer.default()
    
    static func getLocations(completed: @escaping (Result<[TorsXLocation], Error>) -> Void) {
        Task {
            do {
                let locations = try await fetchAllLocations()
                completed(.success(locations))
            } catch {
                completed(.failure(error))
            }
        }
    }
    
    private static func fetchAllLocations(cursor: CKQueryOperation.Cursor? = nil) async throws -> [TorsXLocation] {
        var allLocations: [TorsXLocation] = []
        let sortDescriptor = NSSortDescriptor(key: TorsXLocation.priceKey, ascending: true)
        let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
        query.sortDescriptors = [sortDescriptor]
        
        let (records, nextCursor) = try await performQuery(query, cursor: cursor)
        let locations = records.map { $0.convertToTorsxLocation() }
        allLocations.append(contentsOf: locations)
        
        if let nextCursor = nextCursor {
            let moreLocations = try await fetchAllLocations(cursor: nextCursor)
            allLocations.append(contentsOf: moreLocations)
        }
        
        return allLocations
    }
    
    private static func performQuery(_ query: CKQuery, cursor: CKQueryOperation.Cursor?) async throws -> ([CKRecord], CKQueryOperation.Cursor?) {
        return try await withCheckedThrowingContinuation { continuation in
            let operation: CKQueryOperation
            if let cursor = cursor {
                operation = CKQueryOperation(cursor: cursor)
            } else {
                operation = CKQueryOperation(query: query)
            }
            
            var records: [CKRecord] = []
            var nextCursor: CKQueryOperation.Cursor?
            
            operation.recordFetchedBlock = { record in
                records.append(record)
            }
            
            operation.queryCompletionBlock = { cursor, error in
                if let error = error {
                    continuation.resume(throwing: error)
                } else {
                    nextCursor = cursor
                    continuation.resume(returning: (records, nextCursor))
                }
            }
            
            CKContainer.default().publicCloudDatabase.add(operation)
        }
    }
}
