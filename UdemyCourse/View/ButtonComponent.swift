//
//  Button.swift
//  UdemyCourse
//
//  Created by Yasin Ugurlu on 11.06.2019.
//  Copyright © 2019 Yasin Ugurlu. All rights reserved.
//

import SwiftUI

struct ButtonComponent : View {
    let title: String
    var clickAction: (() -> Void)?
    var body: some View {
        Button(action: {
            self.clickAction?()
        }) {
            Text(title).color(.white).frame(width: 200, height: 50)
            }.background(Color.red)
            .cornerRadius(20).padding(.top, 20)
    }
}

