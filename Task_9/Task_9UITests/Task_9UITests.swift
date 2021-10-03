//
//  Task_9UITests.swift
//  Task_9UITests
//
//  Created by MacBook Pro on 02.10.21.
//

import XCTest

class Task_9UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPassingDataBetweenPagesCorrectly() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        // main page must be visible "Main Page" text
        let mainPageTextField = app.staticTexts["Main Page"]
        XCTAssertTrue(mainPageTextField.waitForExistence(timeout: 5.0))
        
        // go to second page
        app/*@START_MENU_TOKEN@*/.staticTexts[" Go To Next Page"]/*[[".buttons[\" Go To Next Page\"].staticTexts[\" Go To Next Page\"]",".staticTexts[\" Go To Next Page\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        // tipe the text in text fild
        let textField = app.textFields["ჩაწერე ტექსტი რომ გამოჩნდეს მეორე გვერდზე"]
        XCTAssertTrue(textField.waitForExistence(timeout: 5.0))
        textField.tap()
        textField.typeText("UI Test")
        
        // back to start page
        app.buttons[" Go To Back"].tap()
        
        
        
        let updatedmainPageTextField = app.staticTexts["UI Test"]
        XCTAssertTrue(updatedmainPageTextField.waitForExistence(timeout: 5.0))
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
