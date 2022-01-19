//
//  RegionalLanguages.swift
//  UsingFramework
//
//  Created by naveen-12413 on 17/01/22.
//

import Foundation

public enum LocalLanguage: String {
    
    case check = "cliq.settings.title.categoryone"
    case value = "cliq.settings.title.categorytwo"
    public func getLocalizedString(_ value: String...) -> String {
        let arguments = value.map { $0 as CVarArg }
        var name = ""
        let language = ["ta", "gu", "ml", "bn", "kn", "mr", "pa", "te", "ur"]
        for language in language {
            if Locale.autoupdatingCurrent.languageCode == language {
                name = String(format: NSLocalizedString(self.rawValue,bundle: .main, value: "", comment: "Chats Module"), arguments: arguments)
            }
            name = receiveKeyForeign(value: self.rawValue)
        }
        
        //let fallbackLanguage = "en"
//        guard let fallbackBundlePath = Bundle.module.path(forResource: fallbackLanguage, ofType: "lproj") else { return self.rawValue }
//        guard let fallbackBundle = Bundle(path: fallbackBundlePath) else { return self.rawValue }
//        let fallbackString = fallbackBundle.localizedString(forKey: self.rawValue, value: "", table: "")
        return name
        
        }
}
