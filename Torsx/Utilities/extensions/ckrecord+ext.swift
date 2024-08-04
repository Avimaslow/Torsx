//
//  ckrecord+ext.swift
//  Torsx
//
//  Created by Avi Maslow on 8/5/24.
//

import CloudKit
extension CKRecord {
    func convertToTorsxLocation() -> TorsXLocation { TorsXLocation(record: self)}
}
