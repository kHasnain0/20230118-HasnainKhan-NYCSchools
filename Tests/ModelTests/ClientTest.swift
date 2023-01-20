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
       
        var schoolList = Client.getInstance().getHighSchoolList()
        
        
        XCTAssertEqual(schoolList, [])
    }

  

}
