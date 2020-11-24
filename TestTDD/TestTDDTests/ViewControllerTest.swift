//
//  ViewControllerTest.swift
//  TestTDDTests
//
//  Created by Nadeem on 08/09/20.
//  Copyright © 2020 Nadeem. All rights reserved.
//

import XCTest
@testable import TestTDD

class ViewControllerTest: XCTestCase {
    
    func testNumberOfTopics() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateInitialViewController() as! ViewController
        let topics = [Topic(text: "Ping", status: .Pending), Topic(text: "Pong", status: .Pending)]
        controller.topics = topics
        controller.view.layoutIfNeeded()
        XCTAssertEqual(2, controller.tableView(controller.tableView, numberOfRowsInSection: 0))
    }
}
