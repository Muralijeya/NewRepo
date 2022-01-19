//
//  File.swift
//  
//
//  Created by naveen-12413 on 07/12/21.
//

import Foundation
extension Localization.ArattaiMain {
    public struct Search {
        public enum SearchTitle {
            case title
            
            public var searchTitle: String {
                switch self {
                case .title:
                    return NSLocalizedString("Project_Status_Completed",bundle: .module ,comment: "Completed")

                }
            }
        }
    }
}
