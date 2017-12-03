//
//  Repository.swift
//  stargazeriList-ios
//
//  Created by robimolteni on 25/11/2017.
//  Copyright © 2017 myself. All rights reserved.
//

import Foundation
import Alamofire


class Repository {

    var _stargazer = [Stargazer]()

    func downloadStargazer(repoName: String, repoOwner: String, completed: @escaping  DownloadComplete) {
        let urlString = BASE_URL + "/repos/" + repoOwner + "/" + repoName + "/" + "stargazers"
        print(urlString)
        let url = URL(string: urlString)
        
        Alamofire.request(url!,headers: ["User-Agent":"iOS"]).responseJSON {
            response in
            let result = response.result
            print(result.value)
            if let dict = result.value as? [Dictionary<String,AnyObject>] {
                for obj in dict {
                    let currentStargazer = Stargazer()
                    if let login = obj["login"] as? String {
                        currentStargazer._login = login
                    }
                    if let avatarUrl = obj["avatar_url"] as? String {
                        currentStargazer._avatarUrl = avatarUrl
                    }
                    self._stargazer.append(currentStargazer)
                } //end for
            }
            completed()
        }
    }
}
