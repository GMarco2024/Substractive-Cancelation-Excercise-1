//
//  Substractive_Cancelation_Excercise_1UITestsLaunchTests.swift
//  Substractive Cancelation Excercise 1UITests
//
//  Created by PHYS 440 Marco on 1/25/24.
//

import XCTest

final class Substractive_Cancelation_Excercise_1UITestsLaunchTests: XCTestCase {

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
