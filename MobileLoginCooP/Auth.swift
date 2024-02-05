import SwiftUI
import Combine

struct Auth: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        BackgroundView(content:
                        VStack {
            VStack {
                WelcomeImageTextView()
            }
            Text("Insert your credentias").foregroundColor(.white).padding(.top, 98.5)
            BaseInputView(text: $username, paceholder: "Username", leftIconName: "User", rightIconName: "" )
            BaseInputView(text: $password, paceholder: "Password", leftIconName: "Paddlock", rightIconName: "visibiity")
            Button("Login", action: {
                requestPost(username: username, password: password, completion: { data in
                    print("completed: ", data)
                })
            })
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(hex: "#80BA27"))
                .foregroundColor(.white)
                .font(.subheadline)
                .cornerRadius(5)
                .padding(.horizontal)
        })
                        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Auth()
    }
}
