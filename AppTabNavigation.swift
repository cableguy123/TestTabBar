//
//  AppTabNavigation.swift
//  TestTabBar
//
//  Created by 임석현 on R 5/06/25.
//

import SwiftUI
enum textTab : String {
    case homeBtn = "homeBtn.png"
    case chatBtn = "chat.png"
    case callBtn = "call.png"
}

struct AppTabNavigation: View {
    @State var selection: textTab = .homeBtn
    var body: some View {
        TabView(selection: $selection) {
            NavigationView {
                FirstTabView(tab: $selection)
            }.navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                Label("Home", systemImage: "house.fill")
                    .accessibility(label: Text("Home"))
            }
            .tag(textTab.home)

            NavigationView {
                Text("SecondView")
            }.navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .navigationViewStyle(StackNavigationViewStyle())

            .tabItem {
                Label("Home", systemImage: "house.fill")
                    .accessibility(label: Text("Home"))
            }
            .tag(textTab.second)
        }
    }
}

struct FirstTabView: View {
    @Binding var tab: textTab
    var body: some View {
        Button("Go Second") { self.tab = .second }
    }
}
struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
    }
}
