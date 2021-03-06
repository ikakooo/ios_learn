//
//  Task_6UITests.swift
//  Task_6UITests
//
//  Created by MacBook Pro on 24.09.21.
//

import XCTest

class Task_6UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.textFields["Enter some text here"].tap()
        app.staticTexts["Your text should appear here"].tap()
        app.sliders["29%"].swipeRight()
        app/*@START_MENU_TOKEN@*/.staticTexts["After clicking on this button"]/*[[".buttons[\"After clicking on this button\"].staticTexts[\"After clicking on this button\"]",".staticTexts[\"After clicking on this button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        

        let tooShortPasswordMessage = app.staticTexts["ikakooo"]
        XCTAssertEqual(tooShortPasswordMessage.label, "ikakooo")
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
