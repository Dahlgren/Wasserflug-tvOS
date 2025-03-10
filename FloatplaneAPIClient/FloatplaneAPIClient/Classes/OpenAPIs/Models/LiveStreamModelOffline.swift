//
// LiveStreamModelOffline.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct LiveStreamModelOffline: Content, Hashable {

    public var title: String?
    public var description: String?
    public var thumbnail: ContentPostV3ResponseThumbnail?

    public init(title: String?, description: String?, thumbnail: ContentPostV3ResponseThumbnail?) {
        self.title = title
        self.description = description
        self.thumbnail = thumbnail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case description
        case thumbnail
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(description, forKey: .description)
        try container.encode(thumbnail, forKey: .thumbnail)
    }
}

