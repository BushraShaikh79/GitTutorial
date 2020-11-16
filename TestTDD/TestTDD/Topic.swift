//
//  Topic.swift
//  TestTDD
//
//  Created by Nadeem on 08/09/20.
//  Copyright © 2020 Nadeem. All rights reserved.
//

import Foundation

enum TopicStatus {
    case Pending
}

struct Topic {
    
    let text: String
    let status: TopicStatus
}
