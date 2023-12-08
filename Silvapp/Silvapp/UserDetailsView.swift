//
//  UserDetailsView.swift
//  Silvapp
//
//  Created by Silvana Tekia on 08/12/2023.
//

import Foundation
import SwiftUI


struct UserDetailsView: View {
    let user: User

    var body: some View {
        List {
            Text("User ID: \(user.userId)")
            Text("Name: \(user.userForename) \(user.userSurname)")
            Text("Email: \(user.userEmail)")
            Text("Mobile: \(user.userMobile)")
        }
        .navigationBarTitle("User Details", displayMode: .inline)
    }
}
