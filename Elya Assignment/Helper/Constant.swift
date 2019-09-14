//
//  Constant.swift
//  Elya Assignment
//
//  Created by Junior on 14/09/2019.
//  Copyright © 2019 Jude Botchwey. All rights reserved.
//

import Foundation


typealias CompletionHandler = (_ Success: Bool, _ imageURL: String) -> ()


let defaults = UserDefaults.standard
let BASE_URL = "https://api.unsplash.com/"
let RANDOM_REQUEST = "\(BASE_URL)photos/random"
let ACCESS_KEY = "605d708ab29ebb1cb4911de8c39395d47ec0389fb01834eb2fe22ed420572e47"
let SECRET_KEY = "5ee93b2a34c2bafab935686df33420b41d00f37c6ab27753be350dccbd624205"
let URL_ENCODED_REQUEST_HEADER =  ["Content-Type":"application/x-www-form-urlencoded; charset=utf-8"]
let JSON_REQUEST_HEADER = ["Content-Type": "application/json"]
let HEADERS = [
                    "Authorization":"Client-ID \(ACCESS_KEY)",
                    "Accept-Version":"v1",
                    "Content-Type":"application/x-www-form-urlencoded; charset=utf-8"
                ]
let ERROR_MESSAGE = "We can't get your image now. Please try again later"



