//
//  _0230118_HasnainKhan_NYCSchoolsTests.swift
//  20230118-HasnainKhan-NYCSchoolsTests
//
//  Created by hasnain on 1/18/23.
//

import XCTest
import Alamofire
@testable import _0230118_HasnainKhan_NYCSchools

final class ClientTest: XCTestCase {

   

    func testHighSchoolListFeature() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
       
        var schoolList = Client.getInstance().getHighSchoolList()
        
        
        
        
        XCTAssertEqual(0, 1)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
