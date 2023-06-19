//
//  OnboardingView.swift
//  Restart
//
//  Created by Papon Supamongkonchai on 19/6/2566 BE.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("Onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button {
                //Some Action
                isOnboardingViewActive = false
            } label: {
                Text("Start")
            }

        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
