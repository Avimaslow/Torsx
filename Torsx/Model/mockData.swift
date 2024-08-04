//
//  mockData.swift
//  Torsx
//
//  Created by Avi Maslow on 8/4/24.
//

import CloudKit
struct MockData {
    static var location: CKRecord {
        let record = CKRecord(recordType: RecordType.location)
        record[TorsXLocation.kName] = "The Vitagraph"
        record[TorsXLocation.kDescription] = "testing the description one bed yess"
        record[TorsXLocation.addressKey] = "123 main street"
        record[TorsXLocation.websiteUrlKey] = "https://www.torsx.com/dumbo/apartment-for-rent/100-jay-street-28a/2859"
        record[TorsXLocation.locationKey] = CLLocation(latitude: 40.70216464068551, longitude: -73.98692585767145)
        record[TorsXLocation.roomsKey] = 3
        record[TorsXLocation.priceKey] = 11995
        record[TorsXLocation.numBathroomsKey] = 2.5
        
        
        
        return record
    }
}
