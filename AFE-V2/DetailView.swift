//
//  DetailView.swift
//  AFE-V2
//
//  Created by apprenant65 on 20/05/2024.
//

import SwiftUI

struct DetailView: View {
    var description: String
    var detail : String
    
    var body: some View {
        
        VStack {
            Spacer()
            Text(description)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(.horizontal)
            Spacer()
            Text(detail)
                .foregroundColor(.white)
                .padding(.horizontal)
            Spacer()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .ignoresSafeArea()
        .background(Color.orange)
    }
}

#Preview {
    DetailView(description: "Maquetter", detail: "exemple de detail")
}
