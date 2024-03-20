//
// ContentView.swift
// Rubber Warriors
//
// Created by Caden Christesen on 2/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedDuck1: String = "Original"
    @State private var selectedDuck2: String = "Original"
    @State private var selectedDuck3: String = "Original"
    @State var DUckSelection1 = "Original"
    @State var DUckSelection2 = "Original"
    @State var DUckSelection3 = "Original"
    @State private var attackTurn: Int = 0
    let duckTypes = ["Original", "Fire", "Water", "Earth", "Ice"]
    
    
    // State variables for health and attack
    @State private var hp1 = 100.00
    @State private var hp2 = 100.00
    @State private var hp3 = 100.00
    @State private var hp1Total = 100.00
    @State private var hp2Total = 100.00
    @State private var hp3Total = 100.00
    @State private var dmg1 = 50.00
    @State private var dmg2 = 50.00
    @State private var dmg3 = 50.00
    @State private var dmg1Total = 50.00
    @State private var dmg2Total = 50.00
    @State private var dmg3Total = 50.00
    @State private var enemyHp = 500.00
    @State private var enemyDmg = 50.00
    @State private var enemyHpTotal = 500.00
    @State private var enemyDmgTotal = 50.00
    
    @State private var playerTurn = "Goose"
    
    var body: some View {
        ZStack {
            Image("duckgamebackgroundbattle")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack {
                
                Text("Turn: \(playerTurn)")
                    .font(Font.custom("Verdana Bold", size: 24))
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                ZStack {
                    
                    VStack {
                        if(enemyHp <= 0){
                            Image("goosesketch")
                                .resizable()
                                .frame(width: 100, height: 100)
                            Text("Health")
                                .font(.system(size: 12, weight: .light, design: .serif))
                            ProgressView(value: 0, total: enemyHpTotal)
                            Text("Attack")
                                .font(.system(size: 12, weight: .light, design: .serif))
                            ProgressView(value: 0, total: enemyDmgTotal)
                                .tint(.red)
                        }
                        else{
                            Image("goose")
                                .resizable()
                                .frame(width: 100, height: 100)
                            Text("Health")
                                .font(.system(size: 12, weight: .light, design: .serif))
                            ProgressView(value: enemyHp, total: enemyHpTotal)
                                .tint(.yellow)
                            Text("Attack")
                                .font(.system(size: 12, weight: .light, design: .serif))
                            ProgressView(value: enemyDmg, total: enemyDmgTotal)
                                .tint(.red)
                        }
                    }
                }
                .frame(width: 110, height: 200)
                
                Text(" ")
                
                
                Button("Attack") {
                    var whichDuck = Int.random(in: 0..<3) //ignore this warning
                    if(attackTurn % 2 == 0){
                        playerTurn = "DUCKIES"
                        if(enemyHp > 0){
                            enemyHp = enemyHp - (dmg1 + dmg2 + dmg3)
                            if(enemyHp <= 0){
                                let alert = UIAlertController(title: "Victory!", message: "You Win!", preferredStyle: .alert)
                                let action = UIAlertAction(title: "OK", style: .default){_ in
                                    hp1 = 100.00
                                    hp2 = 100.00
                                    hp3 = 100.00
                                    hp1Total = 100.00
                                    hp2Total = 100.00
                                    hp3Total = 100.00
                                    dmg1 = 50.00
                                    dmg2 = 50.00
                                    dmg3 = 50.00
                                    dmg1Total = 50.00
                                    dmg2Total = 50.00
                                    dmg3Total = 50.00
                                    enemyHp = 500.00
                                    enemyDmg = 50.00
                                    enemyHpTotal = 500.00
                                    enemyDmgTotal = 50.00
                                    DUckSelection1 = "Original"
                                    DUckSelection2 = "Original"
                                    DUckSelection3 = "Original"
                                    selectedDuck1 = "Original"
                                    selectedDuck2 = "Original"
                                    selectedDuck3 = "Original"
                                }
                                alert.addAction(action)
                                UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil) //ignore this warning as well
                            }
                        }
                        else{
                            let alert = UIAlertController(title: "Victory!", message: "You Win!", preferredStyle: .alert)
                            let action = UIAlertAction(title: "OK", style: .default)
                            alert.addAction(action)
                            UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil) //ignore this warning as well
                        }
                    }
                    else{
                        playerTurn = "BADGUY"
                        if(whichDuck == 0){
                            if(hp1 > 0){
                                hp1 = hp1 - enemyDmg
                            }
                            else{
                                whichDuck = Int.random(in: 0..<2)
                                if(whichDuck == 0){
                                    hp2 = hp2 - enemyDmg
                                }
                                else{
                                    hp3 = hp3 - enemyDmg
                                }
                            }
                        }
                        else if(whichDuck == 1){
                            if(hp2 > 0){
                                hp2 = hp2 - enemyDmg
                            }
                            else{
                                whichDuck = Int.random(in: 0..<2)
                                if(whichDuck == 0){
                                    hp1 = hp1 - enemyDmg
                                }
                                else{
                                    hp3 = hp3 - enemyDmg
                                }
                            }
                        }
                        else if(whichDuck == 2){
                            if(hp3 > 0){
                                hp3 = hp3 - enemyDmg
                            }
                            else{
                                whichDuck = Int.random(in: 0..<2)
                                if(whichDuck == 0){
                                    hp2 = hp2 - enemyDmg
                                }
                                else{
                                    hp1 = hp1 - enemyDmg
                                }
                            }
                        }
                    }
                    attackTurn += 1
                }
                .font(Font.custom("Verdana Bold", size: 20))
                .foregroundColor(.blue)
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            VStack{
                ScrollView(.horizontal) {
                    //ForEach(0..<3) { index in{
                    ZStack {
                        HStack {
                            // Check the selection and display the corresponding image
                            VStack {
                                //Drop down start
                                Menu {
                                    ForEach(duckTypes, id: \.self) { option in
                                        Button(option) { selectedDuck1 = option
                                            DUckSelection1 = selectedDuck1
                                            if DUckSelection1 == "Fire" {
                                                dmg1 = 200
                                                hp1 = 50
                                                hp1Total = 50
                                            }
                                            else if DUckSelection1 == "Ice" {
                                                dmg1 = 50
                                                hp1 = 200
                                                hp1Total = 200
                                            }
                                            else if DUckSelection3 == "Water" {
                                                dmg3 = 75
                                                hp3 = 150
                                                hp3Total = 150
                                            }
                                            else if DUckSelection3 == "Earth" {
                                                dmg3 = 150
                                                hp3 = 75
                                                hp3Total = 75
                                            }
                                            else if DUckSelection1 == "Original" {
                                                dmg1 = 80
                                                hp1 = 100
                                                hp1Total = 100
                                            }
                                            
                                        }
                                    }
                                } label: {
                                    Text(selectedDuck1)
                                        .foregroundColor(.black)
                                        .frame(maxWidth: .infinity)
                                        .padding(.horizontal)
                                        .background(Color.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                                //Dropdown end
                                if(hp1 <= 0){
                                    Image("Sketch")
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                    Text("Health")
                                        .font(.system(size: 12, weight: .light, design: .serif))
                                    ProgressView(value: 0, total: hp1Total)
                                        .tint(.yellow)
                                    //Whats is the attack bar for?
                                    //Will they gain/lose attack damage over time?
                                    Text("Attack")
                                        .font(.system(size: 12, weight: .light, design: .serif))
                                    ProgressView(value: 0, total: 200)
                                        .tint(.red)
                                }
                                else{
                                    Image(DUckSelection1)
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                    Text("Health")
                                        .font(.system(size: 12, weight: .light, design: .serif))
                                    ProgressView(value: hp1, total: hp1Total)
                                        .tint(.yellow)
                                    //Whats is the attack bar for?
                                    //Will they gain/lose attack damage over time?
                                    Text("Attack")
                                        .font(.system(size: 12, weight: .light, design: .serif))
                                    ProgressView(value: dmg1, total: 200)
                                        .tint(.red)
                                }
                            }
                            .frame(width: 110, height: 200)
                            
                            VStack {
                                //start
                                Menu {
                                    ForEach(duckTypes, id: \.self) { option in
                                        Button(option) { selectedDuck2 = option
                                            DUckSelection2 = selectedDuck2
                                            if DUckSelection2 == "Fire" {
                                                dmg2 = 200
                                                hp2 = 50
                                                hp2Total = 50
                                            }
                                            else if DUckSelection2 == "Ice" {
                                                dmg2 = 50
                                                hp2 = 200
                                                hp2Total = 200
                                            }
                                            else if DUckSelection3 == "Water" {
                                                dmg3 = 75
                                                hp3 = 150
                                                hp3Total = 150
                                            }
                                            else if DUckSelection3 == "Earth" {
                                                dmg3 = 150
                                                hp3 = 75
                                                hp3Total = 75
                                            }
                                            else if DUckSelection2 == "Original" {
                                                dmg2 = 80
                                                hp2 = 100
                                                hp2Total = 100
                                            }
                                            
                                        }
                                    }
                                } label: {
                                    Text(selectedDuck2)
                                        .foregroundColor(.black)
                                        .frame(maxWidth: .infinity)
                                        .padding(.horizontal)
                                        .background(Color.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                                //end
                                
                                if(hp2 <= 0){
                                    Image("Sketch")
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                    Text("Health")
                                        .font(.system(size: 12, weight: .light, design: .serif))
                                    ProgressView(value: 0, total: hp2Total)
                                    Text("Attack")
                                        .font(.system(size: 12, weight: .light, design: .serif))
                                    ProgressView(value: 0, total: dmg2Total)
                                        .tint(.red)
                                }
                                else{
                                    Image(DUckSelection2)
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                    Text("Health")
                                        .font(.system(size: 12, weight: .light, design: .serif))
                                    ProgressView(value: hp2, total: hp2Total)
                                        .tint(.yellow)
                                    //Whats is the attack bar for?
                                    //Will they gain/lose attack damage over time?
                                    Text("Attack")
                                        .font(.system(size: 12, weight: .light, design: .serif))
                                    ProgressView(value: dmg2, total: 200)
                                        .tint(.red)
                                }
                            }
                            .frame(width: 110, height: 200)
                            
                            ZStack {
                                
                                VStack {
                                    
                                    //start
                                    Menu {
                                        ForEach(duckTypes, id: \.self) { option in
                                            Button(option) { selectedDuck3 = option
                                                DUckSelection3 = selectedDuck3
                                                DUckSelection3 = selectedDuck3
                                                if DUckSelection3 == "Fire" {
                                                    dmg3 = 200
                                                    hp3 = 50
                                                    hp3Total = 50
                                                    
                                                }
                                                else if DUckSelection3 == "Ice" {
                                                    dmg3 = 50
                                                    hp3 = 200
                                                    hp3Total = 200
                                                }
                                                else if DUckSelection3 == "Water" {
                                                    dmg3 = 75
                                                    hp3 = 150
                                                    hp3Total = 150
                                                }
                                                else if DUckSelection3 == "Earth" {
                                                    dmg3 = 150
                                                    hp3 = 75
                                                    hp3Total = 75
                                                }
                                                else if DUckSelection3 == "Original" {
                                                    dmg3 = 80
                                                    hp3 = 100
                                                    hp3Total = 105
                                                }
                                            }
                                        }
                                    } label: {
                                        Text(selectedDuck3)
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity)
                                            .padding(.horizontal)
                                            .background(Color.white)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                    }
                                    .frame(width: 110)
                                    //end
                                    
                                    if(hp3 <= 0){
                                        Image("Sketch")
                                            .resizable()
                                            .frame(width: 100, height: 100)
                                        Text("Health")
                                            .font(.system(size: 12, weight: .light, design: .serif))
                                        ProgressView(value: 0, total: hp3Total)
                                        Text("Attack")
                                            .font(.system(size: 12, weight: .light, design: .serif))
                                        ProgressView(value: 0, total: dmg3Total)
                                            .tint(.red)
                                    }
                                    else{
                                        Image(DUckSelection3)
                                            .resizable()
                                            .frame(width: 100, height: 100)
                                        Text("Health")
                                            .font(.system(size: 12, weight: .light, design: .serif))
                                        ProgressView(value: hp3, total: hp3Total)
                                            .tint(.yellow)
                                        //Whats is the attack bar for?
                                        //Will they gain/lose attack damage over time?
                                        Text("Attack")
                                            .font(.system(size: 12, weight: .light, design: .serif))
                                        ProgressView(value: dmg3, total: 200)
                                            .tint(.red)
                                    }
                                }
                            }
                            .frame(width: 110, height: 200)
                            //                Text("Health")
                            //                  .font(.system(size: 12, weight: .light, design: .serif))
                            //                ProgressView(value: Float(health(for: index)), total: 100)
                            //                Text("Attack")
                            //                  .font(.system(size: 12, weight: .light, design: .serif))
                            //                ProgressView(value: Float(attack(for: index)), total: 100)
                        }
                    }
                    // }
                }
            }.position(CGPoint(x: 220, y: 720))
        }
    }
}

// Helper function to get the selected duck type for a given index
//  private func selectedDuck(for index: Int) -> String {
//    switch index {
//    case 0:
//      return selectedDuck1
//    case 1:
//      return selectedDuck2
//    case 2:
//      return selectedDuck3
//    default:
//      return "Original"
//    }
//  }
//
//  // Functions to get health and attack values based on selected duck type and index
//    private func health(for index: Int) -> Int {
//      switch selectedDuck(for: index) {
//      case "Original":
//        return hp1 // Use the corresponding health variable based on index
//      case "Fire":
//        // Implement logic to determine health for Fire duck (e.g., maybe slightly lower health)
//        return hp1 - 10 // Example, adjust as needed
//      case "Water":
//        // Implement logic to determine health for Water duck (e.g., maybe slightly higher health)
//        return hp1 + 10 // Example, adjust as needed
//      case "Earth":
//        // Implement logic to determine health for Earth duck
//        return hp2 // Maybe Earth duck uses a different health variable (hp2)
//      case "Ice":
//        // Implement logic to determine health for Ice duck
//        return hp3 // Maybe Ice duck uses a different health variable (hp3)
//      default:
//        return hp1 // Default case, return original health
//      }
//    }
//    private func attack(for index: Int) -> Int {
//      switch selectedDuck(for: index) {
//      case "Original":
//        return dmg1 // Use the corresponding attack variable based on index
//      case "Fire":
//        // Implement logic to determine attack for Fire duck (e.g., maybe higher attack)
//        return dmg1 + 15 // Example, adjust as needed
//      case "Water":
//        // Implement logic to determine attack for Water duck (e.g., maybe lower attack)
//        return dmg1 - 5 // Example, adjust as needed
//      case "Earth":
//        // Implement logic to determine attack for Earth duck
//        return dmg2 // Maybe Earth duck uses a different attack variable (dmg2)
//      case "Ice":
//        // Implement logic to determine attack for Ice duck
//        return dmg3 // Maybe Ice duck uses a different attack variable (dmg3)
//      default:
//        return dmg1 // Default case, return original attack
//      }
//    }


struct DropdownMenu: View {
    
    let title: String
    @State var selection: String
    let options: [String]
    @State var duck : String
    
    var body: some View {
        Menu {
            ForEach(options, id: \.self) { option in
                Button(option) { selection = option
                    duck = selection
                    
                }
            }
        } label: {
            Text(selection)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
        }
    }
}

#Preview {
    ContentView()
}
