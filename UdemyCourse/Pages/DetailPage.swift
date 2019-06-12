//
//  DetailPage.swift
//  UdemyCourse
//
//  Created by Yasin Ugurlu on 12.06.2019.
//  Copyright © 2019 Yasin Ugurlu. All rights reserved.
//

import SwiftUI

struct DetailPage : View {
    let user: User
    var body: some View {
        VStack(alignment: .leading) {
            Image(user.image)
            .resizable()
                .frame(width: 200, height: 150)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding(10)
            
            Text(user.name).font(.title)
            
            HStack {
                Text(user.surname).font(.subheadline)
                    Spacer()
                Text(user.city).font(.subheadline)
            }
        }.padding()
    }
}
