//
//  ViewController.swift
//  SwiftDemo_Request
//
//  Created by 陈海哥 on 2022/5/31.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        httpRequestGet()
        alamofireRequestGet()
    }
    
    private func httpRequestGet() {
        
        var UrlStr: String = "http://10.31.226.35:8080/1007"
        UrlStr = UrlStr.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlFragmentAllowed) ?? ""
        guard let url = URL(string: UrlStr) else {
            return
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        // get请求带参一般是拼接在链接后面,eg:http://10.31.226.35:8080/1007?id=123456
        let configuration:URLSessionConfiguration = URLSessionConfiguration.default
        let sessionManager = URLSession(configuration: configuration)
        let task = sessionManager.dataTask(with: urlRequest) { data, resp, error in
            let decoder = JSONDecoder()
            guard let jsonData = data else {
                return
            }
            do {
                let dataStruct = try decoder.decode(CampActivityListStruct.self, from: jsonData)
                print("数据请求结束")
            } catch {
            
            }
        }
        task.resume()
    }
    
    private func alamofireRequestGet() {
        
        var UrlStr: String = "http://10.31.226.35:8080/1007"
        UrlStr = UrlStr.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlFragmentAllowed) ?? ""
        guard let url = URL(string: UrlStr) else {
            return
        }
        AF.request(url, method: .get, parameters: nil, headers: nil, interceptor: nil, requestModifier: nil)
            .response { respData in
                let decoder = JSONDecoder()
                guard let jsonData = respData.data else {
                    return
                }
                do {
                    let dataStruct = try decoder.decode(CampActivityListStruct.self, from: jsonData)
                    print("数据请求结束")
                } catch {
                    
                }
                
            }
    }

}

