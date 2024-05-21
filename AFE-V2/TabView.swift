//
//  TabView.swift
//  AFE-V2
//
//  Created by apprenant65 on 19/05/2024.
//

import SwiftUI

struct mainTabView: View {
    @State private var selectedTab = 0
     var body: some View {
        VStack {
            TabView{
                ContentView()
                    .tabItem {
                        Label("Tableau de Bord", systemImage: "chart.bar.xaxis")
                    }
                
                CompetencesView()
                    .tabItem {
                        Label("Compétences", systemImage: "graduationcap.fill")
                            
                    }
            }
            .accentColor(selectedTab == 0 ? .blue : .red)
        }
    }
}

#Preview {
    mainTabView()
}
