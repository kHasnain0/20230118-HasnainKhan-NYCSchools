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

   

    func testGetHighSchoolJSONFeature() throws {
        let parameters = ["dbn":"11X253"]
        var factory = Client.getInstance().createHighSchoolList(inParam: parameters)
        
        var toCheck = HighSchoolStruct(school_name: "BRONX HIGH SCHOOL FOR WRITING AND COMMUNICATION ARTS",
                                              writing_score: "390", reading_score: "400",
                                              math_score: "357", dbn: "11X253", test_takers: "46")

        XCTAssertEqual(factory.getList()[0], toCheck)
    }

  

}
