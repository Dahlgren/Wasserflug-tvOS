//
// UserNotificationUpdateV3PostRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct UserNotificationUpdateV3PostRequest: Content, Hashable {

    public enum Property: String, Content, Hashable, CaseIterable {
        case contentemail = "contentEmail"
        case contentfirebase = "contentFirebase"
    }
    public var creator: String
    /** Use `contentEmail` for email notifications, and `contentFirebase` for push notifications. */
    public var property: Property
    public var newValue: Bool

    public init(creator: String, property: Property, newValue: Bool) {
        self.creator = creator
        self.property = property
        self.newValue = newValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case creator
        case property
        case newValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(creator, forKey: .creator)
        try container.encode(property, forKey: .property)
        try container.encode(newValue, forKey: .newValue)
    }
}
