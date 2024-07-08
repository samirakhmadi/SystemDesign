/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view showing featured landmarks above a list of all of the landmarks.
*/

import SwiftUI



struct ContentView: View {
    @State private var isEditing = false
    
    var body: some View {
        NavigationView {
            VStack {
                if isEditing {
                    ProfileEditView(isEditing: $isEditing)
                } else {
                    ProfileView()
                }
            }
            .navigationBarTitle("Profile", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                isEditing.toggle()
            }) {
                Text(isEditing ? "Cancel" : "Edit")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

