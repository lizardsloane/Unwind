//
//  ContentView.swift
//  Unwind
//
//  Created by Leah Cluff on 4/10/23.
//

import SwiftUI


struct ContentView: View {
    
    @State private var action: Int? = 0
    
    var body: some View {
        
        NavigationView {
            
            ZStack(alignment: .center) {
                
                Gradient.blueGradient
                
                Text("Unwind")
                    .font(.custom("Montserrat-Medium", size: 45))
                    .position(x:125, y:100)
                    .safeAreaInset(edge: .bottom) {
                    }
                
                VStack(alignment: .center) {
                    
                    NavigationLink("Meditate", destination: Meditate())
                        .padding()
                    
                    NavigationLink("Journal", destination: JournalEntryList())
                        .padding()
                    
                    NavigationLink("Reminders", destination: Reminders())
                        .padding()
                    
                }.font(.custom("Montserrat-Regular", size: 30))
                
                Image("Mountain1")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
                    .frame(width:470, height: 300, alignment: .bottom)
                    .position(x:160, y:700)
                
                    .safeAreaInset(edge: .bottom) {
                        
                    }
                
                    
                
                
            }.foregroundColor(Color.white)
                .edgesIgnoringSafeArea(.top)
                .edgesIgnoringSafeArea(.bottom)
            
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


