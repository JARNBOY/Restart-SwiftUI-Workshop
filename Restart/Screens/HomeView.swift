//
//  HomeView.swift
//  Restart
//
//  Created by Papon Supamongkonchai on 19/6/2566 BE.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("Onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            //MARK: HEADER
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                
                Image("character-2").imageModifier()
                    .padding()
            }
            
            //MARK: CENTER
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            //MARK: FOOTER
            
            Spacer()
            
            Button {
                //Some Action
                isOnboardingViewActive = true
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.title3)
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
