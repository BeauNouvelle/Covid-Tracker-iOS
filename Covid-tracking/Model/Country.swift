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
    let code: String

    enum CodingKeys: String, CodingKey {
        case name = "Country"
        case slug = "Slug"
        case code = "ISO2"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        slug = try container.decode(String.self, forKey: .slug)
        code = try container.decode(String.self, forKey: .code)
    }
}
