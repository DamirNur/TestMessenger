//
//  TableView.swift
//  TestMessenger
//
//  Created by Damir Nuriev on 17.07.2024.
//

import SwiftUI

enum Tabs: CaseIterable, Hashable {
    case contacts
    case chats
    case more
    
    var title: String {
        switch self {
        case .contacts:
            return TMLocalizableKeys.Tab.contacts
        case .chats:
            return TMLocalizableKeys.Tab.chats
        case .more:
            return TMLocalizableKeys.Tab.more
        }
    }
    
    var icon: String {
        switch self {
        case .contacts:
            return TMIconKeys.Icon.contacts
        case .chats:
            return TMIconKeys.Icon.chats
        case .more:
            return TMIconKeys.Icon.more
        }
    }
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .contacts:
            ContactsScreen()
        case .chats:
            ChatsScreen()
        case .more:
            MoreScreen()
        }
    }
}

struct TableView: View {
    
    @State var selectedtab: Tabs = .contacts
    
    var body: some View {
        TabView(selection: $selectedtab) {
            ForEach(Tabs.allCases, id: \.self) { tab in
                tab.view
                    .tabItem {
                        Image(tab.icon)
                        Text(tab.title)
                    }
                    .tag(tab)
            }
        }
    }
}
