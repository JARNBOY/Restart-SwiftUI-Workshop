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
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20) {
                //MARK: HEADER
                Spacer()
                
                VStack(spacing: 0) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                    It's not how much we give but
                    how much love we put into giving.
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                } //: HEARDER
                
                //MARK: CENTER
                ZStack {
                    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
                    Image("character-1")
                        .imageModifier()
                } //: CENTER
                
                Spacer()
                
                //MARK: FOOTER
                ZStack {
                    //PARTS OF THE CUSTOM BUTTON
                    
                    //1. BACKGROUND (STATIC)
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    //2. CALL-TO-ACTION (STATIC)
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    //3. CAPSULE (DYNAMIC WIDTH)
                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        
                        Spacer()
                    }
                    //4. CIRCLE (DRAGGABLE)
                    HStack {
                        ZStack {
                            Capsule()
                                .fill(Color("ColorRed"))
                            Capsule()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                            
                        }
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80,alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActive = false
                        }
                        
                        Spacer()
                    }//: HStack
                    
                    
                } //: FOOTER
                .frame(height: 80, alignment: .center)
                .padding()
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
