//
//  File.swift
//  
//
//  Created by naveen-12413 on 07/12/21.
//

import Foundation
extension Localization.ArattaiMain {
    public struct NewChat {
        public enum NewChatModule {
            case title
            
            public var newChatTitle: String {
                switch self {
                case .title:
                    return NSLocalizedString("Project_Status_Completed",bundle: .module ,comment: "Completed")

                }
            }
        }
    }
}
