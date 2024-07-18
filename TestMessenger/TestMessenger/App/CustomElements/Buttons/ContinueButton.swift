//
//  ContinueButton.swift
//  TestMessenger
//
//  Created by Damir Nuriev on 18.07.2024.
//

import SwiftUI

struct ContinueButton: View {
    
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(TMFont.subheading2.font)
                .foregroundStyle(.neutralSecondaryBG)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.brandDefault)
                .clipShape(.capsule)
        }
        .padding(.horizontal, UIConstants.horizontalOffset)
    }
    
    init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
}

fileprivate enum UIConstants {
    static let horizontalOffset: CGFloat = 24.0
}
