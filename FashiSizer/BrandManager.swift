//
//  BrandManager.swift
//  FashiSizer
//
//  Created by Erdem Tas on 31.05.2021.
//

import Foundation

struct BrandManager {
    
    var brandViewData = ["Crocs","Skechers","Under Armour","New Balance","Jjill","The North Face","Clarks","Reebok","Sanuk","Avenue","G.H. Bass","Nine West","Timberland","Merrell","Jimmy Choo","Hotter","Tory Burch","Charlotte Russe","Cavenders","Gucci","Sole Society","DrysDales","Daniel Green","Brooks Running","Newton Running","Celine","Johnston & Murphy","Stride Rite","Wolverine","Drew Shoe","RockPort","Steve Madden","Vans","Ecco","Sas Shoes","Florsheim","Vionic Shoes","Jambu","Foot Joy","Bogs","Rods","Danner","Adidas","U.S Polo","Saucony","Camel","Keilys","Okabashi","Birkenstock","Keen","CAT","Toms","K-Swiss","Dolce Vita","Stacy Adams","Accessorize","Hickies","Nike","Dockers","Caleres","Asics","Air Jordan","Converse","Puma","Bostonian","LeBron","Testoni","Berluti","Tommy Hilfiger","Lacoste","Fred Perry","Lee Cooper","Fila","Columbia","Jack Wolfskin"]
    
    var sizeViewData = [String]()
    
    
    
    func getBrand(_ brand:String,_ shoeSize : Double) -> Double {
        
        switch brand {
        case "Adidas":
            return Double(shoeSize)
        case "Crocs":
            return Double(shoeSize)
        case "Skechers":
            return Double(shoeSize)
        case "Under Armour":
            return Double(shoeSize)
        case "New Balance":
            return Double(shoeSize) + 1.5
        case "Jjill":
            return Double(shoeSize) + 1.5
        case "The North Face":
            return Double(shoeSize) + 1.5
        case "Clarks":
            return Double(shoeSize) + 1.5
        case "Reebok":
            return Double(shoeSize) + 1.5
        case "Sanuk":
            return Double(shoeSize) + 1.5
        case "Avenue":
            return Double(shoeSize) + 1.5
        case "G.H. Bass":
            return Double(shoeSize) + 1.5
        case "Nine West":
            return Double(shoeSize) + 1.5
        case "Timberland":
            return Double(shoeSize) + 1.5
        case "Merrell":
            return Double(shoeSize) + 1.5
        case "Jimmy Choo":
            return Double(shoeSize) + 1.5
        case "Hotter":
            return Double(shoeSize) + 1.5
        case "Tory Burch":
            return Double(shoeSize) + 1.5
        case "Charlotte Russe":
            return Double(shoeSize) + 1.5
        case "Cavenders":
            return Double(shoeSize) + 1.5
        case "Gucci":
            return Double(shoeSize) + 1.5
        case "Sole Society":
            return Double(shoeSize) + 1.5
        case "DrysDales":
            return Double(shoeSize) + 1.5
        case "Daniel Green":
            return Double(shoeSize) + 1.5
        case "Brooks Running":
            return Double(shoeSize) + 1.5
        case "Newton Running":
            return Double(shoeSize) + 1.5
        case "Celine":
            return Double(shoeSize) + 1.5
        case "Johnston & Murphy":
            return Double(shoeSize) + 1.5
        case "Stride Rite":
            return Double(shoeSize) + 1.5
        case "Wolverine":
            return Double(shoeSize) + 1.5
        case "Drew Shoe":
            return Double(shoeSize) + 1.5
        case "RockPort":
            return Double(shoeSize) + 1.5
        case "Steve Madden":
            return Double(shoeSize) + 1.5
        case "Vans":
            return Double(shoeSize) + 1.5
        case "Ecco":
            return Double(shoeSize) + 1.5
        case "Sas Shoes":
            return Double(shoeSize) + 1.5
        case "Florsheim":
            return Double(shoeSize) + 1.5
        case "Vionic Shoes":
            return Double(shoeSize) + 1.5
        case "Jambu":
            return Double(shoeSize) + 1.5
        case "Foot Joy":
            return Double(shoeSize) + 1.5
        case "Bogs":
            return Double(shoeSize) + 1.5
        case "Rods":
            return Double(shoeSize) + 1.5
        case "Danner":
            return Double(shoeSize) + 1.5
        case "U.S Polo":
            return Double(shoeSize) + 1.5
        case "Saucony":
            return Double(shoeSize) + 1.5
        case "Camel":
            return Double(shoeSize) + 1.5
        case "Keilys":
            return Double(shoeSize) + 1.5
        case "Okabashi":
            return Double(shoeSize) + 1.5
        case "Birkenstock":
            return Double(shoeSize) + 1.5
        case "Keen":
            return Double(shoeSize) + 1.5
        case "CAT":
            return Double(shoeSize) + 1.5
        case "Toms":
            return Double(shoeSize) + 1.5
        case "K-Swiss":
            return Double(shoeSize) + 1.5
        case "Dolce Vita":
            return Double(shoeSize) + 1.5
        case "Stacy Adams":
            return Double(shoeSize) + 1.5
        case "Acessorize":
            return Double(shoeSize) + 1.5
        case "Hickies":
            return Double(shoeSize) + 1.5
        case "Nike":
            return Double(shoeSize) + 1.5
        case "Dockers":
            return Double(shoeSize) + 1.5
        case "Caleres":
            return Double(shoeSize) + 1.5
        case "Asics":
            return Double(shoeSize) + 1.5
        case "Air Jordan":
            return Double(shoeSize) + 1.5
        case "Converse":
            return Double(shoeSize) + 1.5
        case "Bostonian":
            return Double(shoeSize) + 1.5
        case "Puma":
            return Double(shoeSize) + 1.5
        case "LeBron":
            return Double(shoeSize) + 1.5
        case "Testoni":
            return Double(shoeSize) + 1.5
        case "Berluti":
            return Double(shoeSize) + 1.5
        case "Tommy Hilfiger":
            return Double(shoeSize) + 1.5
        case "Lacoste":
            return Double(shoeSize) + 1.5
        case "Fred Perry":
            return Double(shoeSize) + 1.5
        case "Lee Cooper":
            return Double(shoeSize) + 1.5
        case "Fila":
            return Double(shoeSize) + 1.5
        case "Columbia":
            return Double(shoeSize) + 1.5
        case "Jack Wolfskin":
            return Double(shoeSize) + 1.5
        default:
            return Double(shoeSize) + 0
        }
    }
}
