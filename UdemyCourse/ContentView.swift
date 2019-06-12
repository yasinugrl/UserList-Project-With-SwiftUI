//
//  ContentView.swift
//  UdemyCourse
//
//  Created by Yasin Ugurlu on 11.06.2019.
//  Copyright © 2019 Yasin Ugurlu. All rights reserved.
//

import SwiftUI

struct User {
    var id: Int
    let name, surname, image, city: String
}

let listData : [User] = [
    User(id: 0, name: "Yasin", surname: "Ugurlu", image: "1", city: "Istanbul"),
    User(id: 1, name: "Thomas", surname: "Mark", image: "2", city: "California"),
    User(id: 2, name: "Amelia", surname: "Lee", image: "3", city: "London"),
    User(id: 3, name: "Jack", surname: "Brown", image: "4", city: "Berlin"),
    User(id: 4, name: "Isla", surname: "Moris", image: "5", city: "San Francisco"),
    User(id: 5, name: "Emily", surname: "Moris", image: "6", city: "New York"),
]


struct ListSection : View {
    let user: User
    var body: some View {
        HStack(alignment: .center, spacing: 50) {
            Image(user.image).resizable().frame(width: 80, height: 80, alignment: .center).cornerRadius(40)
            VStack(alignment: .leading) {
                Text(user.name).font(.title)
                Text(user.surname)
            }
            Text(user.city)
            
        }
    }
}

struct ContentView : View {
    
    var body: some View {
        
        NavigationView {
            List(listData.identified(by: \.id)) { user in
                NavigationButton(destination: DetailPage(user: user)) {
                    ListSection(user: user)
                }
                
                } .navigationBarTitle(Text("Users List"))
        }
    }
}

//#if DEBUG
//struct ContentView_Previews : PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//#endif
