//
//  AllData.swift
//  Task_11
//
//  Created by MacBook Pro on 07.10.21.
//

import Foundation

class AllData {
    
    static var instance: AllData = AllData()
    private init() {}
    
    
    
    func carsBrandsList()->[String]{
    var carsBrandsSet :Set<String> = []
          carsList.forEach{car in
                carsBrandsSet.insert(car.brand ?? "other")
           }
        return carsBrandsSet.sorted()
    }
    
    
    func carsListBy(brand:String?)->[Cars]{
        
        return carsList.filter({$0.brand == brand})
    }
    
    let carsList = [
        
        Cars(brand: "Alfa Romeo", model: "164", img: ""),
        Cars(brand: "Alfa Romeo", model: "8C Competizione", img: ""),
        Cars(brand: "Alfa Romeo", model: "GTV-6", img: ""),
        Cars(brand: "Alfa Romeo", model: "Milano", img: ""),
        Cars(brand: "Alfa Romeo", model: "Spider", img: ""),
        Cars(brand: "Aston Martin", model: "DB7", img: ""),
        Cars(brand: "Aston Martin", model: "DB9", img: ""),
        Cars(brand: "Aston Martin", model: "DBS", img: ""),
        Cars(brand: "Aston Martin", model: "Lagonda", img: ""),
        Cars(brand: "Aston Martin", model: "Rapide", img: ""),
        Cars(brand: "Aston Martin", model: "V12 Vantage", img: ""),
        Cars(brand: "Aston Martin", model: "Vanquish", img: ""),
        Cars(brand: "Aston Martin", model: "Virage", img: ""),
        Cars(brand: "BMW", model: "535i Gran Turismo", img: ""),
        Cars(brand: "BMW", model: "ActiveHybrid 7", img: ""),
        Cars(brand: "BMW", model: "Alpina B7", img: ""),
        Cars(brand: "BMW", model: "L7", img: ""),
        Cars(brand: "BMW", model: "ActiveHybrid X6", img: ""),
        Cars(brand: "BMW", model: "X3", img: ""),
        Cars(brand: "BMW", model: "Z8", img: ""),
        Cars(brand: "BMW", model: "X5", img: ""),
        Cars(brand: "BMW", model: "Z3", img: ""),
        Cars(brand: "BMW", model: "M Roadster", img: ""),
        Cars(brand: "BMW", model: "M Coupe", img: ""),
        Cars(brand: "Chevrolet", model: "Avalanche", img: ""),
        Cars(brand: "Chevrolet", model: "Cruze", img: ""),
        Cars(brand: "Chevrolet", model: "Captiva Sport", img: ""),
        Cars(brand: "Chevrolet", model: "Equinox", img: ""),
        Cars(brand: "Chevrolet", model: "TrailBlazer EXT", img: ""),
        Cars(brand: "Chevrolet", model: "Traverse", img: ""),
        Cars(brand: "Daewoo", model: "Lanos", img: ""),
        Cars(brand: "Daewoo", model: "Leganza", img: ""),
        Cars(brand: "Daewoo", model: "Nubira", img: ""),
        Cars(brand: "Daihatsu", model: "Charade", img: ""),
        Cars(brand: "Daihatsu", model: "Rocky", img: ""),
        Cars(brand: "Dodge", model: "Diplomat", img: ""),
        Cars(brand: "Dodge", model: "Avenger", img: ""),
        Cars(brand: "Dodge", model: "Challenger", img: ""),
        Cars(brand: "Dodge", model: "Charger", img: ""),
        Cars(brand: "Dodge", model: "Nitro", img: ""),
        Cars(brand: "Dodge", model: "Raider", img: ""),
        Cars(brand: "Dodge", model: "Viper", img: ""),
        Cars(brand: "Ferrari", model: "Testarossa", img: ""),
        Cars(brand: "Ferrari", model: "Mondial", img: ""),
        Cars(brand: "Ferrari", model: "Enzo", img: ""),
        Cars(brand: "Ferrari", model: "California", img: ""),
        Cars(brand: "Ferrari", model: "456M GT", img: ""),
        Cars(brand: "Ferrari", model: "458 Italia", img: ""),
        Cars(brand: "Ford", model: "ZX2 Escort", img: ""),
        Cars(brand: "Ford", model: "Windstar", img: ""),
        Cars(brand: "Ford", model: "Tempo", img: ""),
        Cars(brand: "Ford", model: "Taurus X", img: ""),
        Cars(brand: "Ford", model: "Thunderbird", img: ""),
        Cars(brand: "Ford", model: "Mustang", img: ""),
        Cars(brand: "Lamborghini", model: "Aventador", img: ""),
        Cars(brand: "Lamborghini", model: "Countach", img: ""),
        Cars(brand: "Lamborghini", model: "Diablo", img: ""),
        Cars(brand: "Lamborghini", model: "Gallardo", img: ""),
        Cars(brand: "Lamborghini", model: "Jalpa", img: ""),
        Cars(brand: "Lamborghini", model: "LM002", img: ""),
        Cars(brand: "Lamborghini", model: "Murcielago", img: ""),
        Cars(brand: "Maserati", model: "Coupe", img: ""),
        Cars(brand: "Maserati", model: "GranSport", img: ""),
        Cars(brand: "Maserati", model: "GranTurismo", img: ""),
        Cars(brand: "Maserati", model: "Quattroporte", img: ""),
        Cars(brand: "Maserati", model: "Spyder", img: ""),
        Cars(brand: "Maybach", model: "57", img: ""),
        Cars(brand: "Maybach", model: "57", img: ""),
        Cars(brand: "Mercedes-Benz", model: "ML450 Hybrid", img: ""),
        Cars(brand: "Mercedes-Benz", model: "R320 Bluetec", img: ""),
        Cars(brand: "Mercedes-Benz", model: "R350 Bluetec", img: ""),
        Cars(brand: "Mercedes-Benz", model: "R63 AMG", img: ""),
        Cars(brand: "Mercedes-Benz", model: "560SEL", img: ""),
        Cars(brand: "Mercedes-Benz", model: "S350 Bluetec", img: ""),
        Cars(brand: "Mercedes-Benz", model: "S400 Hybrid", img: ""),
        Cars(brand: "Mercedes-Benz", model: "SLK55 AMG", img: ""),
        Cars(brand: "Mercedes-Benz", model: "SLK32 AMG", img: ""),
        Cars(brand: "Mercedes-Benz", model: "SL65 AMG", img: ""),
        Cars(brand: "Mercedes-Benz", model: "Sprinter", img: ""),
        Cars(brand: "MINI", model: "Cooper S Countryman", img: ""),
        Cars(brand: "MINI", model: "Cooper S Roadster", img: ""),
        Cars(brand: "MINI", model: "Cooper Roadster", img: ""),
        Cars(brand: "MINI", model: "Cooper S Coupe", img: ""),
        Cars(brand: "MINI", model: "Cooper Clubman", img: ""),
        Cars(brand: "MINI", model: "Cooper S Clubman", img: ""),
        Cars(brand: "Porsche", model: "924", img: ""),
        Cars(brand: "Porsche", model: "928", img: ""),
        Cars(brand: "Porsche", model: "944", img: ""),
        Cars(brand: "Porsche", model: "968", img: ""),
        Cars(brand: "Porsche", model: "Boxster", img: ""),
        Cars(brand: "Porsche", model: "Carrera GT", img: ""),
        Cars(brand: "Porsche", model: "Cayenne", img: ""),
        Cars(brand: "Porsche", model: "Cayman", img: ""),
        Cars(brand: "Porsche", model: "Panamera", img: ""),
        Cars(brand: "Tesla", model: "Roadster", img: ""),
        Cars(brand: "Tesla", model: "Model S", img: ""),
        ]
    
    
}
