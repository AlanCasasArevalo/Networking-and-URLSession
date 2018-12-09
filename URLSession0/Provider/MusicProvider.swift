//
//  MusicProvider.swift
//  URLSession0
//
//  Created by Alan Casas on 9/12/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import Foundation

typealias GenericType = String

struct MusicProvider {
    
    let configuration = URLSessionConfiguration.default
    
    
    func getResultsFromiTunesAPI(termToSearch: String, completionHandler: @escaping (ITunesTrack?) -> ()) {
        var urlComponents = URLComponents(string: CONSTANTS.CALLS.BASIC_URL)
        let mediaQueryItem = URLQueryItem(name: "media", value: "music")
        let entityQueryItem = URLQueryItem(name: "entity", value: "song")
        let termToSearchQueryItem = URLQueryItem(name: "term", value: "crowded house")
        let arrayQueryItems = [mediaQueryItem, entityQueryItem, termToSearchQueryItem]
        urlComponents?.queryItems?.append(contentsOf: arrayQueryItems)
        
        configuration.waitsForConnectivity = true
        let defaultSession = URLSession(configuration: configuration)
        
        guard let iTunesURL = urlComponents?.url else { return  }
        
        let task = defaultSession.dataTask(with: iTunesURL) { (data, response, error) in
            guard let dataDes = data else {return}
            
            if error != nil {
                print(error?.localizedDescription)
            }else{
                do{
                    let statusCode = (response as! HTTPURLResponse).statusCode
                    print("URL Session Usage Task Succeeded: HTTP \(statusCode)")
                    let json = try JSONDecoder().decode(ITunesTrack.self, from: dataDes)
                    completionHandler(json)
                }catch {
                    completionHandler(nil)
                }
                
            }
        }
        task.resume()

    }
}


