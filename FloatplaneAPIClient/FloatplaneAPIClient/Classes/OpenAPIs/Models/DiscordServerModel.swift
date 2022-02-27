//
// DiscordServerModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct DiscordServerModel: Content, Hashable {

    public var id: String
    public var guildName: String
    public var guildIcon: String
    public var inviteLink: String
    public var inviteMode: String

    public init(id: String, guildName: String, guildIcon: String, inviteLink: String, inviteMode: String) {
        self.id = id
        self.guildName = guildName
        self.guildIcon = guildIcon
        self.inviteLink = inviteLink
        self.inviteMode = inviteMode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case guildName
        case guildIcon
        case inviteLink
        case inviteMode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(guildName, forKey: .guildName)
        try container.encode(guildIcon, forKey: .guildIcon)
        try container.encode(inviteLink, forKey: .inviteLink)
        try container.encode(inviteMode, forKey: .inviteMode)
    }
}
