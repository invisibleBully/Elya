//
//  DataService.swift
//  Elya Assignment
//
//  Created by Junior on 14/09/2019.
//  Copyright © 2019 Jude Botchwey. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON


class DataService {
    
    static let instance = DataService()
    
    func makeRandomPhotoRequest(completion: @escaping CompletionHandler) {
        var validURL: String = ""
        Alamofire.request(RANDOM_REQUEST, method: .get, parameters: nil, headers: HEADERS).responseJSON { (response) in
            if response.error == nil {
                guard let data = response.data else {
                    completion(false,ERROR_MESSAGE)
                    return
                }
                do{
                    let json =  try JSON(data: data)
                    validURL = json["urls"]["small"].stringValue
                    if validURL != "", !validURL.isEmpty {
                        completion(true,validURL)
                    }else{
                        completion(false,ERROR_MESSAGE)
                    }
                }catch {
                    if let error = response.error{
                        debugPrint(error)
                        completion(false,ERROR_MESSAGE)
                    }
                }
            }
        }
    }
    
}
