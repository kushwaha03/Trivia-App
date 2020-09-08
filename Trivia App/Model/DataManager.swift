//
//  DataManager.swift
//  Trivia App
//
//  Created by Krishna Kushwaha on 08/09/20.
//  Copyright © 2020 Krishna Kushwaha. All rights reserved.
//

import Foundation

class DataManager {
    static let shared = DataManager()

    var name = ""
    var ques1 = ""
    var ques2 = ""

    private init() { }
}
