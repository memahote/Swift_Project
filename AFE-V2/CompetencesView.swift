//
//  CompetencesView.swift
//  AFE-V2
//
//  Created by apprenant65 on 20/05/2024.
//

import SwiftUI



struct CompetencesView: View {
    @State var showModal = false
    
    var body: some View {
            NavigationView {
                List {
                    Section(header: Text("COMPÉTENCES - C1")
                        .foregroundColor(.orange)
                        .font(.system(size: 22))
                        .bold()
                        
                    ) {
                        Text("Conception d'une app mobile à partir d'une problématique")
                            .foregroundColor(.gray)
                            .font(.system(size: 18))
                            .padding(.vertical, -10)
                            .listRowBackground(Color.clear)
                            .listRowSeparator(.hidden)
                            .padding(.bottom)
                        
                        ForEach(tableauCompetenceC1, id: \.id) { item in
                            NavigationLink(destination: DetailView(description:item.description,detail: item.detail)) {
                                Text(item.description)
                            }
                        }
                       
                    }

                    Section(header: Text("COMPÉTENCES - C2")
                        .foregroundColor(.orange)
                        .font(.system(size: 22))
                        .bold()
                        
                    ) {
                        Text("Développement d'une application mobile iOS")
                            .foregroundColor(.gray)
                            .font(.system(size: 18))
                            .padding(.vertical, -10)
                            .listRowBackground(Color.clear)
                            .listRowSeparator(.hidden)
                            .padding(.bottom)
                        
                        ForEach(tableauCompetenceC2, id: \.id) { item in
                            NavigationLink(destination: DetailView(description:item.description, detail: item.detail))
                            {
                                Text(item.description)
                            }
                            
                        }
                       
                    }

                    Section(header: Text("COMPÉTENCES - C3")
                        .foregroundColor(.orange)
                        .font(.system(size: 22))
                        .bold()
                        
                    ) {
                        Text("Gestion de projet, qualité et collaboration")
                            .foregroundColor(.gray)
                            .font(.system(size: 18))
                            .padding(.vertical, -10)
                            .listRowBackground(Color.clear)
                            .listRowSeparator(.hidden)
                            .padding(.bottom)
                        
                        ForEach(tableauCompetenceC3, id: \.id) { item in
                            NavigationLink(destination: DetailView(description:item.description,detail: item.detail)) {
                                Text(item.description)
                            }
                            
                        }
                        
                    }
                }
                .scrollIndicators(.hidden)
                .navigationTitle("Compétences à valider")
                .navigationBarItems(trailing:
                                Button{
                               showModal.toggle()
                                
                }label: {
                                    Image(systemName:"person.fill")
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.black)
                                }
                    .sheet(isPresented: $showModal, content: {
                        ProfilView(isShowing: $showModal)
                    })
                    
                )
            }
            .accentColor(.white)
        }
    }

#Preview {
    CompetencesView()
}
