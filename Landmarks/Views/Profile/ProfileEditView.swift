//
//  ProfileEditView.swift
//  Landmarks
//
//  Created by Samir on 07.07.2024.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct ProfileEditView: View {
    @Binding var isEditing: Bool
    @State private var userProfile = UserProfile(username: "", notificationsOn: false, seasonalPhotos: false, date: Date())

    var body: some View {
        Form {
            Section(header: Text("Username")) {
                TextField("Enter username", text: $userProfile.username)
            }

            Section(header: Text("Notifications")) {
                Toggle(isOn: $userProfile.notificationsOn) {
                    Text("Enable Notifications")
                }
            }

            Section(header: Text("Seasonal Photos")) {
                Toggle(isOn: $userProfile.seasonalPhotos) {
                    Text("Show Seasonal Photos")
                }
            }

            Section(header: Text("Date")) {
                DatePicker("Select Date", selection: $userProfile.date, displayedComponents: .date)
            }

            Button(action: {
                saveProfile()
                isEditing = false
            }) {
                Text("Save")
                    .frame(maxWidth: .infinity, alignment: .center)
            }
        }
        .navigationBarTitle("Edit Profile", displayMode: .inline)
    }

    func saveProfile() {
        // Your saving logic here
        print("Profile saved: \(userProfile)")
    }
}

struct ProfileEditView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditView(isEditing: .constant(true))
    }
}

