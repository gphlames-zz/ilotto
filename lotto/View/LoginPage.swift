//
//  SwiftUIView.swift
//  lotto
//
//  Created by user on 06/05/2020.
//

import SwiftUI

struct LoginPage: View {
   @ObservedObject var logindetails = login()
    var body: some View {
        NavigationView{
            VStack{
                Section{
                    Rectangle()
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    TextField(" Username", text: $logindetails.username)
                        .frame(height: 50)
                        .background(Color.white)
                        .padding(.horizontal)
                    TextField(" Password", text: $logindetails.Password)
                        .frame(height: 50)
                        .background(Color.white)
                        .padding(.horizontal)
                }
                Section{
                    Button(" Don't have an account? Sign up ", action: {})
                        .foregroundColor(.white)
                        .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Button("Sign in", action: {})
                        .frame(width: 130, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(7)
                        .border(Color.white, width: 3)
                        .background(Color.white)
                }
                Spacer()
            }.background(Color.blue)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
