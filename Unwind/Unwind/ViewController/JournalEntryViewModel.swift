//
//  JournalEntryViewModel.swift
//  Unwind
//
//  Created by Leah Cluff on 4/12/23.
//

import Foundation
class JournalEntryViewModel {
    
    var entries: [JournalModel] = []
    
    func createNewEntry(with title: String, body: String) {
        let newEntry = JournalModel(title: title, body: body)
    }
    
    func updateEntry(with entryToUpdate: JournalModel, newTitle: String, newBody: String) {
        entryToUpdate.title = newTitle
        entryToUpdate.body = newBody
    }
    
    func deleteEntry(with entryToDelete: JournalModel) {
        guard let indexOfEntryToBeDeleted = entries.firstIndex(of: entryToDelete) else {return}
        entries.remove(at: indexOfEntryToBeDeleted)
    }
    
}
