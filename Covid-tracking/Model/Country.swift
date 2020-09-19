//
//  Country.swift
//  Covid-tracking
//
//  Created by Beau Nouvelle on 2020-09-13.
//

import Foundation

struct Country: Decodable {
    let name: String
    let slug: String
    let totalConfirmed: Int
    let totalRecovered: Int
    let totalConfirmedAbbr: String
    let totalRecoveredAbbr: String

    enum CodingKeys: String, CodingKey {
        case name = "Country"
        case slug = "Slug"
        case totalConfirmed = "TotalConfirmed"
        case totalRecovered = "TotalRecovered"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        slug = try container.decode(String.self, forKey: .slug)

        totalConfirmed = try container.decode(Int.self, forKey: .totalConfirmed)
        totalRecovered = try container.decode(Int.self, forKey: .totalRecovered)

        totalConfirmedAbbr = totalConfirmed.formatUsingAbbrevation()
        totalRecoveredAbbr = totalRecovered.formatUsingAbbrevation()
    }
}
