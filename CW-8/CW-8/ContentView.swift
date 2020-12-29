//
//  ContentView.swift
//  CW-8
//
//  Created by NasserAlsaqabi on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var counters: [Int] = [0,0,0]
    var body: some View {
        VStack(alignment: .trailing){
            thekerButton(counter: $counters[0], label:"استغفر الله", color: .blue)
            thekerButton(counter: $counters[1], label:"سبحان الله وبحمده", color: .red)
            thekerButton(counter: $counters[2], label:"الحمد لله", color: .green)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct thekerButton: View {
    @Binding var counter: Int //Biniding because it will change
    let label: String // let because it will not change
    let color: Color
    var body: some View {
        HStack{
            Text(label)
                .font(.largeTitle)
            Button(action: {counter += 1
                
            },label: {
                Text("\(counter)")
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    .background(color)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding()
            })
        }
    }
}
