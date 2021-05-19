//
//  ContentView.swift
//  lotto
//
//  Created by user on 06/05/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            BuyView()
        }.navigationBarTitle("ilottery")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
