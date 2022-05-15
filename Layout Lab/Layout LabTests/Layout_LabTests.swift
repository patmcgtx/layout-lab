//
//  Layout_LabTests.swift
//  Layout LabTests
//
//  Created by Patrick McGonigle on 5/14/22.
//

import XCTest
@testable import Layout_Lab

class Layout_LabRandomFactsTests: XCTestCase {

    private let randomFacts: RandomFacts = RandomFactsFromFile()

    func testRandomFactsCount() throws {
        XCTAssertEqual(self.randomFacts.count, 3090)
    }

    func testRandomFact() throws {
        XCTAssert(self.randomFacts.randomFact.count > 0)
    }

    // Note that I can't even see or test the .initial and .failed states. 🤷🏻‍♂️
    // A bad file just comes out in the `randomFact` call.  Is that what I want?
}
