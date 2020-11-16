//
//  TopicTest.swift
//  TestTDDTests
//
//  Created by Nadeem on 08/09/20.
//  Copyright © 2020 Nadeem. All rights reserved.
//

import XCTest
@testable import TestTDD

class TopicTest: XCTestCase {
    
    func testAttributes() {
        let text = "New Ping"
        let topic = Topic(text: text, status: .Pending)
        XCTAssertEqual(text, topic.text)
        XCTAssertEqual(.Pending, topic.status)
    }
}
