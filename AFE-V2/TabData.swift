//
//  TabData.swift
//  AFE-V2
//
//  Created by apprenant65 on 18/05/2024.
//

import Foundation


struct Item:Identifiable {
    var id = UUID()
    var name: String
    var isValid: Bool
    var description : String
    var detail: String
}


let tableauCompetenceC1: [Item] = [
    Item(name: "C1.1", isValid: true, description: "Maquetter une application mobile", detail: "L'apprenant•e est capable de : - créer des maquettes d'interface graphique.es sur papier et sur un outil en ligne de maquettage (type Marvel) ou avec un support de présentation (type Keynote)"),
    Item(name: "C1.2", isValid: false, description: "Définir la liste de fonctionnalités de son application", detail: "L'apprenant•e est capable de : - définir une liste de fonctionnalités répondant à la problèmatique")
]

let tableauCompetenceC2: [Item] = [
    Item(name: "C2.1", isValid: true, description: "Exploiter l'IDE Xcode pour gérer son projet", detail: "L'apprenant•e est capable de : - démarrer le logiciel Xcode - créer un nouveau projet iOS - naviguer dans les fichiers de son projet - utiliser le simulateur pour démarrer son application"),
    Item(name: "C2.2", isValid: true, description: "Développer l'interface d'une application à un écran", detail: "L'apprenant•e est capable de : - ajouter des composants d'interface sur le storyboard principal - définir des contraintes de mise en page"),
    Item(name: "C2.3", isValid: true, description: "Développer l'interface d'une application multi écran en gérant la navigation", detail: "L'apprenant•e est capable de : - développer plusieurs écrans - développer le méchanisme de navigation entre les écrans"),
    Item(name: "C2.4", isValid: true, description: "Développer la logique d'une application mobile à l'aide du langage Swift et de la programmation orientée objet", detail: "L'apprenant•e est capable de : - Utiliser les bases du langage Swift (variables, fonctions, boucles, contrôle de flux, collections) - Créer un modèle de classe à partir d'objets réels - Utiliser les design patterns orientés objet, comme l'héritage, pour mieux organiser le structure du code et améliorer la réutilisation du code - Utiliser les ViewController pour réagir aux actions de l'utilisateurs"),
    Item(name: "C2.5", isValid: false, description: "Respecter les normes d'interface graphique (cf Human Interface Guidelines)", detail: "L'apprenant•e est capable de : - Trouver les règles d'utilisation des composants graphiques dans la documentation officielle Apple - Mettre en pratique les règles d'utilisation dans son application")
]

let tableauCompetenceC3: [Item] = [
    Item(name: "C3.1", isValid: false, description: "Trouver des ressources pour supporter le développement", detail: ""),
    Item(name: "C3.2", isValid: true, description: "Travailler en équipe", detail: ""),
    Item(name: "C3.3", isValid: true, description: "Organiser le travail d'équipe", detail: ""),
    Item(name: "C3.4", isValid: true, description: "Concevoir un support de présentation clair de son application mobile", detail: ""),
    Item(name: "C3.5", isValid: false, description: "S'exprimer en public pour présenter son travail", detail: "")
]
