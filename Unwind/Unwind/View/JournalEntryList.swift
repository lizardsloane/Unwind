//
//  JournalEntryList.swift
//  Unwind
//
//  Created by Leah Cluff on 4/10/23.
//

import SwiftUI

struct JournalEntryList: View {
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Gradient.blueGradient.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading){
                
                
                HStack() {
                    
                    Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }

                    NavigationLink("+", destination: Journal())
                        .font((.custom("Montserrat-Regular", size: 40)))
                }
              
                Text("Entries")
                    .font(.custom("Montserrat-SemiBold", size: 45))
                    .padding()
                
                    //gonna make the rounded rectangle change sizes with however many things.. this tableview will be.
                
              
                
                
                //ok so I'm writing it out to start working it out in my head. I want to dismiss my view and not navigate back bc I like how it looks more. 
                
                
            }.foregroundColor(.white)
            //buhh where do I put the fucking compose and done and back buttons
            
            
        }
        .preferredColorScheme(.dark)
    }
    
}

struct JournalEntryList_Previews: PreviewProvider {
    static var previews: some View {
        JournalEntryList()
    }
}
