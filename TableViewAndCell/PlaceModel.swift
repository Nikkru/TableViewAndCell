//
//  PlaceModel.swift
//  TableViewAndCell
//
//  Created by Nikolai Krusser on 11.02.2021.
//

import RealmSwift

class Place: Object {
    
   @objc dynamic var name = ""
    @objc dynamic var type: String?
    @objc dynamic var location: String?
    @objc dynamic var image: UIImage?
//    @objc dynamic var restaurantImage: String?
    
   static let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "Love&Life", "Шок", "Бочка"
    ]
    
   static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, type: "ресторан", location: "Уфа", image: nil, restaurantImage: place))
        }
        
        return places
    }
}
