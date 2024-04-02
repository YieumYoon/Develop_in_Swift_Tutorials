//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Junsu Lee on 3/31/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ChatBubble(text: "Knock, knock!", color: Color.yellow)
            ChatBubble(text: "Who's there?", color: Color.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct ChatBubble: View {
    let text: String
    let color: Color
    
    var body: some View {
        Text(text)
            .padding()
            .background(color, in: RoundedRectangle(cornerRadius: 8))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}
