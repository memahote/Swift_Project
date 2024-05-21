//
//  ProfilView.swift
//  AFE-V2
//
//  Created by apprenant65 on 19/05/2024.
//

import SwiftUI

struct ProfilView: View {
    @Binding var isShowing: Bool
    @State private var userMail : String = "johndoe@secret-mail.com"
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (alignment: .leading){
                    ZStack {
                        Rectangle()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .frame(height: 500)
                            .ignoresSafeArea()
                            .foregroundColor(.orange)
                        
                        VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                            HStack {
                                Spacer()
                                Button(action: {
                                        isShowing.toggle()
                                }) {
                                    Text("Fermer")
                                        .foregroundColor(.white)
                                        .padding(.horizontal)
                                        .background(Color.orange)
                                                            
                                }
                            }
                            .offset(y: -25)
                            
                            Image("profile")
                                .resizable()
                                .frame(width: 220, height: 220)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            Text("John John")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                            Text("36 ans")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                            Text(userMail)
                                .foregroundColor(.white)

                                
                        }
                        
                    }
                    
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Bio")
                            .font(.system(size: 20))
                            .foregroundColor(.orange)
                            .bold()
                        Text("Je suis un apprenant autodidacte avec une passion pour la programmation et la technologie")
                            .padding(.bottom)
                        
                        Text("Compétences")
                            .font(.system(size: 20))
                            .foregroundColor(.orange)
                            .bold()
                        
                        VStack (spacing: 10){
                            ForEach (1..<4) { index in
                                HStack(spacing: 10) {
                                    Image(systemName: "keyboard.fill")
                                    Text("Compétences - C\(index)")
                                                }
                            }
                        }
                                        
                        Text("Passions")
                            .font(.system(size: 20))
                            .foregroundColor(.orange)
                            .bold()
                        
                        VStack (alignment: .leading, spacing: 10){
                            
                            HStack{
                                Image(systemName: "keyboard.fill")
                                Text("Handisport")
                                    }
                            HStack {
                                Image(systemName: "keyboard.fill")
                                Text("Cinéma")
                                    }
                            HStack {
                                Image(systemName: "keyboard.fill")
                                Text("Lecture")
                                            
                            }
                        }
                    }
                    
                    .padding(.horizontal)
                    .padding(.top)
                    
                }
                
                
            }
            .scrollIndicators(.hidden) 
            
        }
        
    }
}

#Preview {
    ProfilView(isShowing: .constant(false))
}
