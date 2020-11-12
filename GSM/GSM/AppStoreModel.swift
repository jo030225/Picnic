//
//  AppStoreModel.swift
//  GSM
//
//  Created by 조주혁 on 2020/11/12.
//

import Foundation

struct AppStoreModel: Codable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Codable {
    let artworkUrl100: String
    let trackName: String
}
