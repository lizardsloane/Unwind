//
//  Meditate.swift
//  Unwind
//
//  Created by Leah Cluff on 4/10/23.
//

import SwiftUI
import UIKit

struct Meditate: View {
    @State var countDownTimer = 60
    @State var timeRunning = false
    
    @State private var wave = false
    
    var body: some View {
        
        ZStack() {
            
            Gradient.blueGradient.edgesIgnoringSafeArea(.all)
            
            Text("Meditate")
                .font(.custom("Montserrat-Medium", size: 45))
                .position(x:100,y:200)
                .padding()
            
            ZStack() {
                Circle()
                    .stroke(lineWidth: 15)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.desertSand)
                    .scaleEffect(wave ? 2: 1)
                    .opacity(wave ? 0.1 : 1)
                    .blur(radius: 8)
                
                //I think I want to make it so that this has the timer text in the center.
                    .animation(Animation.easeInOut(duration: 1).repeatCount(15, autoreverses: true).speed(0.3))
                    .onAppear() {
                        self.wave.toggle()
                    }
                Circle()
                    .frame(width: 200, height: 200).opacity(0.50).foregroundColor(Color.vividTangerine)
                    .shadow(radius: 25)
                    .blur(radius: 8)
                    .font(.custom("Montserrat-Light", size: 25))
                
                Stepper(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(4)/*@END_MENU_TOKEN@*/, in: 0...60) {
                    
                }
                .position(x:50, y:550)
                
            }
        }
        .foregroundColor(.white)
        .preferredColorScheme(.dark)
    }
}

struct Meditate_Previews: PreviewProvider {
    static var previews: some View {
        Meditate()
    }
}

