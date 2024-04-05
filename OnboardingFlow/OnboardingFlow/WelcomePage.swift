//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by Junsu Lee on 4/2/24.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            Text("Welcome to MyApp")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
                
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean egestas vulputate nisi tempor blandit. Etiam tincidunt, erat et aliquam pulvinar, augue nunc finibus metus, nec ultrices diam sapien a odio. Pellentesque ipsum metus, aliquet vel mi id, bibendum lobortis lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam sapien diam, tempor sed luctus eu, pharetra quis purus. Vivamus hendrerit nisi at mi tempus tempor. Proin nunc ligula, interdum id lacinia id, vulputate nec ligula.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .fontWeight(.semibold)
                
        }
        
        .padding()
        
    }
}

#Preview {
    WelcomePage()
}
