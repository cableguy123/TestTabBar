//
//  CallView.swift
//  TestTabBar
//
//  Created by 임석현 on R 5/06/25.
//

import SwiftUI

struct CallView: View {
    @State private var searchText = ""
    @State var showSheet = false
        @State var linkActive = false
        
        var binding: Binding<Bool> {
            .init(get: {
                showSheet && !linkActive
            }, set: {
                showSheet = $0
            })
        }

        var body: some View {
            NavigationView {
                VStack {
                    NavigationLink(
                        destination: DetailView(showSheet: $showSheet),
                        isActive: $linkActive
                    ) {
                        Text("Go to...")
                    }
                    Button("Open sheet") {
                        self.showSheet.toggle()
                    }
                }
            }
            .sheet(isPresented: binding) {
                Text("Hello")
            }
        }
    }

    struct DetailView: View {
        @Binding var showSheet: Bool

        var body: some View {
            Button("Open sheet") {
                self.showSheet.toggle()
            }
        }
    }


struct CallView_Previews: PreviewProvider {
    static var previews: some View {
        CallView()
    }
}
