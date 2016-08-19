import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBOutlet weak var buttonHandler: UIButton!

}

// MARK: Actions
extension ViewController {
  
  @IBAction func showAlert(sender: AnyObject) {
    
    let alert = UIAlertController.alert("title", message: "Message", actions: [
      .Cancel(title: "Ok", handler: nil)
      ])
    
    presentViewController(alert, animated:true, completion:nil)

  }
  @IBAction func showActionSheet(sender: AnyObject) {
    
    let actionSheet = UIAlertController.actionSheet(actions: [
      .Default(title: "Default", handler: { _ in print("tap")}),
      .Destructive(title: "Destructive", handler: { _ in print("tap")}),
      .Cancel(title: "Cancel", handler: nil)
      ])
    
     presentViewController(actionSheet, animated:true, completion:nil)
  }
}

