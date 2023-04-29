//
//  Reminders.swift
//  Unwind
//
//  Created by Leah Cluff on 4/10/23.
//

import SwiftUI


struct Reminders: View {
    var body: some View {
        
        ZStack(alignment: .topLeading){
           
            Gradient.blueGradient.edgesIgnoringSafeArea(.all)
            
            //set this in the background or reformat
          
                
            
            VStack(alignment: .leading){
                
                Text("Reminders")
                    .font(.custom("Montserrat-SemiBold", size: 45))
                    .padding()
                
                
                //ok so let's start walking through what needs to be done...
                //first I want to have a rounded rectangle with the days of the week at the top of the screen. it will be that pink opacity gradient thing
               
                //MARK: ReminderCell
//somehow add the friggen custom reminder cell.. But now I'm not sure.. if I need a cell. Maybe I just need a multi picker option.. it's not a calendar so I don't think I need a cell.
                
                //selecting multiple daaaays and formatting tomorrow
             
                   // let fillercode: String
                    
                
                    
                //this is for recurring but I'm brain ded and this will have to do.
             
                
            
                    
            
            }
        }.foregroundColor(.white)
         .preferredColorScheme(.dark)
    }
}

struct Reminders_Previews: PreviewProvider {
    static var previews: some View {
        Reminders()
    }
}
