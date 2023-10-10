//
//  TestClass.swift
//  labki1Tests
//
//  Created by student on 10/10/2023.
//

import XCTest
@testable import labki1

final class TestClass: XCTestCase {
    
    func testPositiveScenarioForAddCalculation()
    {
        let op = Operations()
        let a = 100
        let b = 200
        let c = op.Addition(v1: a, v2: b)
        XCTAssertEqual(c, 300, "Sum of 100 and 200 must be 300")
    }
    func testNegativeScenarioForAddCalculation()
    {
        let op = Operations()
        let a = 100
        let b = 200
        let c = op.Addition(v1: a, v2: b)
        XCTAssertEqual(c, 400, "Sum of 100 and 200 must be 300")
    }
    func testPositiveScenarioForSubCalculation()
    {
        let op = Operations()
        let a = 100
        let b = 200
        let c = op.Substraction(v1: a, v2: b)
        XCTAssertEqual(c, -100, "Sum of 100 and 200 must be -100")
    }
    func testNegativeScenarioForSubCalculation()
    {
        let op = Operations()
        let a = 100
        let b = 200
        let c = op.Addition(v1: a, v2: b)
        XCTAssertEqual(c, 0, "Sum of 100 and 200 must be -100")
    }
    func testPositiveScenarioForProdCalculation()
    {
        let op = Operations()
        let a = 100
        let b = 200
        let c = op.Addition(v1: a, v2: b)
        XCTAssertEqual(c, 400, "Sum of 100 and 200 must be 300")
    }
    func testNegativeScenarioForProdCalculation()
    {
        
    }
    func testPositiveScenarioForDivCalculation()
    {
        
    }
    func testZeroScenarioForDivCalculation()
    {
        
    }
    func testPositiveScenarioForSinCalculation()
    {
        
    }

    func CheckOperations()
    {
        let v1 = 10
        let v2 = 2

    }
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
