//
//  File.swift
//  
//
//  Created by naveen-12413 on 21/12/21.
//

import Foundation
extension Localization {
    public struct Login {
        public enum LoginPage1 {
            case title1(String), title2, title3, startButton
            
            public var login: String {
                switch self {
                case .title1(let string):
                    return String(format: NSLocalizedString("login_ob_title", bundle: .module, comment: "Title One"), string)
                case .title2:
                    return NSLocalizedString("login_ob_subtitle", bundle: .module, comment: "Title two")
                case .title3:
                    return NSLocalizedString("login_ob_subtitle1", bundle: .module, comment: "Title three Link")
                case .startButton:
                    return NSLocalizedString("login_ob_btn", bundle: .module, comment: "Button")
                }
            }
        }
        public enum LoginPage2 {
            case initialize, content
            
            public var loading: String {
                switch self {
                case .initialize:
                    return NSLocalizedString("arattai.loader.subtitle", bundle: .module, comment: "Initialize")
                case .content:
                    return NSLocalizedString("arattai.loader.title", bundle: .module, comment: "Content")
                }
            }
        }
    }
}
enum FeatureType: String {//Dont add new feature in middle.
    case quickChat 
    case effectiveSearch
    case moreOption
    case chatInfo
    case starMessage
    case videoCall
    case animatedEmoji
    case channelsCreation
    case contactInvite
    case muteChannel
    case unReadMessage
    case setStatus
    case forkMessage
    case audioRecording
    case mentions
    case attachment
    case longTapMessage
    case siriShortcutPrompt
    case reactions
    case swipeToReply
    case swipeToReplyNew
    case reminderDialoguePrompt
    case reminderMessageAction
    case stickers
}
