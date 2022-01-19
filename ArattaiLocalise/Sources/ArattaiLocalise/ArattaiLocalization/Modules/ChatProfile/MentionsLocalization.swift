//
//  File.swift
//  
//
//  Created by naveen-12413 on 07/12/21.
//

import Foundation
extension Localization.ChatProfile {
    public struct Mentions {
        public enum MentionsProfile {
            case title
            public var mentionProfileTitle: String {
                switch self {
                case .title:
                    return NSLocalizedString("Project_Status_Completed",bundle: .module ,comment: "Completed")

                }
            }
            
        }
    }
}
