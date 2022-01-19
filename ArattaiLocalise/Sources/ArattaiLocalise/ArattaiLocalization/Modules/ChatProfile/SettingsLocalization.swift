//
//  File.swift
//  
//
//  Created by naveen-12413 on 02/12/21.
//

import Foundation
extension Localization.ChatProfile {
    public struct Settings {
        //        public enum SettingsProfile {
        //            case DeviceAndSession
        //            public var settingsProfileTitle: String {
        //                switch self {
        //                case .DeviceAndSession:
        //                    return NSLocalizedString("chat_settings_home_session",bundle: .module ,comment: "Heading")
        //
        //                }
        //            }
        
        public enum DeviceAndSessionsHeading {
            case backButtonHeading, thisDevice, otherSessions
            public var DAndSHeading: String {
                switch self {
                case .backButtonHeading:
                    return NSLocalizedString("chat_settings_home_session_list_title",bundle: .module ,comment: "Heading")
                case .thisDevice:
                    return NSLocalizedString("chat_settings_home_session_cdevice_title",bundle: .module ,comment: "Heading")
                case .otherSessions:
                    return NSLocalizedString("chat_settings_home_session_odevice_title",bundle: .module ,comment: "Heading")
                }
            }
        }
        public enum DeviceAndSessionContent {
            case terminateAll,terminateAllTitle, terminateAllContent, terminatePositive, terminateNegative, terminateOne, terminateOneTitle, terminateOneContent, oneSessionFailed, otherSessionFailed, logoutErrorTitle, logoutErrorMessage(String), logoutErrorSessionExpired(String), terminatedSucces, terminateFailureOne, terminateFailureOther
            public var DAndSContent: String {
                switch self {
                case .terminateAll:
                    return NSLocalizedString("settings_home_session_dialog_all_title",bundle: .module ,comment: "TerminateAll")
                case .terminateAllContent:
                    return NSLocalizedString("settings_home_session_dialog_all_desc",bundle: .module ,comment: "Alert Message")
                case .terminatePositive:
                    return NSLocalizedString("settings_home_session_dialog_positive",bundle: .module ,comment: "Operation Success")
                case .terminateNegative:
                    return NSLocalizedString("vcancel",bundle: .module ,comment: "Operation Fail")
                case .terminateAllTitle:
                    return NSLocalizedString("settings_home_session_dialog_title_all", bundle: .module, comment: "Many Title")
                case .terminateOne:
                    return NSLocalizedString("chat_settings_home_session_terminate", bundle: .module, comment: "Terminate One")
                case .terminateOneTitle:
                    return NSLocalizedString("settings_home_session_dialog_title", bundle: .module, comment: "One Title")
                case .terminateOneContent:
                    return NSLocalizedString("settings_home_session_dialog_desc", bundle: .module, comment: "Alert Message")
                case .oneSessionFailed:
                    return NSLocalizedString("arattai.sessions.terminate.single.networkFail", bundle: .module, comment: "Alert Message")
                case .otherSessionFailed:
                    return NSLocalizedString("arattai.sessions.terminate.others.networkFail", bundle: .module, comment: "Alert Message")
                case .logoutErrorTitle:
                    return NSLocalizedString("cliq.logout.error.title", bundle: .module, comment: "Alert Message")
                case .logoutErrorMessage(let link):
                    return String(format: NSLocalizedString("cliq.logout.error.message", bundle: .module, comment: "Alert Message"), link)
                case .logoutErrorSessionExpired(let link):
                    return String(format: NSLocalizedString("cliq.logout.error.sessionExpire", bundle: .module, comment: "Alert Message"), link)
                case .terminatedSucces:
                    return NSLocalizedString("arattai.sessions.terminate.others.success", bundle: .module, comment: "Alert Message")
                case .terminateFailureOne:
                    return NSLocalizedString("arattai.sessions.terminate.single.fail", bundle: .module, comment: "Alert Message")
                case .terminateFailureOther:
                    return NSLocalizedString("arattai.sessions.terminate.others.fail", bundle: .module, comment: "Alert Message")
                }
            }
        }
    }
}

    
    
    
    
    //    public struct Settings {
    //        public enum SettingsTitlesProfile {
    //            case settings, general, shortcuts, arattai
    //            public var settingsTitle: String {
    //                switch self {
    //                case .settings:
    //                    return NSLocalizedString("arattai.menu.option.settings",bundle: .module ,comment: "Settings Title")
    //                case .general:
    //                    return NSLocalizedString("cliq.settings.title.categoryone",bundle: .module ,comment: "General Title")
    //                case .shortcuts:
    //                    return NSLocalizedString("cliq.settings.title.categorytwo",bundle: .module ,comment: "Shortcuts Title")
    //                case .arattai:
    //                    return NSLocalizedString("cliq.settings.title.categorythree",bundle: .module ,comment: "Arattai Title")
    //                }
    //            }
    //        }
    //        public enum General {
    //            case chats, dataAndStorage, notifications, appearance, devicesAndSessions, securityAndPrivacy, accounts
    //            public var generalSettings: String {
    //                switch self {
    //                case .chats:
    //                    return NSLocalizedString("cliq.chat.title",bundle: .module ,comment: "Chat Title")
    //                case .dataAndStorage:
    //                    return NSLocalizedString("cliq.settings.backButtonTitle.media",bundle: .module ,comment: "Data And Storage Title")
    //                case .notifications:
    //                    return NSLocalizedString("cliq.settings.notificationstitle",bundle: .module ,comment: "Notification Title")
    //                case .appearance:
    //                    return NSLocalizedString("cliq.settings.backButtonTitle.appearance",bundle: .module ,comment: "Appearance Title")
    //                case .devicesAndSessions:
    //                    return NSLocalizedString("arattai.menu.option.QRandSessions",bundle: .module ,comment: "Devices And Sessions Title")
    //                case .securityAndPrivacy:
    //                    return NSLocalizedString("cliq.settings.backButtonTitle.privacyAndSecurity",bundle: .module ,comment: "Security And Privacy Title")
    //                case .accounts:
    //                    return NSLocalizedString("cliq.settings.backButtonTitle.accounts",bundle: .module ,comment: "Accounts Title")
    //                }
    //            }
    //        }
    //    }
    //
