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

    func testFactAt() throws {
        XCTAssertEqual(self.randomFacts.fact(at: 0), "Indonesia consists only of islands - 13,667 total")
        XCTAssertEqual(self.randomFacts.fact(at: 1), "During World War II, the very first bomb dropped on Berlin by the Allies killed the only elephant in the Berlin Zoo")
        XCTAssertEqual(self.randomFacts.fact(at: 10), "The word housekeeping was invented by Shakespeare")
        XCTAssertEqual(self.randomFacts.fact(at: 100), "A fall of 30 feet can be survived my most cats")
        XCTAssertEqual(self.randomFacts.fact(at: 999), "St. Louis, Missouri was the first U.S. city to host the summer Olympics in 1904")
    }

    func testFactOutOfRange() throws {
        XCTAssertEqual(self.randomFacts.fact(at: -1), "<Out of range>")
        XCTAssertEqual(self.randomFacts.fact(at: 10000), "<Out of range>")
    }

    // Note that I can't even see or test the .initial and .failed states. 🤷🏻‍♂️
    // A bad file just comes out in the `randomFact` call.  Is that what I want?
}
