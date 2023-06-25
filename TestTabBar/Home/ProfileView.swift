//
//  ProfileView.swift
//  TestTabBar
//
//  Created by 임석현 on R 5/06/25.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var searchText = ""
    @State private var profileText = "MyProfile Text"
    var body: some View {
        VStack {
            NavigationStack {
                Text("\(searchText)")
                
            }
            .searchable(text: $searchText,prompt: "Megumi")
            .offset(x:-2.0,y:-125.0)
            HStack {
                Text("임석현")
                    .padding()
                    .bold()
                    .font(.system(size:25))
                    .opacity(0.6)
                    .offset(x:-2.0,y:-300.0)
                Text("MyProfile Text")
                    .opacity(0.4)
                    .padding(2)
                    .bold()
                    .offset(x:-93.0,y:-277.0)
                Spacer()
                Image("Sampleing.jpg")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
                    .clipped()
                    .padding()
                    .offset(x:10.0,y:-295.0)
            }
        }
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
