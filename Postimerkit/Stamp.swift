//
//  Stamp.swift
//  Postimerkit
//
//  Created by Joni Lassila on 24/11/2017.
//  Copyright © 2017 Joni Lassila. All rights reserved.
//

import UIKit

class Stamp: Codable {
    let keywords: String!
    let releaseDate: String!
    let usageEndDate: String?
    let faceValue: String?
    let name: String?
    let color: String?
    let printingPlace: String?
    let printingQuantity: Int?
    let artist: String?
    let currency: String?
    let imageUrl: String?
}
