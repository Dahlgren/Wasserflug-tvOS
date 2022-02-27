//
// CDNV2API.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CDNV2API {

    /**
     * enum for parameter type
     */
    public enum ModelType_getDeliveryInfo: String, CaseIterable, Content {
        case vod = "vod"
        case aod = "aod"
        case live = "live"
        case download = "download"
    }

    /**
     Get Delivery Info
     GET /api/v2/cdn/delivery
     Given an video/audio attachment identifier, retrieves the information necessary to play, download, or livestream the video/audio at various quality levels.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter type: (query) Used to determine which kind of retrieval method is requested for the video.  - VOD = stream a Video On Demand - AOD = stream Audio On Demand - Live = Livestream the content - Download = Download the content for the user to play later. 
     - parameter guid: (query) The GUID of the attachment for a post, retrievable from the `videoAttachments` or `audioAttachments` object. Required when `type` is `vod`, `aod`, or `download`. Note: either this or `creator` must be supplied. (optional)
     - parameter creator: (query) The GUID of the creator for a livestream, retrievable from `CreatorModelV2.id`. Required when `type` is `live`. Note: either this or `guid` must be supplied. (optional)
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func getDeliveryInfoRaw(type: ModelType_getDeliveryInfo, guid: String? = nil, creator: String? = nil, headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        let localVariablePath = "/api/v2/cdn/delivery"
        let localVariableURLString = FloatplaneAPIClientAPI.basePath + localVariablePath

        guard let localVariableApiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return localVariableApiClient.send(.GET, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            struct QueryParams: Content {
                var type: ModelType_getDeliveryInfo
                var guid: String?
                var creator: String?

                enum CodingKeys: String, CodingKey {
                    case type = "type"
                    case guid = "guid"
                    case creator = "creator"
                }
            }
            try localVariableRequest.query.encode(QueryParams(type: type, guid: guid, creator: creator))
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum GetDeliveryInfo {
        case http200(value: CdnDeliveryV2Response, raw: ClientResponse)
        case http400(value: ErrorModel, raw: ClientResponse)
        case http401(value: ErrorModel, raw: ClientResponse)
        case http403(value: ErrorModel, raw: ClientResponse)
        case http404(value: ErrorModel, raw: ClientResponse)
        case http0(value: ErrorModel, raw: ClientResponse)
    }

    /**
     Get Delivery Info
     GET /api/v2/cdn/delivery
     Given an video/audio attachment identifier, retrieves the information necessary to play, download, or livestream the video/audio at various quality levels.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter type: (query) Used to determine which kind of retrieval method is requested for the video.  - VOD = stream a Video On Demand - AOD = stream Audio On Demand - Live = Livestream the content - Download = Download the content for the user to play later. 
     - parameter guid: (query) The GUID of the attachment for a post, retrievable from the `videoAttachments` or `audioAttachments` object. Required when `type` is `vod`, `aod`, or `download`. Note: either this or `creator` must be supplied. (optional)
     - parameter creator: (query) The GUID of the creator for a livestream, retrievable from `CreatorModelV2.id`. Required when `type` is `live`. Note: either this or `guid` must be supplied. (optional)
     - returns: `EventLoopFuture` of `GetDeliveryInfo` 
     */
    open class func getDeliveryInfo(type: ModelType_getDeliveryInfo, guid: String? = nil, creator: String? = nil, headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GetDeliveryInfo> {
        return getDeliveryInfoRaw(type: type, guid: guid, creator: creator, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> GetDeliveryInfo in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(CdnDeliveryV2Response.self, using: Configuration.contentConfiguration.requireDecoder(for: CdnDeliveryV2Response.defaultContentType)), raw: response)
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