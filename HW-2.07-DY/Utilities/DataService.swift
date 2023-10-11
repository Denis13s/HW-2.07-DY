//
//  DataService.swift
//  HW-2.07-DY
//
//  Created by Denis Yarets on 11/10/2023.
//

import Foundation

struct DataService {
    static let shared = DataService()
    
    let userName = "User"
    let password = "Password"
    
    func getPersonData() -> Person {
        Person(image: "tim", name: "Tim", surname: "Cook", company: "Apple", function: "CEO", bio: "Timothy Donald Cook is an American business executive who has been the chief executive officer of Apple Inc. since 2011. Cook previously served as the company's chief operating officer under its co-founder Steve Jobs")
    }
}
