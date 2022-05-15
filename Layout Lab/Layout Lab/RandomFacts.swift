//
//  RandomFacts.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/15/22.
//

import Foundation

/// A local service that provides random facts to display.
protocol RandomFacts {
    
    /// Gets a random fact
    var randomFact: String { get }

    /// Gets a random fact
    func fact(at index:Int) -> String

    /// Tells how many facts there are
    var count: Int { get }
}

/// Implementation of `RandomFacts` that reads from a pre-determined file
class RandomFactsFromFile: RandomFacts {
    
    enum RandomFactsError: Error {
        case badFile
    }
    
    /// Create an instance
    init() {
        self.load()
    }
    
    // MARK: RandomFacts
    
    var randomFact: String {
        switch self.state {
        case .ok(let facts): return facts.randomElement() ?? "???"
        case .initial: return "<Not initialized>"
        case .failed(let error): return "<Error: \(error.localizedDescription)>"
        }
    }
    
    var count: Int {
        switch self.state {
        case .ok(let facts): return facts.count
        case .initial, .failed: return 0
        }
    }
    
    func fact(at index: Int) -> String {
        switch self.state {
        case .ok(let facts):
            if (0..<facts.count).contains(index) {
                return facts[index]
            } else {
                return "<Out of range>"
            }
        case .initial: return "<Not initialized>"
        case .failed(let error): return "<Error: \(error.localizedDescription)>"
        }
    }
    
    // MARK: Internal
    
    private var state: State = .initial
    private var facts: [String] = []
    
    /// Internal state.  Playing around with this idea instead of throwing, etc. on bad file.
    private enum State {
        case initial
        case ok(facts: [String])
        case failed(error: Error)
    }
    
    /// Loads all the random facts form a file
    private func load() {

        // Keeping this as stupid simple as possible to use, so I can focus on layouts,
        // so don't even parameterize the file path.
        let partialPath = NSString.path(withComponents: ["Random Facts", "facts"])
        guard let fullPath = Bundle.main.path(forResource: partialPath, ofType: "txt") else {
            self.state = .failed(error: RandomFactsError.badFile)
            return
        }
        
        do {
            let contents = try String.init(contentsOfFile: fullPath)
            let facts = contents.split(separator: "\n").map { String($0) }
            self.state = .ok(facts: facts)
        } catch {
            self.state = .failed(error: error)
        }
    }
    
}
