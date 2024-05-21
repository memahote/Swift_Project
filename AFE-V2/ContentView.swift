//
//  ContentView.swift
//  AFE-V2
//
//  Created by apprenant65 on 19/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State var showModal = false
    
    func calculerPourcentageValide(competences: [Item]) -> Double {
        let total = competences.count
        let valides = competences.filter { $0.isValid }.count
        return total > 0 ? (Double(valides) / Double(total)) * 100 : 0
    }
    
    func calculerPourcentageTotal() -> Double {
            let toutesLesCompetences = tableauCompetenceC1 + tableauCompetenceC2 + tableauCompetenceC3
            return calculerPourcentageValide(competences: toutesLesCompetences)
        }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (alignment: .leading, spacing: 10){
                    
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(.orange)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .frame(height: 250)
                        
                        VStack(spacing:10){
                            
                            Text("Progression Globale")
                                .font(.system(size: 35))
                                .foregroundColor(.white)
                            Text("\(Int(calculerPourcentageTotal()))%")
                                .font(.system(size: 150, weight: .heavy))
                                .foregroundColor(.white)
                        }
                        
                    }
                    
                    //1er bloc de competences
                    VStack (alignment: .leading ){
                        Text("Compétences - C1 - \(Int(calculerPourcentageValide(competences: tableauCompetenceC1)))%")
                            .font(.system(size: 20))
                            .bold()
                            .padding(.bottom)
                        ForEach (tableauCompetenceC1) { Item in
                            VStack (alignment: .leading, spacing: 10) {
                                HStack{
                                    Text("\(Item.name) :")
                                    Image(systemName: "checkmark.seal.fill")
                                        .foregroundColor(Item.isValid ? .blue : .red)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                    
                //deuxieme bloc de competences
                    VStack (alignment: .leading){
                        Text("Compétences - C2 - \(Int(calculerPourcentageValide(competences: tableauCompetenceC2)))%")
                            .font(.system(size: 20))
                            .bold()
                            .padding(.bottom)
                        ForEach (tableauCompetenceC2) { Item in
                            VStack (alignment: .leading, spacing: 10) {
                                HStack{
                                    Text("\(Item.name) :")
                                    Image(systemName: "checkmark.seal.fill")
                                        .foregroundColor(Item.isValid ? .blue : .red)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                //troisieme bloc de competence
                    VStack (alignment: .leading){
                        Text("Compétences - C3 - \(Int(calculerPourcentageValide(competences: tableauCompetenceC3)))%")
                            .font(.system(size: 20))
                            .bold()
                            .padding(.bottom)
                        ForEach (tableauCompetenceC3) { Item in
                            VStack (alignment: .leading, spacing: 10) {
                                HStack{
                                    Text("\(Item.name) :")
                                    Image(systemName: "checkmark.seal.fill")
                                        .foregroundColor(Item.isValid ? .blue : .red)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                    
                }
                
            }
            .navigationTitle("Tableau de bord")
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
        
        
        
    }
}

#Preview {
    ContentView()
}
