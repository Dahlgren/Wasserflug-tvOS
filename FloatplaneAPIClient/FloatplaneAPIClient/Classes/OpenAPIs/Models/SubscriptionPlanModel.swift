//
// SubscriptionPlanModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct SubscriptionPlanModel: Content, Hashable {

    public var id: String
    public var title: String
    public var description: String
    public var price: String
    public var priceYearly: String?
    public var currency: String
    public var logo: String?
    public var interval: String
    public var featured: Bool
    public var allowGrandfatheredAccess: Bool
    public var discordServers: [DiscordServerModel]
    public var discordRoles: [DiscordRoleModel]

    public init(id: String, title: String, description: String, price: String, priceYearly: String? = nil, currency: String, logo: String? = nil, interval: String, featured: Bool, allowGrandfatheredAccess: Bool, discordServers: [DiscordServerModel], discordRoles: [DiscordRoleModel]) {
        self.id = id
        self.title = title
        self.description = description
        self.price = price
        self.priceYearly = priceYearly
        self.currency = currency
        self.logo = logo
        self.interval = interval
        self.featured = featured
        self.allowGrandfatheredAccess = allowGrandfatheredAccess
        self.discordServers = discordServers
        self.discordRoles = discordRoles
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case description
        case price
        case priceYearly
        case currency
        case logo
        case interval
        case featured
        case allowGrandfatheredAccess
        case discordServers
        case discordRoles
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(description, forKey: .description)
        try container.encode(price, forKey: .price)
        try container.encodeIfPresent(priceYearly, forKey: .priceYearly)
        try container.encode(currency, forKey: .currency)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encode(interval, forKey: .interval)
        try container.encode(featured, forKey: .featured)
        try container.encode(allowGrandfatheredAccess, forKey: .allowGrandfatheredAccess)
        try container.encode(discordServers, forKey: .discordServers)
        try container.encode(discordRoles, forKey: .discordRoles)
    }
}
