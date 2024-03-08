//
//  ContentView.swift
//  Rubber Warriors
//
//  Created by Caden Christesen on 2/28/24.
//

import SwiftUI

struct ContentView: View {
    
    //duck stat variables
    @State private var hp1 = 100
    @State private var hp2 = 100
    @State private var hp3 = 100
    @State private var dmh1 = 100
    @State private var dmg2 = 100
    @State private var dmg3 = 100
    
    @State var PlayerArray = ["Original","Original","Original"]
    @State var HealthArrays = [100, 100, 100]
    @State var AttackArray = [50, 50, 50]
    
    
    //duck choice variables
    @State private var selection1: String = "Original"
    @State private var selection2: String = "Original"
    @State private var selection3: String = "Original"
    let options1 = ["Original", "Fire", "Water", "Earth", "Ice"]
    let options2 = ["Original", "Fire", "Water", "Earth", "Ice"]
    let options3 = ["Original", "Fire", "Water", "Earth", "Ice"]
    @State var Option1i = "Original"
    @State vare duck1 Health
    //let options1 =  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    //let options2 =  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    //let options3 =  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    
    var body: some View {
        VStack {
            HStack {
                DropdownMenu(title: "Menu 1", selection: selection1, options: options1)
                DropdownMenu(title: "Menu 2", selection: selection2, options: options2)
                DropdownMenu(title: "Menu 3", selection: selection3, options: options3)
            }
            ScrollView(.horizontal) {
                HStack {
                    //ForEach(PlayerArray.indices, id: \.self) { i in
                    ZStack {
                        VStack {
                            // Check the selection and display the corresponding image
                            
                            
                            //Duck 1
                            
                           
                            menu {
                                
                            }
                            
                            
                            if selection1 == options1[0] {
                                
                                Image("Original")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[0]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[0]), total: 100)
                                
                            }
                            else if selection1 == options1[1] {
                                Image("Fire")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[0]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[0]), total: 100)
                                Option1i = "Fire"
                            }
                            else if selection1 == options1[2] {
                                Image("Water")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[0]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[0]), total: 100)
                            }
                            else if selection1 == options1[3] {
                                Image("Earth")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[0]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[0]), total: 100)
                            }
                            else if selection1 == options1[4] {
                                Image("Ice")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[0]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[0]), total: 100)
                            }
                        }
                        LinearGradient(colors: [.pink.opacity(0.2),.purple.opacity(0.3)], startPoint: .top, endPoint: .bottom)
                            .frame(width: 110, height: 180, alignment: .center)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                    }
                    ZStack {
                        VStack {
                            
                            
                            //Duck 2
                            
                            
                            if selection2 == options2[0] {
                                Image("Original")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[1]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[1]), total: 100)
                            }
                            else if selection2 == options2[1] {
                                Image("Fire")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[1]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[1]), total: 100)
                            }
                            else if selection2 == options2[2] {
                                Image("Water")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[1]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[1]), total: 100)
                            }
                            else if selection2 == options2[3] {
                                Image("Earth")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[1]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[1]), total: 100)
                            }
                            else if selection2 == options2[4] {
                                Image("Ice")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[1]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[1]), total: 100)
                            }
                        }
                        LinearGradient(colors: [.pink.opacity(0.2),.purple.opacity(0.3)], startPoint: .top, endPoint: .bottom)
                            .frame(width: 110, height: 180, alignment: .center)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                        
                    }
                    ZStack {
                        VStack {
                            
                            
                            //Duck 3
                            
                            
                            
                            if selection3 == options3[0] {
                                Image("Original")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[2]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[2]), total: 100)
                            }
                            else if selection3 == options3[1] {
                                Image("Fire")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[2]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[2]), total: 100)
                            }
                            else if selection3 == options3[2] {
                                Image("Water")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[2]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[2]), total: 100)
                            }
                            else if selection3 == options3[3] {
                                Image("Earth")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[2]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[2]), total: 100)
                            }
                            else if selection3 == options3[4] {
                                Image("Ice")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                Text("Health")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(HealthArrays[2]), total: 100)
                                Text("Attack")
                                    .font(.system(size: 12, weight: .light, design: .serif))
                                ProgressView(value: Float(AttackArray[2]), total: 100)
                            }
                            
                        }
                        LinearGradient(colors: [.pink.opacity(0.2),.purple.opacity(0.3)], startPoint: .top, endPoint: .bottom)
                            .frame(width: 110, height: 180, alignment: .center)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                        
                    }
                }
            }
            .fixedSize()
            .padding()
        }
        .padding()
        .position(CGPoint(x: 192.5, y: 690))
    }
}

struct DropdownMenu: View {
    
    let title: String
    @State var selection: String
    let options: [String]
    
    var body: some View {
        Menu {
            ForEach(options, id: \.self) { option in
                Button(option) { selection = option }
            }
        } label: {
            Text(selection)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity) // Fills available space
                .padding(.horizontal)
            //.overlay(
            //Image(systemName: "chevron.down")
            //.foregroundColor(.gray)
            //)
        }
    }
}

#Preview {
    ContentView()
}

