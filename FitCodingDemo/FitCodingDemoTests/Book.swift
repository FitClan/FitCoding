//
//  Book.swift
//  FitCodingDemoTests
//
//  Created by cyrill on 2017/12/16.
//  Copyright © 2017年 cyrill.win. All rights reserved.
//

import UIKit

@objcMembers
class Book: NSObject, NSCoding {
    
    var title: String?
    var author: String?
    var pageCount: NSNumber?
    var categories: [String]?
    var available: Bool = false
    
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
