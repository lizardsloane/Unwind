//
//  Extensions.swift
//  Unwind
//
//  Created by Leah Cluff on 4/10/23.
//

import SwiftUI
import CoreHaptics

extension Color {
    static let jaguar = Color("Jaguar")
    static let midnight = Color("Midnight")
    static let sherpaBlue = Color("SherpaBlue")
    static let blueLagoon = Color("BlueLagoon")
    static let halfBaked = Color("HalfBaked")
    static let vividTangerine = Color("VividTangerine")
    static let desertSand = Color("DesertSand")
}


extension Gradient {
    static let blueGradient =  LinearGradient(colors: [Color.jaguar, Color.midnight, Color.sherpaBlue, Color.blueLagoon], startPoint: .top, endPoint: .bottom)
    
    static let pinkGradient = LinearGradient(colors: [Color.vividTangerine, Color.desertSand, Color.white], startPoint: .top, endPoint: .bottom)
}

enum SetUIViewDefaults {
    
    case statusDetaultBarStyle
    case setDefaultBackground
    case setDefaultfont
    case errorSettingUIDefaults(Error)
    //this is where I make it so the gradient ignores safe edges
   
    
    
    var defaultViewSettings: String {
        switch self {
        case.statusDetaultBarStyle: return "\(UIStatusBarStyle.darkContent)"        case.setDefaultBackground: return "ForegroundStyle(Gradient.blueGradient)"
        case.setDefaultfont: return "FontVariation(name: Montserrat-Medium, value: 35)"
        case.errorSettingUIDefaults: return "there was an error setting up the view defaults"
        
        }
        
    }
}

//I would like to make this a function that I can call. it would be trigger animation. and it would be
enum ErrorState: Error {
    
    case errorLoadingData
    case errorSaving
    case errorReset
    case errorName
    
    var errorLable: String {
        switch self {
            
        case .errorSaving: return "There was an error saving data"
        case.errorReset: return "There was an error resetting data"
        case .errorName: return "there was an error loading title"
        case .errorLoadingData: return "there was an error loading data"
            
        }
    }
}
