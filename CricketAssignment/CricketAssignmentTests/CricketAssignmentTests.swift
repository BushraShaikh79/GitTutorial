//
//  CricketAssignmentTests.swift
//  CricketAssignmentTests
//
//  Created by Bushra on 21/09/20.
//

import XCTest
@testable import CricketAssignment

class CricketAssignmentTests: XCTestCase {
    
    let data = CricketVM()
    var list: [Player]?
    let country = Country(country_name: "TestCountry", players: [Player(name: "player1", captain: true), Player(name: "player2", captain: true), Player(name: "player3")])
    
    func testGetList() {
        list?.removeAll()
        list = country.players
        XCTAssert((list != nil))
    }
    
    func testListSection() {
        XCTAssertEqual(data.numberOfItemsInSection(flag: 0, section: 3), 0)
    }
}

