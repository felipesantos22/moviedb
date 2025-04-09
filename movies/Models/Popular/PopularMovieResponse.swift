//
//  PopularMovieResponse.swift
//  movies
//
//  Created by Felipe Santos on 09/04/25.
//

import Foundation

struct PopularMovieResponse: Codable {
    let page: Int
    let results: [PopularMovie]
}
