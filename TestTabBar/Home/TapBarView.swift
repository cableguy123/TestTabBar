//
//  HomeView.swift
//  TestTabBar
//
//  Created by 임석현 on R 5/06/25.
//

import SwiftUI

enum UpButton : String,CaseIterable {
    case alurm = "alurm.png"
    case personPlus = "personplus.png"
    case setting = "setting.png"
}
struct TapBarView : View {
    @Binding var selectBtn : UpButton
    var body: some View {
        VStack{
            HStack{
                Spacer()
                ForEach(UpButton.allCases,id : \.rawValue) {Btn in
                    Button(action: {}, label: {
                        Image(Btn.rawValue).resizable().aspectRatio(contentMode: .fit)
                            .frame(width: 30,height: 50).padding(.horizontal,5)
                    })
                    
                }
              
            }
            Spacer()
            
        }
    }
}
struct TapBar_Previews: PreviewProvider {
    static var previews: some View {
        TapBarView(selectBtn: .constant(UpButton.alurm))
    }
}
