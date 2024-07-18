//
//  OnboardingView.swift
//  TestMessenger
//
//  Created by Damir Nuriev on 18.07.2024.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var isSheetPresented = false
    
    var body: some View {
        
        onboardingImage
        
        VStack {
            startButton
        }
        .padding(.bottom, UIConstants.buttonBottom)
    }
}

private extension OnboardingView {
    
    var onboardingImage: some View {
        VStack {
            Spacer()
                .frame(height: UIConstants.imageTop)
            Image(TMIconKeys.Image.onboardingImage)
                .padding(.bottom, UIConstants.imageBottom)
                .padding(.horizontal, UIConstants.imageHorizontal)
            Text(TMLocalizableKeys.Onboarding.title)
                .font(TMFont.heading2.font)
                .multilineTextAlignment(.center)
                .padding(.horizontal, UIConstants.textHorizontal)
            Spacer()
        }
        .background(Color.neutralWhite)
    }
    
    var startButton: some View {
        ContinueButton(title: TMLocalizableKeys.Onboarding.buttonTitle) {
            isSheetPresented = true
        }
        .sheet(isPresented: $isSheetPresented) {
            TableView()
        }
    }
}

fileprivate enum UIConstants {
    
    static let imageTop: CGFloat = 100.0
    static let imageBottom: CGFloat = 42.0
    static let imageHorizontal: CGFloat = 50.0
    
    static let textHorizontal: CGFloat = 48.0
    
    static let buttonBottom: CGFloat = 20.0
    
}

#Preview {
    OnboardingView()
}
