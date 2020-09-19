//
//  DetailCountryView.swift
//  Covid-tracking
//
//  Created by Beau Nouvelle on 2020-09-13.
//

import Foundation
import SwiftUI

struct DetailCountryView: View {

    @ObservedObject var apiService = APIService<[LiveStats]>()
    var slug: String?

    var body: some View {
        VStack {
            switch apiService.state {
            case .isLoading:
                Text("Loading...")
            case .hasData(let stats):
                Text("\(stats.last?.Cases ?? -1)")
            }
        }
        .onChange(of: slug, perform: { value in
            slug.map { slug in
                apiService.getStats(slug: slug)
            }
        })
    }

}
