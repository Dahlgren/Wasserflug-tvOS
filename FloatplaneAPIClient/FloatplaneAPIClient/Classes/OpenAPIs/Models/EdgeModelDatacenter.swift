//
// EdgeModelDatacenter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct EdgeModelDatacenter: Content, Hashable {

    public var countryCode: String
    public var regionCode: String
    public var latitude: Double
    public var longitude: Double

    public init(countryCode: String, regionCode: String, latitude: Double, longitude: Double) {
        self.countryCode = countryCode
        self.regionCode = regionCode
        self.latitude = latitude
        self.longitude = longitude
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case regionCode
        case latitude
        case longitude
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(countryCode, forKey: .countryCode)
        try container.encode(regionCode, forKey: .regionCode)
        try container.encode(latitude, forKey: .latitude)
        try container.encode(longitude, forKey: .longitude)
    }
}
