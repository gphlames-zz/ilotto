//
//  BuyView.swift
//  lotto
//
//  Created by user on 06/05/2020.
//

import SwiftUI
import Combine

struct BuyView: View {
    @ObservedObject var datas = data()
    let layout = [GridItem(.adaptive(minimum: 40))]
    
    var body: some View {
        VStack{
            Section{
                Form{
                    Picker("Pick the number of lots", selection: $datas.chosen) {
                        ForEach(0..<data.numberofitems.count){
                            Text(data.numberofitems[$0])
                        }
                    }
                    Toggle(isOn: $datas.computergen, label: {
                        Text("Allow ilotto generate your lots")
                        
                    }).onChange(of: datas.computergen, perform: { value in
                        datas.inputkey = !datas.computergen
                    })
                    Toggle("Choose your own numbers", isOn: $datas.inputkey).onChange(of: datas.inputkey, perform: { value in
                        datas.computergen = !datas.inputkey
                    })
                }.foregroundColor(.blue)
            }
            Section{
                VStack{
                    Text("Your Lot:\(datas.keystring)")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 40,alignment: .leading)
                        .font(.system(size: 20))
                        .foregroundColor(.blue)
                        //.padding(.horizontal)
                    ScrollView{
                        LazyVGrid(columns:layout,spacing: 3){
                            ForEach(data.arrayOfVariables, id: \.self)
                            { data in
                                Button(action: {
                                    datas.keystring += data
                                }, label: {
                                    Image(systemName: "\(data).circle")
                                        .resizable()
                                        .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .clipShape(Circle())
                                })
                                //keypadview(letter: listfrom)
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            .padding(.horizontal)
            .disabled(datas.inputkey)
            Spacer()
        }
    }
}

struct BuyView_Previews: PreviewProvider {
    static var previews: some View {
        BuyView()
    }
}
