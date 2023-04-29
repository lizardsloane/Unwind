//
//  JournalModel.swift
//  Unwind
//
//  Created by Leah Cluff on 4/10/23.
//

import Foundation

class JournalModel: Codable {
    var title: String
    var body: String
    
    init(title: String, body: String) {
        self.title = title
        self.body = body
        
    }
}
extension JournalModel: Equatable {
    static func == (lhs: JournalModel, rhs: JournalModel) -> Bool {
        return lhs.title == rhs.title &&
        lhs.body == rhs.body
    }
}
