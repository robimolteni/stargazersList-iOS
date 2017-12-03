//
//  Stargazer.swift
//  stargazeriList-ios
//
//  Created by robimolteni on 25/11/2017.
//  Copyright © 2017 myself. All rights reserved.
//

import Foundation

class Stargazer {
    
    var _login: String!
    var _avatarUrl: String!
    
    //create getter/setter
    var login : String {
        if _login == nil {
            _login = ""
        }
        return _login
    }

    var avatarUrl : String {
        if _avatarUrl == nil {
            _avatarUrl = ""
        }
        return _avatarUrl
    }
}
