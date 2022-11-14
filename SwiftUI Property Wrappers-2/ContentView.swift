//
//  ContentView.swift
//  SwiftUI Property Wrappers-2
//
//  Created by Stewart Lynch on 2020-07-25.
//

import SwiftUI

struct ContentView: View {
    var number = 0
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HStack {
                    Text("Lucky Number:")
                    Text("\(number)")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                }
                Group {
                    Button("New Number") {
                        
                    }
                    Button("Show Modal") {
                        
                    }
                }
                .frame(width: 150)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.blue)
                .cornerRadius(7)
            }
            .navigationTitle("Property Wrappers 2")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Text("Go Next")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}