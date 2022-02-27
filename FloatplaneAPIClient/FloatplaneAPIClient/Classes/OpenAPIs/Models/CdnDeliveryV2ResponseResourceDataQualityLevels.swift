//
// CdnDeliveryV2ResponseResourceDataQualityLevels.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

/** Represents a quality of video to download */
public struct CdnDeliveryV2ResponseResourceDataQualityLevels: Content, Hashable {

    /** Used to identify this level of quality, and to refer to the `qualityLevelParams` object below by the property key. */
    public var name: String
    /** The video quality's resolution's width in pixels. */
    public var width: Int
    /** The video quality resolution's height in pixels. */
    public var height: Int
    /** The display-friendly version of `name`. */
    public var label: String
    /** The display order to be shown to the user. */
    public var order: Int

    public init(name: String, width: Int, height: Int, label: String, order: Int) {
        self.name = name
        self.width = width
        self.height = height
        self.label = label
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case width
        case height
        case label
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(width, forKey: .width)
        try container.encode(height, forKey: .height)
        try container.encode(label, forKey: .label)
        try container.encode(order, forKey: .order)
    }
}
