//
//  Data.swift
//  lotto
//
//  Created by user on 06/05/2020.
//

import Foundation
import Combine

class data: ObservableObject{
    
   static let arrayOfVariables = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9"]
    static let numberofitems = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"]
    let numberarray = ["0","1","2","3","4","5","6","7","8","9"]
    @Published var keystring: String = ""
    @Published var inputkey: Bool = false
    @Published var computergen: Bool = true
    @Published var chosen = 0
    @Published var keystringbool: Bool = false
    var choice: Bool{
        get{
            if computergen == true{
                inputkey = false
                return false
            }else{
                inputkey = true
            }
            return true
        }
    }
    
    func generateNumber()-> String{
        return data.arrayOfVariables[Int.random(in: 0..<data.arrayOfVariables.count)]
    }
    func checkKeyString(){
        if keystring.count <= 19{
            keystringbool = false
            return
        }
        keystring.remove(at: keystring.endIndex )
        keystringbool = true
    }
}
