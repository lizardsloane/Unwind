//
//  Journal.swift
//  Unwind
//
//  Created by Leah Cluff on 4/10/23.
//

import SwiftUI

struct Journal: View {
    
    var body: some View {
        
        ZStack(alignment: .center) {
            
            Gradient.blueGradient.edgesIgnoringSafeArea(.all)
            
            Text("Compose")
                .font(.custom("Montserrat-SemiBold", size: 45))
                .frame(alignment: .topLeading)
                .padding()
            
         
           
        
           
        }
        .preferredColorScheme(.dark)
        
    }
}


struct Journal_Previews: PreviewProvider {
    static var previews: some View {
        Journal()
    }
}
