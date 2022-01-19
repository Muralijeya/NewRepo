
import Foundation


public struct Localization {
    public static var language: Bool?
    public enum CommonContents: String {
        case search = "chat.search.widget.hint"
        case number = "No_Of_Project_Completed"
        case check = "cliq.settings.title.cate"
        case renameTitleChat = "cliq.settings.title.categoryoe"
        
        public func getLocalizedString(_ value: String...) -> String {
            if Localization.language == false {
            let language = ["ta", "gu", "ml", "bn", "kn", "mr", "pa", "te", "ur"]
            for language in language {
                if Locale.autoupdatingCurrent.languageCode == language {
                    let arguments = value.map { $0 as CVarArg }
                    let fallbackLanguage = "en"
                    guard let fallbackBundlePath = Bundle.module.path(forResource: fallbackLanguage, ofType: "lproj") else { return self.rawValue }
                    guard let fallbackBundle = Bundle(path: fallbackBundlePath) else { return self.rawValue }
                    let fallbackString = fallbackBundle.localizedString(forKey: self.rawValue, value: "", table: "")
                    return String(format: NSLocalizedString(self.rawValue,bundle: .main, value: fallbackString, comment: "Chats Module"), arguments: arguments)
                }
            }
            let arguments = value.map { $0 as CVarArg }
            let fallbackLanguage = "en"
            guard let fallbackBundlePath = Bundle.module.path(forResource: fallbackLanguage, ofType: "lproj") else { return self.rawValue }
            guard let fallbackBundle = Bundle(path: fallbackBundlePath) else { return self.rawValue }
            let fallbackString = fallbackBundle.localizedString(forKey: self.rawValue, value: "", table: "")
            return String(format: NSLocalizedString(self.rawValue,bundle: .module, value: fallbackString, comment: "Chats Module"), arguments: arguments)
            }
            else {
                let arguments = value.map { $0 as CVarArg }
                let fallbackLanguage = "en"
                guard let fallbackBundlePath = Bundle.module.path(forResource: fallbackLanguage, ofType: "lproj") else { return self.rawValue }
                guard let fallbackBundle = Bundle(path: fallbackBundlePath) else { return self.rawValue }
                let fallbackString = fallbackBundle.localizedString(forKey: self.rawValue, value: "", table: "")
                return String(format: NSLocalizedString(self.rawValue,bundle: .module, value: fallbackString, comment: "Chats Module"), arguments: arguments)
            }
        }
    }
}
public enum OrderStatus {
    case pending, processing, complete, canceled, no_Of_Project_Completed(String), chat_add_group_error(String), chat_add_error(String, String)
    public var displayName:  String {
        switch self {
        case .complete:
            return NSLocalizedString("Project_Status_Completed",bundle: .module ,comment: "Completed")// Normal translation
        case .pending:
            return NSLocalizedString("Project_Status_Pending",bundle: .module, comment: "Pending")
        case .processing:
            return NSLocalizedString("Project_Status_Processing",bundle: .module, comment: "Processing")
        case .canceled:
            return NSLocalizedString("Project_Status_Cancelled",bundle: .module, comment: "Cancelled")
        case .no_Of_Project_Completed(let progress):
            return String(format:  NSLocalizedString("No_Of_Project_Completed",bundle: .module, comment: "Total"), progress)// Translation with one single argument
        case .chat_add_group_error(let name):
            return String(format:  NSLocalizedString("chat_add_group_error",bundle: .module, comment: "Total"), name, name)// translation with two same arguments
            
        case .chat_add_error(let name, let group):
            return String(format: NSLocalizedString("chat_add_error",bundle: .module, comment: "Total"), name, group)// translation with two different arguments
        }
    }
}
//    func localizedWithArguments(_ args:String...) -> String {
//        let arguments = args.map { $0 as CVarArg }
//        return String(format: self.localized, arguments: arguments)
//    }

public enum Plurals {
    case addUsers(Bool, String), deleteUser(String)
    
    public var plurals: String {
        switch self {
        case .addUsers(let isSingle, let contacts):
            //                if isSingle == true {
            //                    return NSLocalizedString("arattai.group.add.participants.add", bundle: .module, comment: "One User Added")
            //                }
            //                return String (format: NSLocalizedString("arattai.group.add.participants.plural.add", bundle: .module, comment: "More Than One User Added"), contacts)
            return (isSingle == true ? NSLocalizedString("arattai.group.add.participants.add", bundle: .module, comment: "One User Added") : String (format: NSLocalizedString("arattai.group.add.participants.plural.add", bundle: .module, comment: "More Than One User Added"), contacts))
        case .deleteUser(let contacts):
            if contacts == "1" {
                return NSLocalizedString("arattai.group.add.participants.add", bundle: .module, comment: "One User Added")
            }
            return String (format: NSLocalizedString("arattai.group.add.participants.plural.add", bundle: .module, comment: "More Than One User Added"), contacts)
            
        }
    }
}


//    extension String {
//        var localized: String {
//
//            let cliqLocalized = NSLocalizedString(self, bundle: .module, comment: "Chats Module")
//            return cliqLocalized
//
//        }
//    }

//extension String {
//    public var localized: String {
//
//        let cliqLocalized = NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
//
//        //TODO: will change code
//        let app = "arattai"
//        if app == "arattai" {
//            let custom = NSLocalizedString(self, bundle: .module, value: "", comment: "")
//            if custom == self {
//                return cliqLocalized
//            }
//            return custom
//        }
//
//        else {
//            return cliqLocalized
//        }
//
//    }
//
//
//    func localizedWithArguments(_ args:String...) -> String {
//        let arguments = args.map { $0 as CVarArg }
//        return String(format: self.localized, arguments: arguments)
//    }
//}


