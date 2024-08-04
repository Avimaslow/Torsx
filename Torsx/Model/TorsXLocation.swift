//
//  TorsXLocation.swift
//  Torsx
//
//  Created by Avi Maslow on 8/4/24.
//

import CloudKit
import CoreLocation
import UIKit

struct TorsXLocation: Identifiable, Hashable {
   
    
    static let kName = "name"
    static let kDescription = "description"
    
    static let bannerAssetKey = "bannerAsset"
    static let squareAssetLKey = "squareAssetL"
    static let numBathroomsKey = "NumBathrooms"
    static let addressKey = "address"
    static let priceKey = "price"
    static let locationKey = "location"
    static let websiteUrlKey = "websiteUrl"
    static let roomsKey = "rooms"
    static let phoneKey = "phoneNum"
    
   
    let id: CKRecord.ID
    let name: String
    let description: String
    let bannerAsset: CKAsset!
    let squareAssetL: [CKAsset]!
    let NumBathrooms: Double
    let address: String
    let price: Int
    let location: CLLocation
    let websiteUrl: String
    let rooms: Int
    let phoneNum: String
    
    init(record: CKRecord) {
        id = record.recordID
        name = record[TorsXLocation.kName] as? String ?? "N/A"
        description = record[TorsXLocation.kDescription] as? String ?? "N/A"
        bannerAsset = record[TorsXLocation.bannerAssetKey] as? CKAsset
        squareAssetL = record[TorsXLocation.squareAssetLKey] as? [CKAsset] ?? []
        NumBathrooms = record[TorsXLocation.numBathroomsKey] as? Double ?? 0.0
        address = record[TorsXLocation.addressKey] as? String ?? "N/A"
        price = record[TorsXLocation.priceKey] as? Int ?? 0
        location = record[TorsXLocation.locationKey] as? CLLocation ?? CLLocation(latitude: 0, longitude: 0)
        websiteUrl = record[TorsXLocation.websiteUrlKey] as? String ?? "N/A"
        rooms = record[TorsXLocation.roomsKey] as? Int ?? 0
        phoneNum = record[TorsXLocation.phoneKey] as? String ?? "N/A"
        
    }


    func createSquareImages() -> [UIImage] {
        guard let assets = squareAssetL else { return [ImageDimension.getPlaceholder(for: .square)] }
        return assets.map { $0.convertToUIImage(in: .square) }
    }

func createBannerImage() -> UIImage {
    guard let asset = bannerAsset else { return PlaceholderImage.banner }
    return asset.convertToUIImage(in: .banner)
}
    func createFirstSquareImage() -> UIImage {
            return createSquareImages().first ?? ImageDimension.getPlaceholder(for: .square)
        }
        
}
