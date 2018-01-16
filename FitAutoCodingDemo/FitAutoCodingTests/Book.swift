//
//  Book.swift
//  FitAutoCodingTests
//
//  Created by cyrill on 2018/1/16.
//  Copyright © 2018年 cyrill.win. All rights reserved.
//

import UIKit

@objcMembers
class Book: NSObject, NSCoding {
    
    var title: String?
    var author: String?
    var pageCount: NSNumber?
    var categories: [String]?
    var available: NSNumber?
    
    init(dict: [String: AnyObject]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    override init() {
        super.init()
    }
    
    override func setValue(_ value: Any?, forKey key: String) {
        if value == nil { return }
        super.setValue(value, forKey: key)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        print(key)
    }
    
    
    // MARK: NSCoding
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        setup(withDecoder: aDecoder)
    }
    
    func encode(with aCoder: NSCoder) {
        setup(withCoder: aCoder)
    }
    
}
