//
//  SignUpView.swift
//  lotto
//
//  Created by user on 06/05/2020.
//

import SwiftUI
import UIKit

struct SignUpView: View{
    @ObservedObject var signupdetails = SignupDetails()
    var body: some View{
        NavigationView{
            VStack{
                Section{
                    Rectangle()
                        .foregroundColor(Color.blue)
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    TextField(" First Name", text: $signupdetails.firstname)
                        .frame(height: 50)
                        .background(Color.white)
                        .padding(.horizontal)
                    TextField(" Last Name", text: $signupdetails.lastname)
                        .frame(height: 50)
                        .background(Color.white)
                        .padding(.horizontal)
                    TextField(" Street Address", text: $signupdetails.streetAddress)
                        .frame(height: 50)
                        .background(Color.white)
                        .padding(.horizontal)
                    TextField(" City", text: $signupdetails.city)
                        .frame(height: 50)
                        .background(Color.white)
                        .padding(.horizontal)
                    TextField(" State", text: $signupdetails.state)
                        .frame(height: 50)
                        .background(Color.white)
                        .padding(.horizontal)
                    TextField(" Country", text: $signupdetails.Country)
                        .frame(height: 50)
                        .background(Color.white)
                        .padding(.horizontal)
                        .padding(.bottom)
                }
                Section{
                    Button("Sign Up", action: {})
                        .frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .border(Color.white, width: 2)
                }
                Spacer()
            }
            .background(Color.blue)
            .edgesIgnoringSafeArea(.all)
            
        }
    }
   
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
