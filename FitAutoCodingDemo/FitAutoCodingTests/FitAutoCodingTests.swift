//
//  FitAutoCodingTests.swift
//  FitAutoCodingTests
//
//  Created by cyrill on 2018/1/16.
//  Copyright © 2018年 cyrill.win. All rights reserved.
//

import XCTest
@testable import FitAutoCoding

class FitAutoCodingTests: XCTestCase {
    
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
    
    func test() {
        
        let dic = [
            "title" : "Hello World!",
            "pageCount" : 3,
            "available" : true,
            "categories":["one", "two"]
            
            ] as [String : AnyObject]
        let book = Book(dict: dic)
        
        var pageCount: Int?
        var categories: [String]?
        var available: Bool?
        let data = NSKeyedArchiver.archivedData(withRootObject: book)
        UserDefaults.standard.set(data, forKey: "book")
        if let data = UserDefaults.standard.object(forKey: "book") as? NSData {
            let book = NSKeyedUnarchiver.unarchiveObject(with: data as Data) as! Book
            XCTAssertEqual(book.title!, "Hello World!")
            XCTAssertEqual(book.pageCount!, 3)
            XCTAssertEqual(book.categories!.count, 2)
            XCTAssertNil(book.author)
        }
        
    }
    
}
