//
//  File.swift
//  
//
//  Created by naveen-12413 on 07/12/21.
//

import Foundation
import QuartzCore
extension Localization {
    
    public struct ChatProfile {
        public enum ChatProfile {
            case mentions, starredMessages, contacts, arattaiWeb, settings
            public var chatProfileTitles: String {
                switch self {
                case .mentions:
                    return NSLocalizedString("Project_Status_Completed",bundle: .module ,comment: "Completed")

                case .starredMessages:
                    return NSLocalizedString("Project_Status_Completed",bundle: .module ,comment: "Completed")

                case .contacts:
                    return NSLocalizedString("Project_Status_Completed",bundle: .module ,comment: "Completed")

                case .arattaiWeb:
                    return NSLocalizedString("Project_Status_Completed",bundle: .module ,comment: "Completed")

                case .settings:
                    return NSLocalizedString("Project_Status_Completed",bundle: .module ,comment: "Completed")

                }
                
            }
        }
    }
}
