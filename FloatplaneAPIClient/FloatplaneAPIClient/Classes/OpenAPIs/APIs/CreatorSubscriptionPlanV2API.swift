//
// CreatorSubscriptionPlanV2API.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CreatorSubscriptionPlanV2API {

    /**
     Get Creator Sub Info Public
     GET /api/v2/plan/info
     Retrieve detailed information about a creator's subscription plans and their subscriber count.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter creatorId: (query) The GUID for the creator being search. 
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func getCreatorSubInfoPublicRaw(creatorId: String, headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        let localVariablePath = "/api/v2/plan/info"
        let localVariableURLString = FloatplaneAPIClientAPI.basePath + localVariablePath

        guard let localVariableApiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return localVariableApiClient.send(.GET, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            struct QueryParams: Content {
                var creatorId: String

                enum CodingKeys: String, CodingKey {
                    case creatorId = "creatorId"
                }
            }
            try localVariableRequest.query.encode(QueryParams(creatorId: creatorId))
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum GetCreatorSubInfoPublic {
        case http200(value: PlanInfoV2Response, raw: ClientResponse)
        case http400(value: ErrorModel, raw: ClientResponse)
        case http401(value: ErrorModel, raw: ClientResponse)
        case http403(value: ErrorModel, raw: ClientResponse)
        case http404(value: ErrorModel, raw: ClientResponse)
        case http0(value: ErrorModel, raw: ClientResponse)
    }

    /**
     Get Creator Sub Info Public
     GET /api/v2/plan/info
     Retrieve detailed information about a creator's subscription plans and their subscriber count.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter creatorId: (query) The GUID for the creator being search. 
     - returns: `EventLoopFuture` of `GetCreatorSubInfoPublic` 
     */
    open class func getCreatorSubInfoPublic(creatorId: String, headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GetCreatorSubInfoPublic> {
        return getCreatorSubInfoPublicRaw(creatorId: creatorId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> GetCreatorSubInfoPublic in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(PlanInfoV2Response.self, using: Configuration.contentConfiguration.requireDecoder(for: PlanInfoV2Response.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorModel.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorModel.defaultContentType)), raw: response)
            case 401:
                return .http401(value: try response.content.decode(ErrorModel.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorModel.defaultContentType)), raw: response)
            case 403:
                return .http403(value: try response.content.decode(ErrorModel.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorModel.defaultContentType)), raw: response)
            case 404:
                return .http404(value: try response.content.decode(ErrorModel.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorModel.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(ErrorModel.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorModel.defaultContentType)), raw: response)
            }
        }
    }
}
