//
//  GbNetworkBaseUtility.swift
//  glbuyer-buyer-ios
//
//  Created by Jausing Wang on 2017/4/27.
//  Copyright © 2017年 glbuyer. All rights reserved.
//

import Foundation
import Alamofire

public typealias GbNetworkRequestSuccessCallback = (_ code:Int?,_ message:String?, _ data: [String:Any]?) -> Void
public typealias GbNetworkRequestFailureCallback = (_ code:Int?,_ message:String?, _ data: [String:Any]?) -> Void
public typealias VoidCallback = () -> Void

public class GbNetworkBaseUtility {
    
    static let NETWORK_FAILURE_CODE = 500
    
    static fileprivate var headers : HTTPHeaders {
        get {
            if getAccessToken() != nil {
                return [
                    "Authorization":"Bearer \(getAccessToken()!)",
                    "Content-Type": "application/json"
                ]
            }
            return ["Content-Type": "application/json"]
        }
    }
    
    static let afManager = GbNetworkBaseUtility.defaultAlamofireSessionManager()
    
    fileprivate class func alamofireSessionManager(withTimeout isLongTimeOut:Bool, hasAuthorizationHeader: Bool) -> SessionManager{

        let configuration = URLSessionConfiguration.default
        
        if !isLongTimeOut {
            configuration.timeoutIntervalForRequest = 5 // seconds
            configuration.timeoutIntervalForResource = 5
        }
        
        let manager = Alamofire.SessionManager(configuration: configuration)
        return manager

    }

    private class func defaultAlamofireSessionManager() -> SessionManager{
        return alamofireSessionManager(withTimeout: true, hasAuthorizationHeader: true)
    }
    
    public class func handleResponseResult(withResult result: [String:Any], success: GbNetworkRequestSuccessCallback, failure: GbNetworkRequestFailureCallback) {

        if result["code"] as! Int == 0 {
            success(result["code"] as? Int,result["message"] as? String,result["data"] as? Dictionary)
        }
        else{
            failure(result["code"] as? Int,result["message"] as? String,result["data"] as? Dictionary)

        }
        
    }
    
    
    

    public class func networkGetRequest(withURL url: String, parameters: [String:Any]?, success: @escaping GbNetworkRequestSuccessCallback, failure: @escaping GbNetworkRequestFailureCallback) {
        
        let paraSend = (parameters?.count == 0 ? nil : parameters)
        
        afManager.request(url, method: .get, parameters: paraSend, encoding: JSONEncoding.default, headers: headers)
            .validate()
            .responseJSON{ response in
                switch response.result {
                case .success(let value):
                    handleResponseResult(withResult: value as! Dictionary, success: success, failure: failure)
                case .failure(let error):
                    failure(NETWORK_FAILURE_CODE, error.localizedDescription, [:])
                }
        }
        
    }
    
    public class func networkPostRequest(withURL url: String, parameters: [String:Any]?, success: @escaping GbNetworkRequestSuccessCallback, failure: @escaping GbNetworkRequestFailureCallback) {

        let paraSend = (parameters?.count == 0 ? nil : parameters)

        afManager.request(url, method: .post, parameters: paraSend, encoding: JSONEncoding.default, headers: headers)
            .validate()
            .responseJSON{ response in
            switch response.result {
            case .success(let value):
                handleResponseResult(withResult: value as! Dictionary, success: success, failure: failure)
            case .failure(let error):
                failure(NETWORK_FAILURE_CODE, error.localizedDescription, [:])
            }
        }
        
    }
    
    public class func networkDeleteRequest(withURL url: String, parameters: [String:Any]?, success: @escaping GbNetworkRequestSuccessCallback, failure: @escaping GbNetworkRequestFailureCallback) {

        let paraSend = (parameters?.count == 0 ? nil : parameters)

        afManager.request(url, method: .delete, parameters: paraSend, encoding: JSONEncoding.default, headers: headers)
            .validate()
            .responseJSON{ response in
                switch response.result {
                case .success(let value):
                    handleResponseResult(withResult: value as! Dictionary, success: success, failure: failure)
                case .failure(let error):
                    failure(NETWORK_FAILURE_CODE, error.localizedDescription, [:])
                }
        }
    }
    
    
    
    
    class func getAccessToken() -> String? {
        
        
        return UserDefaults.standard.string(forKey: "accessToken")
        
        
    }
    
}
