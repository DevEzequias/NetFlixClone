//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Ezequias Santos on 15/07/23.
//

import Foundation

// MARK: - YoutubeSearchResponse
struct YoutubeSearchResponse: Codable {
    var regionCode: String
    var items: [VideoElement]
}

// MARK: - VideoElement
struct VideoElement: Codable {
    var id: IdVideo
}

// MARK: - IdVideo
struct IdVideo: Codable {
    var kind: String
    var videoId: String
}
