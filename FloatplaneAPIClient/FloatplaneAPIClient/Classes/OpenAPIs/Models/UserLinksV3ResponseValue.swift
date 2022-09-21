//
// UserLinksV3ResponseValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct UserLinksV3ResponseValue: Content, Hashable {

    /** The URL the user has configured for this link. */
    public var url: String
    public var type: UserLinksV3ResponseValueType

    public init(url: String, type: UserLinksV3ResponseValueType) {
        self.url = url
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(url, forKey: .url)
        try container.encode(type, forKey: .type)
    }
}
