//
//  SignUpDetails.swift
//  lotto
//
//  Created by user on 06/05/2020.
//

import Foundation

class SignupDetails: ObservableObject{
    @Published var firstname = ""
    @Published var lastname = ""
    @Published var streetAddress = ""
    @Published var city = ""
    @Published var state = ""
    @Published var Country = ""
    var ZipCode = ""
    var isvalid: Bool{
        get{
            if firstname.isEmpty || lastname.isEmpty || streetAddress.isEmpty || city.isEmpty || state.isEmpty || Country.isEmpty{
                return false
            }
           return true
        }
    }
}
