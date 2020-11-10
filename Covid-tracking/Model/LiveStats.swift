//
//  LiveStats.swift
//  Covid-tracking
//
//  Created by Beau Nouvelle on 2020-09-13.
//

import Foundation

struct LiveStats: Decodable {
    let Confirmed: Int
    let Active: Int
    let Recovered: Int
    let Date: String
}
