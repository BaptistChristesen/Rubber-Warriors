//
//  ContentView.swift
//  Rubber Warriors
//
//  Created by Caden Christesen on 2/28/24.
//

import SwiftUI

struct ContentView: View {
    @State var PlayerArray = ["Fire","Earth","Water","Ice"]
    var body: some View {
        VStack {
            ScrollView(.horizontal){
                        HStack {
                            ForEach(PlayerArray, id: \.self) {duck in
                                ZStack{
                                    
                                    Image("\(duck)")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100, alignment: .center)
                                    LinearGradient(colors: [.pink.opacity(0.2),.purple.opacity(0.3)], startPoint: .top, endPoint: .bottom)
                                        .frame(width: 110, height: 110, alignment: .center)
                                        .clipShape(RoundedRectangle(cornerRadius: 25))
                                }
                            }
                        } .fixedSize()
                            .padding()
                    }
            
        }
        .padding()
        .position(CGPoint(x: 192.5, y: 700))
    }
}

#Preview {
    ContentView()
}
