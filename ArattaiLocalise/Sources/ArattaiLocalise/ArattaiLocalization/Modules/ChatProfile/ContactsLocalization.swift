//
//  File.swift
//  
//
//  Created by naveen-12413 on 07/12/21.
//

import Foundation
extension Localization.ChatProfile {
    public struct Contacts {
        public enum ContactsProfile {
            case title
            public var contactsTitle: String {
                switch self {
                case .title:
                    return NSLocalizedString("Project_Status_Completed",bundle: .module ,comment: "Completed")

                }
            }
            
        }
    }
}
