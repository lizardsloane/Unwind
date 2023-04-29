//
//  ContentView-Model.swift
//  TOTKCountdown
//
//  Created by Leah Cluff on 4/20/23.
//

import Foundation
extension {
    final class ViewModel: ObservableObject {
        @Published var isActive = false
        @Published var showingAlert = false
        @Published var time: String = "12 days"
        @Published var day =  Int
        @Published var hours = Int
        @Published var minutes: Float = 5.0 {
            didSet {
                self.time = "\(Int(hours(minutes)))fgd"
            }
            
        }
        
    }
}
