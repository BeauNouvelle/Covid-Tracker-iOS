//
//  Summary.swift
//  Covid-tracking
//
//  Created by Beau Nouvelle on 2020-09-19.
//

import Foundation

struct Summary: Decodable {
    let Global: GlobalStats
    let Countries: [Country]
}
