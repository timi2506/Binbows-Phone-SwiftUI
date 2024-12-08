//
//  ContentView.swift
//  Binbows Phone
//
//  Created by Tim Schuchardt on 08.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    var body: some View {
        ZStack {
            TabView (selection: $selectedTab) {
                Tab1View()
                .tag(0)
                Tab2View()
                .tag(1)
                Tab3View()
                .tag(2)
                Tab4View()
                .tag(3)
                Tab5View()
                .tag(4)
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            
            ScrollView(.horizontal) {
                HStack(spacing: 15) {
                    Text("Tab 1")
                        .foregroundColor(selectedTab == 0 ? .blue : .primary)
                        .onTapGesture {
                            selectedTab = 0
                        }
                        .font(.custom("light", size: 50))
                    Text("Tab 2")
                        .foregroundColor(selectedTab == 1 ? .blue : .primary)
                        .onTapGesture {
                            selectedTab = 1
                        }
                        .font(.custom("light", size: 50))
                    Text("Tab 3")
                        .foregroundColor(selectedTab == 2 ? .blue : .primary)
                        .onTapGesture {
                            selectedTab = 2
                        }
                        .font(.custom("light", size: 50))
                    Text("Tab 4")
                        .foregroundColor(selectedTab == 3 ? .blue : .primary)
                        .onTapGesture {
                            selectedTab = 3
                        }
                        .font(.custom("light", size: 50))
                    Text("Tab 5")
                        .foregroundColor(selectedTab == 4 ? .blue : .primary)
                        .onTapGesture {
                            selectedTab = 4
                        }
                        .font(.custom("light", size: 50))
                }
            }
            .scrollIndicators(.hidden)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
        }
    }
}

