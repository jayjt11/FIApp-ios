//
//  ContactTests.swift
//  FIAppTests
//
//  Created by Jayant Tiwari on 09/08/21.
//  Copyright © 2021 Fiserv. All rights reserved.
//

import XCTest
import ZelleSDK

@testable import ZelleSDK
@testable import FIApp


class ContactTests: XCTestCase {

    
    func testSingleContact() {
        
        var contact = ContactTestCase()
        var contact1 = contact.getSingleContact()
        var name = contact1.name!
        
        var email = contact1.email!
        XCTAssertTrue(!name.isEmpty)
        XCTAssertTrue(!email .isEmpty)
    }
    
    
    func testAllContact() {
        
        var contact = ContactTestCase()
        var arrContacts = contact.getAllContacts()
        
        var phone = arrContacts[0].phone!
        var name = arrContacts[0].name!
        XCTAssertTrue(!name.isEmpty)
        XCTAssertTrue(phone.count >= 10 && phone.count <= 11)
      //  XCTAssertEqual(arrContacts.count, 1)
        XCTAssertTrue(arrContacts.count > 0)
                
    }
    
    
    
    
}
