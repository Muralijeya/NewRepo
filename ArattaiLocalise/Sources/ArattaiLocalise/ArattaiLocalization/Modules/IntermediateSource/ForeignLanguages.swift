//
//  File.swift
//  
//
//  Created by naveen-12413 on 17/01/22.
//

import Foundation

public func receiveKeyForeign(value: String) -> String {
    let value = value
    //print(value)
    var name = ""
    //let args = args
    //keyValue.init(rawValue: value)
    enum KeyValue: String {
        case name = "cliq.settings.title.categoryone"
        case local = "cliq.settings.title.categorytwo"
    }
    let key = KeyValue.init(rawValue: value)
   //print(KeyValue.init(rawValue: value))
    if key?.rawValue == value {
        //print(key?.rawValue)
        name = value.localize
        //print(value.localize)
    }
    return name
}
extension String {
    var localize: String {
        let application = "arattai"
        let cliqLocalized = NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
        
        if application == "arattai" {
            let custom = NSLocalizedString(self, tableName: "ArattaiLocalizable", bundle: Bundle.main, value: "", comment: "")
            if custom == self {
                return cliqLocalized
            }
            return custom
        }
        else {
            return cliqLocalized
        }
        
    }
    func localizedWithArguments(_ args:String...) -> String {
        let arguments = args.map { $0 as CVarArg }
        return String(format: self.localize, arguments: arguments)
    }
}
