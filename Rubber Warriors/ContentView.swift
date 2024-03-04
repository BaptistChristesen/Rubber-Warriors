//
//  ContentView.swift
//  Rubber Warriors
//
//  Created by Caden Christesen on 2/28/24.
//

import SwiftUI

struct ContentView: View {
    @State var PlayerArray = ["Reg","Blue","Baby", "Flower"]
    @State var HealthArrays = [100, 80, 90, 50]
    @State var AttackArray = [30, 40, 35, 50]
    var body: some View {
        VStack {
            ScrollView(.horizontal){
                        HStack {
                            ForEach(PlayerArray.indices, id: \.self) {i in
                                ZStack{
                                    VStack{
                                        Image("\(PlayerArray[i])")
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 100, height: 100)
                                        Text("Health")
                                            .font(.system(size: 12, weight: .light, design: .serif))
                                        ProgressView(value: Float(HealthArrays[i]), total: 100)
                                        Text("attack")
                                            .font(.system(size: 12, weight: .light, design: .serif))
                                        ProgressView(value: Float(AttackArray[i]), total: 100)
                                        
                                        
                                    }
                                    LinearGradient(colors: [.pink.opacity(0.2),.purple.opacity(0.3)], startPoint: .top, endPoint: .bottom)
                                        .frame(width: 110, height: 180, alignment: .center)
                                        .clipShape(RoundedRectangle(cornerRadius: 25))
                                }
                            }
                        } .fixedSize()
                            .padding()
                    }
            
        }
        .padding()
        .position(CGPoint(x: 192.5, y: 690))
    }
}


#Preview {
    ContentView()
}

