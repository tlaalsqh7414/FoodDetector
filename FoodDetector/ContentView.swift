//
//  ContentView.swift
//  FoodDetector
//
//  Created by 강다연 on 2021/10/06.
//

import SwiftUI

let storedUsername = "20161557"
let storedPassword = "abcabc"

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    var body: some View {
        NavigationView{
        VStack {
            TitleText()
        
            HStack{
                VStack{
                    UsernameTextField(username: $username)
                    PasswordSecureField(password: $password)
                } // End VStack
                .padding()
                
                NavigationLink(
                    destination: TabDesignView(),
                    isActive: .constant(self.authenticationDidSucceed == true),
                    label: {
                        Button(action: {
                            if self.username == storedUsername && self.password == storedPassword{
                                self.authenticationDidSucceed = true
                            } else {
                                
                                self.authenticationDidFail = true
                            }
                        }) {
                            LoginButtonContent()
                        }
                    })
            } // End HStack
            
            if authenticationDidFail {
                Text("Information not correct. Try Again.")
                    .offset(y: -10)
                    .foregroundColor(.red)
            } // End authenticationDidFail
            
            HStack{
                NavigationLink(destination: SignupView()){
                    SmallButton1()
                }
                SmallButton2()
            } // End HStack
            .navigationBarHidden(true)
        } // End VStack
        .padding()

        if authenticationDidSucceed {
            Text("Login succeeded!")
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct TitleText: View {
    var body: some View {
        Text("Food Detector!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.body)
            .foregroundColor(.white)
            .padding()
            .frame(width: 90, height:50)
            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
            .cornerRadius(20.0)
    }
}

struct UsernameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureField: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct SmallButton1: View {
    var body: some View {
        Text("회원가입")
            .font(.footnote)
            .foregroundColor(.white)
            .padding()
            .frame(height:30)
            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
            .cornerRadius(11.0)
    }
}

struct SmallButton2: View {
    var body: some View {
        Text("아이디/비밀번호 찾기")
            .font(.footnote)
            .foregroundColor(.white)
            .padding()
            .frame(height:30)
            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
            .cornerRadius(11.0)
    }
}
