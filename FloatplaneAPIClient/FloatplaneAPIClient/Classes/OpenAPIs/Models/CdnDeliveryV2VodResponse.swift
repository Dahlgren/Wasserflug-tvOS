//
// CdnDeliveryV2VodResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct CdnDeliveryV2VodResponse: Content, Hashable {

    public enum Strategy: String, Content, Hashable, CaseIterable {
        case cdn = "cdn"
        case client = "client"
    }
    /** The domain of the CDN server to use. Combine with data from the `resource` object to create a full URL. */
    public var cdn: String
    /** Which download/streaming strategy to use. If `cdn`, then a `cdn` property will be included with the response. Otherwise, if set to `client`, then a `client` property will be included with the response. The cdn or client property should be combined with the `resource` property to perform the download/stream. */
    public var strategy: Strategy
    public var resource: CdnDeliveryV2VodResponseResource

    public init(cdn: String, strategy: Strategy, resource: CdnDeliveryV2VodResponseResource) {
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
