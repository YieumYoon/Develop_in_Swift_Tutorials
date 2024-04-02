//
//  ContentView.swift
//  MyselfInSixWords
//
//  Created by Junsu Lee on 3/31/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 15) {
            Text("Myself in Six Words")
            HStack {
                Text("Maker")
                    .padding()
                    .background(Color.indigo, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Text("Creater")
                    .padding()
                    .background(Color.pink, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Text("Reader")
                    .padding()
                    .background(Color.mint, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            HStack {
                Text("Early Adapter")
                    .padding()
                    .background(Color.red, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Text("Job Seeker")
                    .padding()
                    .background(Color.green, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Text("Idea")
                    .padding()
                    .background(Color.orange, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
