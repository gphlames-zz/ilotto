//
//  mainView.swift
//  lotto
//
//  Created by user on 06/05/2020.
//

import SwiftUI

struct mainView: View {
    @State var isActive = false
    let arrayOfNames = ["categoryA":"A","categoryB":"B","categoryC":"C","categoryD":"D"]
    
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(Array(arrayOfNames.keys).sorted(), id: \.self){ imagename in
                    ZStack(alignment: .center) {
                        
                        Image(imagename)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200, height: 300)
                        VStack(alignment: .leading, spacing: 1)
                        {
                            Text("Potential wins:")
                                .font(.body)
                            Text("Single winner:")
                                .font(.body)
                            Text("Bubble size:")
                                .font(.body)
                        }
                        .navigationBarTitle("ilottery")
                        
                    }
                    ZStack(alignment:.leading){
                        Rectangle()
                            .frame(height: 50)
                            .foregroundColor(.gray)
                            .opacity(0.5)
                        HStack {
                            Text("Category: \(arrayOfNames[imagename]!)")
                                .padding()
                            Spacer()
                            Button(action: {}){
                                Text("Buy")
                                    .padding()
                            }
                        }
                    }
                    
                }
            }
            .lineSpacing(10)
            .background(Color.white)
        }.edgesIgnoringSafeArea(.vertical)
        .navigationBarItems(trailing:
            NavigationLink(destination: LoginPage(), isActive:$isActive){
                Button(action: {isActive = true}){
                    Text("Sign up")
                }
            })
        
}

struct mainView_Previews: PreviewProvider {
        static var previews: some View {
            Group{
                mainView()
                    .previewDevice(PreviewDevice(rawValue: "iPhone 11 pro"))
            }
              
        }
    }
}
