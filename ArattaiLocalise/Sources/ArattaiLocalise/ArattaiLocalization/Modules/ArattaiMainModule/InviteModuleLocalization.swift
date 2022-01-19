//
//  File.swift
//  
//
//  Created by naveen-12413 on 16/12/21.
//

import Foundation

//extension Localization {
//    public enum InviteFriends {
//        case title, searchPH
//        
//        public var invite: String {
//            switch self {
//            case .title:
//                return NSLocalizedString("chat_contact_share_app", bundle: .module ,comment: "Invite Friends")
//            case .searchPH:
//                return NSLocalizedString("chat_upload_contact_search_hint", bundle: .module ,comment: "Place Holder")
//                
//            }
//        }
//        public static func getTitleFor(title: InviteFriends) -> String {
//            return title.invite
//        }
//    }
//    
//}
extension Localization {
    public struct Localise {
        public enum LoginPage1 {
            case title1(String), title2, title3, startButton, termsofservice, privatepolicy
            
            public var login: String {
                switch self {
                case .title1(let string):
                    return String(format: NSLocalizedString("chat_contact_share_app", bundle: .module, comment: "Title One"), string)
                case .title2:
                    return NSLocalizedString("login_ob_subtitle", bundle: .module, comment: "Title two")
                case .title3:
                    return NSLocalizedString("login_ob_subtitle1", bundle: .module, comment: "Title three Link")
                case .startButton:
                    return NSLocalizedString("login_ob_btn", bundle: .module, comment: "Button")
                case .termsofservice:
                    return NSLocalizedString("settings.security.tos", bundle: .module, comment: "Terms Of Service")
                case .privatepolicy:
                    return NSLocalizedString("settings.security.privacy", bundle: .module, comment: "Privacy Policy")
                }
            }
            public static func getData1(title: LoginPage1) -> String {
                return title.login
            }
        }
        public enum LoginPage2 {
            case initialize, content
            
            public var loading: String {
                switch self {
                case .initialize:
                    return NSLocalizedString("chat_group_name_hint", bundle: .module, comment: "Initialize")
                case .content:
                    return NSLocalizedString("arattai.loader.title", bundle: .module, comment: "Content")
                }
            }
            
            
            
            public static func getData2(title: LoginPage2) -> String {
                return title.loading
            }
        }
    }
}


