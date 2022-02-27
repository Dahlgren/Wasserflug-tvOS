//
// UserActivityV3Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct UserActivityV3Response: Content, Hashable {

    public var activity: [UserActivityV3ResponseActivity]
    public var visibility: String

    public init(activity: [UserActivityV3ResponseActivity], visibility: String) {
        self.activity = activity
        self.visibility = visibility
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case activity
        case visibility
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(activity, forKey: .activity)
        try container.encode(visibility, forKey: .visibility)
    }
}
