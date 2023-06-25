//
//  CustomTabBar.swift
//  TestTabBar
//
//  Created by 임석현 on R 5/06/25.
//

import SwiftUI
import UIKit
enum Tab : String,CaseIterable {
    case homeBtn = "homeBtn"
    case chatBtn = "chat"
    case callBtn = "call"
}
struct TestTabBar : View {
    @Binding var selectTab : Tab
    private var tabColor : Color {
        switch selectTab {
        case .homeBtn:
            return .black
        case .chatBtn:
            return .gray
        case .callBtn:
            return .black
        }
    }
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(tab.rawValue + ".png")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30,height: 30)
                        .foregroundColor(tab == selectTab ? tabColor : Color.black)
                        .font(.system(size:40))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 1.0)) {
                                selectTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil,height: 60)
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding()
        }
       
        
    }
}


struct TestTabBar_Previews: PreviewProvider {
    static var previews: some View {
        TestTabBar(selectTab: .constant(.chatBtn))
    }
    
}
