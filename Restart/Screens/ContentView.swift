//
//  ContentView.swift
//  Restart
//
//  Created by Papon Supamongkonchai on 19/6/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("Onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
