//
// UserActivityV3ResponseActivity.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct UserActivityV3ResponseActivity: Content, Hashable {

    public var time: Date
    public var comment: String
    public var postTitle: String?
    public var postId: String
    public var creatorTitle: String
    public var creatorUrl: String

    public init(time: Date, comment: String, postTitle: String? = nil, postId: String, creatorTitle: String, creatorUrl: String) {
        self.time = time
        self.comment = comment
        self.postTitle = postTitle
        self.postId = postId
        self.creatorTitle = creatorTitle
        self.creatorUrl = creatorUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case time
        case comment
        case postTitle
        case postId
        case creatorTitle
        case creatorUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(time, forKey: .time)
        try container.encode(comment, forKey: .comment)
        try container.encodeIfPresent(postTitle, forKey: .postTitle)
        try container.encode(postId, forKey: .postId)
        try container.encode(creatorTitle, forKey: .creatorTitle)
        try container.encode(creatorUrl, forKey: .creatorUrl)
    }
}
