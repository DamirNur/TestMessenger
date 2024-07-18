//
//  String+Extension.swift
//  TestMessenger
//
//  Created by Damir Nuriev on 18.07.2024.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "\(self) couldn't be found in Localizable.strings")
    }
}
