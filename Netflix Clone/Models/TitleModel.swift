//
//  TitleModel.swift
//  Netflix Clone
//
//  Created by Ezequias Santos on 12/07/23.
//

import Foundation

// MARK: - TrendingMoviesResponse

struct TrendingTitleResponse: Codable {
    var page: Int
    var results: [Title]
}

// MARK: - Title

struct Title: Codable {
    let id: Int
    let original_title: String?
    let overview: String?
    let poster_path: String?
    let media_type: String?
    let release_date: String?
    let vote_average: Double
    let vote_count: Int
}
