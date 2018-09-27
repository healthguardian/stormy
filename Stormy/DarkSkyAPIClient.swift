//
//  DarkSkyAPIClient.swift
//  Stormy
//
//  Created by Maxence Roy on 9/27/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

class DarkSkyAPIClient {
    fileprivate let darkSkyAPIKey = "522ffbddef15de9b7932b5c0d35bcbc4"
    
    lazy var baseURL: URL = {
        return URL(string: "https://api.darksky.net/forecast/\(self.darkSkyAPIKey)/")!
    }()
    
    let downloader = JSONDownloader()
    
    typealias CurrentWeatherCompletionHandler = (CurrentWeather?, DarkSkyError?) -> Void
    
    func getCurrentWeather(at coordinate: Coordinate, completionHandler completion: @escaping CurrentWeatherCompletionHandler) {
        
        guard let url = URL(string: coordinate.description, relativeTo: baseURL) else {
            completion(nil, .invalidURL)
            return
        }
        
        let request = URLRequest(url: url)
        
        let task = downloader.jsonTask(with: request) { json, error in
            
        }
    }
}
