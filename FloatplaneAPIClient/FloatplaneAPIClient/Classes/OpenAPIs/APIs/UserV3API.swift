//
// UserV3API.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor
#if canImport(AnyCodable)
import AnyCodable
#endif

open class UserV3API {

    /**
     Get Activity Feed
     GET /api/v3/user/activity
     Retrieve recent activity for a user, such as comments and other interactions they have made on posts for creators.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter id: (query) The GUID of the user being queried. 
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func getActivityFeedV3Raw(id: String, headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        let localVariablePath = "/api/v3/user/activity"
        let localVariableURLString = FloatplaneAPIClientAPI.basePath + localVariablePath

        guard let localVariableApiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return localVariableApiClient.send(.GET, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            struct QueryParams: Content {
                var id: String

                enum CodingKeys: String, CodingKey {
                    case id = "id"
                }
            }
            try localVariableRequest.query.encode(QueryParams(id: id))
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum GetActivityFeedV3 {
        case http200(value: UserActivityV3Response, raw: ClientResponse)
        case http400(value: ErrorModel, raw: ClientResponse)
        case http401(value: ErrorModel, raw: ClientResponse)
        case http403(value: ErrorModel, raw: ClientResponse)
        case http404(value: ErrorModel, raw: ClientResponse)
        case http0(value: ErrorModel, raw: ClientResponse)
    }

    /**
     Get Activity Feed
     GET /api/v3/user/activity
     Retrieve recent activity for a user, such as comments and other interactions they have made on posts for creators.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter id: (query) The GUID of the user being queried. 
     - returns: `EventLoopFuture` of `GetActivityFeedV3` 
     */
    open class func getActivityFeedV3(id: String, headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GetActivityFeedV3> {
        return getActivityFeedV3Raw(id: id, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> GetActivityFeedV3 in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(UserActivityV3Response.self, using: Configuration.contentConfiguration.requireDecoder(for: UserActivityV3Response.defaultContentType)), raw: response)
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

    /**
     Get External Links
     GET /api/v3/user/links
     Retrieve configured social media links from a user's profile.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter id: (query) The GUID of the user being searched. 
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func getExternalLinksV3Raw(id: String, headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        let localVariablePath = "/api/v3/user/links"
        let localVariableURLString = FloatplaneAPIClientAPI.basePath + localVariablePath

        guard let localVariableApiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return localVariableApiClient.send(.GET, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            struct QueryParams: Content {
                var id: String

                enum CodingKeys: String, CodingKey {
                    case id = "id"
                }
            }
            try localVariableRequest.query.encode(QueryParams(id: id))
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum GetExternalLinksV3 {
        case http200(value: [String: UserLinksV3ResponseValue], raw: ClientResponse)
        case http400(value: ErrorModel, raw: ClientResponse)
        case http401(value: ErrorModel, raw: ClientResponse)
        case http403(value: ErrorModel, raw: ClientResponse)
        case http404(value: ErrorModel, raw: ClientResponse)
        case http0(value: ErrorModel, raw: ClientResponse)
    }

    /**
     Get External Links
     GET /api/v3/user/links
     Retrieve configured social media links from a user's profile.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter id: (query) The GUID of the user being searched. 
     - returns: `EventLoopFuture` of `GetExternalLinksV3` 
     */
    open class func getExternalLinksV3(id: String, headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GetExternalLinksV3> {
        return getExternalLinksV3Raw(id: id, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> GetExternalLinksV3 in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode([String: UserLinksV3ResponseValue].self, using: Configuration.contentConfiguration.requireDecoder(for: [String: UserLinksV3ResponseValue].defaultContentType)), raw: response)
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

    /**
     Get Self
     GET /api/v3/user/self
     Retrieve more detailed information about the user, including their name and email.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func getSelfRaw(headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        let localVariablePath = "/api/v3/user/self"
        let localVariableURLString = FloatplaneAPIClientAPI.basePath + localVariablePath

        guard let localVariableApiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return localVariableApiClient.send(.GET, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum GetSelf {
        case http200(value: UserSelfV3Response, raw: ClientResponse)
        case http400(value: ErrorModel, raw: ClientResponse)
        case http401(value: ErrorModel, raw: ClientResponse)
        case http403(value: ErrorModel, raw: ClientResponse)
        case http404(value: ErrorModel, raw: ClientResponse)
        case http0(value: ErrorModel, raw: ClientResponse)
    }

    /**
     Get Self
     GET /api/v3/user/self
     Retrieve more detailed information about the user, including their name and email.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - returns: `EventLoopFuture` of `GetSelf` 
     */
    open class func getSelf(headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GetSelf> {
        return getSelfRaw(headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> GetSelf in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(UserSelfV3Response.self, using: Configuration.contentConfiguration.requireDecoder(for: UserSelfV3Response.defaultContentType)), raw: response)
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

    /**
     Get User Notification Settings
     GET /api/v3/user/notification/list
     Retrieve notification details for a user. The details are split into seperate settings for each subscribed creator.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func getUserNotificationSettingsV3Raw(headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        let localVariablePath = "/api/v3/user/notification/list"
        let localVariableURLString = FloatplaneAPIClientAPI.basePath + localVariablePath

        guard let localVariableApiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return localVariableApiClient.send(.GET, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum GetUserNotificationSettingsV3 {
        case http200(value: [UserNotificationModel], raw: ClientResponse)
        case http400(value: ErrorModel, raw: ClientResponse)
        case http401(value: ErrorModel, raw: ClientResponse)
        case http403(value: ErrorModel, raw: ClientResponse)
        case http404(value: ErrorModel, raw: ClientResponse)
        case http0(value: ErrorModel, raw: ClientResponse)
    }

    /**
     Get User Notification Settings
     GET /api/v3/user/notification/list
     Retrieve notification details for a user. The details are split into seperate settings for each subscribed creator.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - returns: `EventLoopFuture` of `GetUserNotificationSettingsV3` 
     */
    open class func getUserNotificationSettingsV3(headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GetUserNotificationSettingsV3> {
        return getUserNotificationSettingsV3Raw(headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> GetUserNotificationSettingsV3 in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode([UserNotificationModel].self, using: Configuration.contentConfiguration.requireDecoder(for: [UserNotificationModel].defaultContentType)), raw: response)
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

    /**
     Update User Notification Settings
     POST /api/v3/user/notification/update
     Enable or disable email or push notifications for a specific creator.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter userNotificationUpdateV3PostRequest: (body)  
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func updateUserNotificationSettingsV3Raw(userNotificationUpdateV3PostRequest: UserNotificationUpdateV3PostRequest, headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        let localVariablePath = "/api/v3/user/notification/update"
        let localVariableURLString = FloatplaneAPIClientAPI.basePath + localVariablePath

        guard let localVariableApiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return localVariableApiClient.send(.POST, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            
            try localVariableRequest.content.encode(userNotificationUpdateV3PostRequest, using: Configuration.contentConfiguration.requireEncoder(for: UserNotificationUpdateV3PostRequest.defaultContentType))
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum UpdateUserNotificationSettingsV3 {
        case http200(value: Bool, raw: ClientResponse)
        case http400(value: ErrorModel, raw: ClientResponse)
        case http401(value: ErrorModel, raw: ClientResponse)
        case http403(value: ErrorModel, raw: ClientResponse)
        case http404(value: ErrorModel, raw: ClientResponse)
        case http0(value: ErrorModel, raw: ClientResponse)
    }

    /**
     Update User Notification Settings
     POST /api/v3/user/notification/update
     Enable or disable email or push notifications for a specific creator.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter userNotificationUpdateV3PostRequest: (body)  
     - returns: `EventLoopFuture` of `UpdateUserNotificationSettingsV3` 
     */
    open class func updateUserNotificationSettingsV3(userNotificationUpdateV3PostRequest: UserNotificationUpdateV3PostRequest, headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UpdateUserNotificationSettingsV3> {
        return updateUserNotificationSettingsV3Raw(userNotificationUpdateV3PostRequest: userNotificationUpdateV3PostRequest, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> UpdateUserNotificationSettingsV3 in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(Bool.self, using: Configuration.contentConfiguration.requireDecoder(for: Bool.defaultContentType)), raw: response)
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
