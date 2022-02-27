//
// CdnDeliveryV2Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct CdnDeliveryV2Response: Content, Hashable {

    /** The domain of the CDN server to use. */
    public var cdn: String
    public var strategy: String
    public var resource: CdnDeliveryV2ResponseResource

    public init(cdn: String, strategy: String, resource: CdnDeliveryV2ResponseResource) {
        self.cdn = cdn
        self.strategy = strategy
        self.resource = resource
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cdn
        case strategy
        case resource
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(cdn, forKey: .cdn)
        try container.encode(strategy, forKey: .strategy)
        try container.encode(resource, forKey: .resource)
    }
}
