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
  let duckTypes = ["Original", "Fire", "Water", "Earth", "Ice"]

  // State variables for health and attack
  @State private var hp1 = 100
  @State private var hp2 = 100
  @State private var hp3 = 100
  @State private var dmg1 = 50 // Renamed dmg to dmg (damage) for clarity
  @State private var dmg2 = 50
  @State private var dmg3 = 50

  var body: some View {
    VStack {
      HStack {
          DropdownMenu(title: "Duck 1", selection: selectedDuck1, options: duckTypes, duck: selectedDuck1)
          DropdownMenu(title: "Duck 2", selection: selectedDuck2, options: duckTypes, duck: selectedDuck2)
          DropdownMenu(title: "Duck 3", selection: selectedDuck3, options: duckTypes, duck: selectedDuck3)
      }
      ScrollView(.horizontal) {
        HStack {
          ForEach(0..<3) { index in
            ZStack {
              VStack {
                // Check the selection and display the corresponding image
                if selectedDuck(for: index) == "Original" {
                  Image("Original")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                } else if selectedDuck(for: index) == "Fire" {
                  Image("Fire")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                } else if selectedDuck(for: index) == "Water" {
                  Image("Water")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                } else if selectedDuck(for: index) == "Earth" {
                  Image("Earth")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                } else if selectedDuck(for: index) == "Ice" {
                  Image("Ice")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                }

                Text("Health")
                  .font(.system(size: 12, weight: .light, design: .serif))
                ProgressView(value: Float(health(for: index)), total: 100)
                Text("Attack")
                  .font(.system(size: 12, weight: .light, design: .serif))
                ProgressView(value: Float(attack(for: index)), total: 100)
              }
              LinearGradient(colors: [.pink.opacity(0.2), .purple.opacity(0.3)], startPoint: .top, endPoint: .bottom)
                .frame(width: 110, height: 180, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            }
          }
        }
      }
    }
    .padding()
    .position(CGPoint(x: 192.5, y: 690))
  }

  // Helper function to get the selected duck type for a given index
  private func selectedDuck(for index: Int) -> String {
    switch index {
    case 0:
      return selectedDuck1
    case 1:
      return selectedDuck2
    case 2:
      return selectedDuck3
    default:
      return "Original"
    }
  }

  // Functions to get health and attack values based on selected duck type and index
    private func health(for index: Int) -> Int {
      switch selectedDuck(for: index) {
      case "Original":
        return hp1 // Use the corresponding health variable based on index
      case "Fire":
        // Implement logic to determine health for Fire duck (e.g., maybe slightly lower health)
        return hp1 - 10 // Example, adjust as needed
      case "Water":
        // Implement logic to determine health for Water duck (e.g., maybe slightly higher health)
        return hp1 + 10 // Example, adjust as needed
      case "Earth":
        // Implement logic to determine health for Earth duck
        return hp2 // Maybe Earth duck uses a different health variable (hp2)
      case "Ice":
        // Implement logic to determine health for Ice duck
        return hp3 // Maybe Ice duck uses a different health variable (hp3)
      default:
        return hp1 // Default case, return original health
      }
    }
    private func attack(for index: Int) -> Int {
      switch selectedDuck(for: index) {
      case "Original":
        return dmg1 // Use the corresponding attack variable based on index
      case "Fire":
        // Implement logic to determine attack for Fire duck (e.g., maybe higher attack)
        return dmg1 + 15 // Example, adjust as needed
      case "Water":
        // Implement logic to determine attack for Water duck (e.g., maybe lower attack)
        return dmg1 - 5 // Example, adjust as needed
      case "Earth":
        // Implement logic to determine attack for Earth duck
        return dmg2 // Maybe Earth duck uses a different attack variable (dmg2)
      case "Ice":
        // Implement logic to determine attack for Ice duck
        return dmg3 // Maybe Ice duck uses a different attack variable (dmg3)
      default:
        return dmg1 // Default case, return original attack
      }
    }

    
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
    }}

    #Preview {
      ContentView()
    }
