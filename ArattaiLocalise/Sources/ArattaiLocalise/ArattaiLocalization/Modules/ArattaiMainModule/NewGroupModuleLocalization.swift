//
//  File.swift
//  
//
//  Created by naveen-12413 on 16/12/21.
//

import Foundation
extension Localization.ArattaiMain.NewChat {
    public struct NewGroup {
        public enum NewGroup {
            case addParticipants
            public var newGroup: String {
                switch self {
                case .addParticipants:
                    return NSLocalizedString("Project_Status_Completed",bundle: .module ,comment: "Completed")

                }
            }
        }
    }
}
