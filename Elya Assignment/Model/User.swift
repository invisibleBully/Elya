//
//  User.swift
//  Elya Assignment
//
//  Created by Junior on 14/09/2019.
//  Copyright © 2019 Jude Botchwey. All rights reserved.
//

import Foundation



class User {
    
    var userName: String!
    var textDate: String!
    var displayText: String!
    static var users = [User]()
    
    init(userName: String, textDate: String, displayText: String) {
        self.userName = userName
        self.textDate = textDate
        self.displayText = displayText
    }
    
    
    
    class func generateUsers() -> [User]{
         users.append(User(userName: "invisibleBully", textDate: "Monday,July 6th 2019", displayText: "Love is wanting more for someone than you want for your self.I guess I love a lot"))
         users.append(User(userName: "sharlene003", textDate: "Tuesday,June 12th 2019", displayText: "Jermaine Cole is the greatest.No Cap.I take you to the promise land, you don’t want problems I promise man"))
         users.append(User(userName: "cocoDrey92", textDate: "Saturday,Februay 6th 2019", displayText: "I can't beleive this!"))
         users.append(User(userName: "invisibleBully", textDate: "Friday,March 26th 2019", displayText: "I love you momma!"))
         users.append(User(userName: "ochochino", textDate: "Sunday,January 16th 2019", displayText: "Basketball is life. Just so you know"))
         users.append(User(userName: "invisibleBully", textDate: "Monday,April 6th 2019", displayText: "To never try is the ultimate fail"))
         users.append(User(userName: "invisibleBully", textDate: "Monday,July 6th 2019", displayText: "This is for the last line “Whoa.” This must be the mother’s reaction when asked the question."))
         users.append(User(userName: "invisibleBully", textDate: "Monday,January 6th 2019", displayText: "To never try is the ultimate fail"))
         users.append(User(userName: "paula_jade", textDate: "Tuesday,November 6th 2019", displayText: "I like mine a little hood"))
         users.append(User(userName: "paula_jade", textDate: "Monday,June 6th 2019", displayText: "You do not need anyone's validation in life.If you wait on peoples validation, you're set up to fail."))
         users.append(User(userName: "eblebabo", textDate: "Sunday,July 6th 2019", displayText: "Liverpool is the best team in the world"))
         users.append(User(userName: "noob", textDate: "Monday,October 6th 2019", displayText: "The charcoal seller's son shall wear white one day."))
         users.append(User(userName: "slayMama25", textDate: "Wednesday,September 6th 2019", displayText: "To never try is the ultimate fail"))
         users.append(User(userName: "bulldog52", textDate: "Thursday,May 2nd 2019", displayText: "Take it from your higness"))
         users.append(User(userName: "lil cease", textDate: "Sunday,November 1st 2019", displayText: "Real dudes move in silence"))
         users.append(User(userName: "daBaby", textDate: "Monday,December 26th 2019", displayText: "Nothing new under the sun. Nobody with son"))
        
        
        return users
  
    }
}
