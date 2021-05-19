//
//  login.swift
//  lotto
//
//  Created by user on 06/05/2020.
//

import Foundation

class login: ObservableObject{
    @Published var username = ""
    @Published var Password = ""
    var loginIsValid: Bool = false
    
}
