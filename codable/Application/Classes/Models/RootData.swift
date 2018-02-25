//
//  RootData.swift
//  codable
//
//  Created by Ammad on 24/02/2018.
//  Copyright © 2018 Ammad. All rights reserved.
//

import Foundation

// MARK: - JSON Models

struct RootData: Codable {
    let type: String
    let metadata: MetaData
    let features: [Features]
    let bbox: [Bbox]
}

struct Features: Codable {
    let type: String
    let properties: Properties
    let geometry: Geometry
    let id: String
}

struct Properties: Codable {
    let mag: Double
    let place: String
    let time: Double
    let updated: Double
    let tz: Int
    let url: String
    let detail: String
    let felt: Int?
    let cdi: Double?
    let mmi: Double?
    let alert: String
    let status: String
    let tsunami: Int
    let sig: Int
    let net: String
    let code: String
}

struct Geometry: Codable {
    let type: String
    let coordinates: [Double]
}

struct Bbox: Codable {

}

struct MetaData: Codable {
    let generated: Double
    let url: String
    let title: String
    let status: Int
    let api: String
    let limit: Int
    let offset: Int
    let count: Int
}
