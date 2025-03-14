//
// LiveStreamModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct LiveStreamModel: Content, Hashable {

    public var id: String
    public var title: String
    public var description: String
    public var thumbnail: ContentPostV3ResponseThumbnail?
    public var owner: String
    public var streamPath: String
    public var offline: LiveStreamModelOffline

    public init(id: String, title: String, description: String, thumbnail: ContentPostV3ResponseThumbnail?, owner: String, streamPath: String, offline: LiveStreamModelOffline) {
        self.id = id
        self.title = title
        self.description = description
        self.thumbnail = thumbnail
        self.owner = owner
        self.streamPath = streamPath
        self.offline = offline
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case description
        case thumbnail
        case owner
        case streamPath
        case offline
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(description, forKey: .description)
        try container.encode(thumbnail, forKey: .thumbnail)
        try container.encode(owner, forKey: .owner)
        try container.encode(streamPath, forKey: .streamPath)
        try container.encode(offline, forKey: .offline)
    }
}

