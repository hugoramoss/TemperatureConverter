//
//  ContentView.swift
//  Temperature Converter
//
//  Created by Hugo Ramos on 30/07/2026.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var temperature: String = ""
    @State var fahrenheit: Double = 0
    
    
    var body: some View {
        VStack {
            Text("Temperature Converter")
                .font(.largeTitle)
              
            
        }
        VStack{
            Text("Temperature (°C)")
            TextField("Temperature", text: $temperature)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("\(fahrenheit) °F")
        }
        
        Button("Convert"){
            if let number = Double(temperature){
                fahrenheit = convertToFahrenheit(celsius: number)
            }
        }
        Button("Reset"){
            temperature = ""
            fahrenheit = 0
        }
        .padding()
    }
    func convertToFahrenheit(celsius: Double) -> Double {
        return (celsius * 9/5) + 32
    }
}

#Preview {
    ContentView()
}
