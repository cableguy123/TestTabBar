//
//  ContentView.swift
//  TestTabBar
//
//  Created by 임석현 on R 5/06/25.
//

import SwiftUI
struct ContentView: View {
    @State private var selectTab : Tab = .homeBtn
    @State private var selectButton : UpButton  = .alurm
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        ZStack {
            VStack {
                TapBarView(selectBtn: $selectButton)
                ProfileView()
                TabView(selection: $selectTab) {
                    ForEach(Tab.allCases, id: \.rawValue) {tab in
                        HStack {
                            Image(tab.rawValue)
                        }
                        .tag(tab)
                    }
                }
            }
            VStack {
                Spacer()
                TestTabBar(selectTab: $selectTab)
            }
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
