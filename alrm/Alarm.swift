//
//  Alarm.swift
//  alrm
//
//  Created by Nathan Fuller on 12/20/15.
//  Copyright © 2015 Nathan Fuller. All rights reserved.
//

import Foundation

public class Alarm {
    
    let title : String!
    let description : String!
    
    init(withTitle title: String, andDescription description: String) {
        self.title = title
        self.description = description
    }
    
}