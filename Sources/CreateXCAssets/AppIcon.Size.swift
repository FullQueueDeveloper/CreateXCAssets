import Foundation

extension AppIcon {
  public enum Size: CaseIterable {
    case iPhoneNotification2x, iPhoneNotification3x
    case iPhoneSettings2x, iPhoneSettings3x
    case iPhoneSpotlight2x, iPhoneSpotlight3x
    case iPhoneApp2x, iPhoneApp3x
    case iPadNotifications, iPadNotifications2x
    case iPadSettings, iPadSettings2x
    case iPadSpotlight, iPadSpotlight2x
    case iPadApp, iPadApp2x
    case iPadPro2x
    case AppStore
        
    var data: Data {
      switch self {
      case .iPhoneNotification2x: return .init(20, .two)
      case .iPhoneNotification3x: return .init(20, .three)
      case .iPhoneSettings2x: return .init(29, .two)
      case .iPhoneSettings3x: return .init(29, .three)
      case .iPhoneSpotlight2x: return .init(40, .two)
      case .iPhoneSpotlight3x: return .init(40, .three)
      case .iPhoneApp2x: return .init(60, .two)
      case .iPhoneApp3x: return .init(60, .three)
      case .iPadNotifications: return .init(20, .one)
      case .iPadNotifications2x: return .init(20, .two)
      case .iPadSettings: return .init(29, .one)
      case .iPadSettings2x: return .init(29, .two)
      case .iPadSpotlight: return .init(40, .one)
      case .iPadSpotlight2x: return .init(40, .two)
      case .iPadApp: return .init(76, .one)
      case .iPadApp2x: return .init(76, .two)
      case .iPadPro2x: return .init(83.5, .two)
      case .AppStore: return .init(1024, .one)
      }
    }
    
    var filename: String {
      switch self.data.scale {
      case .one:
        return "AppIcon-\(self.data.pixelWidth).png"
      case .two, .three:
        return "AppIcon-\(self.data.pixelWidth)-\(self.data.baseWidth)\(self.data.scale.fileLabel).png"
      }
    }
  }
}
