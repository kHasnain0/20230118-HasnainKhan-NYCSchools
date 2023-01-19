//
//  _0230118_HasnainKhan_NYCSchoolsUITestsLaunchTests.swift
//  20230118-HasnainKhan-NYCSchoolsUITests
//
//  Created by hasnain on 1/18/23.
//

import XCTest

final class ViewLaunchTest: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
