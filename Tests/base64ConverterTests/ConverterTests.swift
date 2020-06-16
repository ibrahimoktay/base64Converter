//d
//  File.swift
//  
//
//  Created by ibrahim oktay on 16.06.2020.
//

import XCTest
@testable import Core

final class ConverterTests: XCTestCase {
    
    func testStringToBase64() {
        let base64String = Converter.encode("hello world")
        XCTAssertEqual(base64String, "aGVsbG8gd29ybGQ=")
    }
    
    func testBase64ToString() {
        let value = Converter.decode("aGVsbG8gd29ybGQ=")
        XCTAssertEqual(value, "hello world")
    }
}
