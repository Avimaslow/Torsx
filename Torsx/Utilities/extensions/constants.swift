//
//  constants.swift
//  Torsx
//
//  Created by Avi Maslow on 8/5/24.
//

import UIKit
enum RecordType {
    static let location = "TorsXLocation"
}
enum PlaceholderImage {
    static let square = UIImage(named:"defaultSquare")!
    static let banner = UIImage(named: "defaultBanner")!
}


    
    enum ImageDimension {
        case square, banner
        
        static func getPlaceholder(for dimension: ImageDimension) -> UIImage {
            switch dimension {
                case .square:
                    return PlaceholderImage.square
                case .banner:
                    return PlaceholderImage.banner
            }
        }
    }

