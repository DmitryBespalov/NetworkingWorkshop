//: [Previous](@previous)

import Foundation

enum MyError: Error {
    case error
}

class Logger {
    static func logError(_ error: Error) {
        print("error: \(error)")
    }
}

func doSomethingImportantWithTheDB() throws {
    do {
        let a = try Data(contentsOf: URL(string: "https://google.com")!)
        let b = try JSONEncoder().encode("hello")
    } catch let myErr as MyError {
        Logger.logError(myErr)
    }
}

try! doSomethingImportantWithTheDB()

//: [Next](@next)
