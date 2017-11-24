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
    let name: String?
    let color: String?
    let printPlace: String?
    let printQuantity: Int?
    let artist: String?
    let currency: String?
    let imageUrl: String?
}

extension Stamp {
    class func getStamps(completion: @escaping (_ result: [Stamp]) -> Void) {
        if let fileUrl = Bundle.main.url(forResource: "stamps", withExtension: "json") {
            if let data = try? Data(contentsOf: fileUrl) {
                let decoder = JSONDecoder()
                do {
                    let stamps = try decoder.decode([Stamp].self, from: data)
                    completion(stamps)
                } catch {
                    print(error)
                }
            }
        }
    }
}
