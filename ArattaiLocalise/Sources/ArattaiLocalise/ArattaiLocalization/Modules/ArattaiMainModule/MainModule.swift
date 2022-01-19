//
//  File.swift
//  
//
//  Created by naveen-12413 on 07/12/21.
//

import Foundation
extension Localization {
    public struct ArattaiMain {
        public enum ArattaiMain {
            case chatTitle, mypins, mutedchat
            
            public var arattaiMainTitle: String {
                switch self {
                case .chatTitle:
                    return NSLocalizedString("chat.title.tab.activechatactivity",bundle: .module ,comment: "Chat Title")
                case .mypins:
                    return NSLocalizedString("chat.title.tab.pinnedactivity", bundle: .module, comment: "My pin chat")

                case .mutedchat:
                    return "Naveen"
                }
            }
        }
    }
}
