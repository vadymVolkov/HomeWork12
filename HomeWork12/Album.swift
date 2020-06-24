//
//  Album.swift
//  HomeWork12
//
//  Created by Vadym Volkov on 18.06.2020.
//  Copyright © 2020 Vadym Volkov. All rights reserved.
//

import Foundation
import ObjectMapper

class Album: Mappable {
    var userId: Int?
    var id: Int?
    var title: String?
    var completed: Bool?
    
    required  init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        userId <- map["userId"]
        id <- map["id"]
        title <- map["title"]
        completed <- map["completed"]
    }
    
}
