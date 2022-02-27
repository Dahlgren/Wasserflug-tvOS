//
// ContentPostV3Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct ContentPostV3Response: Content, Hashable {

    public enum ModelType: String, Content, Hashable, CaseIterable {
        case blogpost = "blogPost"
    }
    public enum UserInteraction: String, Content, Hashable, CaseIterable {
        case like = "like"
        case dislike = "dislike"
    }
    public var id: String
    public var guid: String
    public var title: String
    /** Text description of the post. May have HTML paragraph (`<p>`) tags surrounding it, along with other HTML.. */
    public var text: String
    public var type: ModelType
    public var tags: [String]
    public var attachmentOrder: [String]
    public var metadata: PostMetadataModel
    public var releaseDate: Date
    public var likes: Int
    public var dislikes: Int
    public var score: Int
    public var comments: Int
    public var creator: CreatorModelV2
    public var wasReleasedSilently: Bool
    public var thumbnail: ImageModel
    public var isAccessible: Bool
    public var userInteraction: [UserInteraction]?
    public var videoAttachments: [VideoAttachmentModel]
    public var audioAttachments: [AnyCodable]
    public var pictureAttachments: [PictureAttachmentModel]
    public var galleryAttachments: [AnyCodable]

    public init(id: String, guid: String, title: String, text: String, type: ModelType, tags: [String], attachmentOrder: [String], metadata: PostMetadataModel, releaseDate: Date, likes: Int, dislikes: Int, score: Int, comments: Int, creator: CreatorModelV2, wasReleasedSilently: Bool, thumbnail: ImageModel, isAccessible: Bool, userInteraction: [UserInteraction]? = nil, videoAttachments: [VideoAttachmentModel], audioAttachments: [AnyCodable], pictureAttachments: [PictureAttachmentModel], galleryAttachments: [AnyCodable]) {
        self.id = id
        self.guid = guid
        self.title = title
        self.text = text
        self.type = type
        self.tags = tags
        self.attachmentOrder = attachmentOrder
        self.metadata = metadata
        self.releaseDate = releaseDate
        self.likes = likes
        self.dislikes = dislikes
        self.score = score
        self.comments = comments
        self.creator = creator
        self.wasReleasedSilently = wasReleasedSilently
        self.thumbnail = thumbnail
        self.isAccessible = isAccessible
        self.userInteraction = userInteraction
        self.videoAttachments = videoAttachments
        self.audioAttachments = audioAttachments
        self.pictureAttachments = pictureAttachments
        self.galleryAttachments = galleryAttachments
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case guid
        case title
        case text
        case type
        case tags
        case attachmentOrder
        case metadata
        case releaseDate
        case likes
        case dislikes
        case score
        case comments
        case creator
        case wasReleasedSilently
        case thumbnail
        case isAccessible
        case userInteraction
        case videoAttachments
        case audioAttachments
        case pictureAttachments
        case galleryAttachments
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(guid, forKey: .guid)
        try container.encode(title, forKey: .title)
        try container.encode(text, forKey: .text)
        try container.encode(type, forKey: .type)
        try container.encode(tags, forKey: .tags)
        try container.encode(attachmentOrder, forKey: .attachmentOrder)
        try container.encode(metadata, forKey: .metadata)
        try container.encode(releaseDate, forKey: .releaseDate)
        try container.encode(likes, forKey: .likes)
        try container.encode(dislikes, forKey: .dislikes)
        try container.encode(score, forKey: .score)
        try container.encode(comments, forKey: .comments)
        try container.encode(creator, forKey: .creator)
        try container.encode(wasReleasedSilently, forKey: .wasReleasedSilently)
        try container.encode(thumbnail, forKey: .thumbnail)
        try container.encode(isAccessible, forKey: .isAccessible)
        try container.encodeIfPresent(userInteraction, forKey: .userInteraction)
        try container.encode(videoAttachments, forKey: .videoAttachments)
        try container.encode(audioAttachments, forKey: .audioAttachments)
        try container.encode(pictureAttachments, forKey: .pictureAttachments)
        try container.encode(galleryAttachments, forKey: .galleryAttachments)
    }
}
