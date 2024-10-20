//
//  Md5TestCase.swift
//  MarvelTests
//
//  Created by Luan Orlando on 20/10/24.
//

import XCTest
@testable import Marvel

final class Md5TestCase: XCTest {
    
    func testMD5Hash() {
        // Arrange
        let inputString = "hello"
        let expectedMD5Hash = "5d41402abc4b2a76b9719d911017c592" // Hash MD5 conhecido para "hello"
       
        // Act
        let computedMD5Hash = inputString.md5()
        
        // Assert
        XCTAssertEqual(computedMD5Hash, expectedMD5Hash, "The generated MD5 hash is incorrect for the string 'hello'")
    }
    
    func testMD5EmptyString() {
        // Arrange
        let emptyString = ""
        let expectedEmptyMD5Hash = "d41d8cd98f00b204e9800998ecf8427e" // Hash MD5 conhecido para string vazia
        
        // Act
        let computedEmptyMD5Hash = emptyString.md5()
        
        // Assert
        XCTAssertEqual(computedEmptyMD5Hash, expectedEmptyMD5Hash, "The generated MD5 hash is incorrect for the empty string")
    }
    
    func testMD5LongString() {
        // Arrange
        let longString = "The quick brown fox jumps over the lazy dog"
        let expectedLongMD5Hash = "9e107d9d372bb6826bd81d3542a419d6" // Hash MD5 conhecido para essa string
        
        // Act
        let computedLongMD5Hash = longString.md5()
        
        // Assert
        XCTAssertEqual(computedLongMD5Hash, expectedLongMD5Hash, "The generated MD5 hash is incorrect for the long string")
    }
}
