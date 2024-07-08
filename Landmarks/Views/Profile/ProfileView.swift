//
//  ProfileView.swift
//  Landmarks
//
//  Created by Samir on 07.07.2024.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // Profile display components
            Text("Username: John Doe")
            Text("Notifications: Enabled")
            Text("Seasonal Photos: Enabled")
            Text("Date: 2024-01-01")
            Spacer()
        }
        .navigationBarTitle("Profile", displayMode: .inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

