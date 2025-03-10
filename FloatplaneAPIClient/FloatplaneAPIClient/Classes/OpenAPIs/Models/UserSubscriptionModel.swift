//
// UserSubscriptionModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct UserSubscriptionModel: Content, Hashable {

    public var startDate: Date
    public var endDate: Date?
    public var paymentID: Int
    public var interval: String
    public var paymentCancelled: Bool
    public var plan: SubscriptionPlanModel
    public var creator: String

    public init(startDate: Date, endDate: Date?, paymentID: Int, interval: String, paymentCancelled: Bool, plan: SubscriptionPlanModel, creator: String) {
        self.startDate = startDate
        self.endDate = endDate
        self.paymentID = paymentID
        self.interval = interval
        self.paymentCancelled = paymentCancelled
        self.plan = plan
        self.creator = creator
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case startDate
        case endDate
        case paymentID
        case interval
        case paymentCancelled
        case plan
        case creator
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(startDate, forKey: .startDate)
        try container.encode(endDate, forKey: .endDate)
        try container.encode(paymentID, forKey: .paymentID)
        try container.encode(interval, forKey: .interval)
        try container.encode(paymentCancelled, forKey: .paymentCancelled)
        try container.encode(plan, forKey: .plan)
        try container.encode(creator, forKey: .creator)
    }
}

