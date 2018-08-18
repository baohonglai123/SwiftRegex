//
//  SwiftRegexTests.swift
//  SwiftRegexTests
//
//  Created by 包红来 on 2018/6/9.
//  Copyright © 2018年 包红来. All rights reserved.
//

import XCTest
@testable import SwiftRegex

class SwiftRegexTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPassword() {
        XCTAssert(ValidateEnum.password("bao123456").isRight, "密码验证错误")
        XCTAssert(ValidateEnum.password("bao123456^^").isRight == false, "密码验证错误")
    }

    func testEosName() {
        XCTAssert(ValidateEnum.eosname("baohong").isRight, "eosname 格式错误")
        XCTAssert(ValidateEnum.eosname("baohonglai12345").isRight == false, "eosname 格式错误")
    }

    func testAllExample() {
        XCTAssert(ValidateEnum.cofferPassword("123456").isRight)
        XCTAssert(ValidateEnum.cofferPassword("1234567").isRight == false)
        XCTAssert(ValidateEnum.cofferPassword("1a3456").isRight == false)

        XCTAssert(ValidateEnum.tokenAmount("2.3").isRight)
        XCTAssert(ValidateEnum.tokenAmount("23").isRight)
        XCTAssert(ValidateEnum.tokenAmount("2b").isRight == false)
        XCTAssert(ValidateEnum.tokenAmount("-3").isRight == false)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
