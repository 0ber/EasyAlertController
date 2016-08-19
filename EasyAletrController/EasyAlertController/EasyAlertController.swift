import UIKit

// MARK: EasyAlertControllerAction
public enum EasyAlertControllerAction {
  case Default(title: String?, handler:((UIAlertAction) -> Void)?)
  case Cancel(title: String?, handler:((UIAlertAction) -> Void)?)
  case Destructive(title: String?, handler:((UIAlertAction) -> Void)?)
}

extension EasyAlertControllerAction {
  
  private var action: UIAlertAction {
    switch self {
    case .Default(let title, let handler): return UIAlertAction(title: title, style: .Default, handler: handler)
    case .Cancel(let title, let handler): return UIAlertAction(title: title, style: .Cancel, handler: handler)
    case .Destructive(let title, let handler): return UIAlertAction(title: title, style: .Destructive, handler: handler)
    }
  }
}

// MARK: EasyAlertController
public protocol EasyAlertController {
  static func actionSheet(title: String?, message: String?, actions: [EasyAlertControllerAction]) -> UIAlertController
  static func alert(title: String?, message: String?, actions: [EasyAlertControllerAction]) -> UIAlertController
}

public extension EasyAlertController where Self: UIAlertController {
  
  static func actionSheet(title: String? = nil, message: String? = nil, actions: [EasyAlertControllerAction]) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .ActionSheet)
    actions.forEach { alert.addAction($0.action) }
    return alert
  }
  
  static func alert(title: String? = nil, message: String? = nil, actions: [EasyAlertControllerAction]) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
    actions.forEach { alert.addAction($0.action) }
    return alert
  }
}

extension  UIAlertController: EasyAlertController {}