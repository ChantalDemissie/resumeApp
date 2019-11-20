import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Experience(_ sender: Any) {
    }
    
    @IBAction func Languages(_ sender: Any) {
    }
    
    @IBAction func Projects(_ sender: Any) {
    }
    
    @IBAction func Call(_ sender: Any) {
        guard let number = URL(string: "tel://" + "2064507952") else { return }
        UIApplication.shared.open(number)
        print("phone call is working")
    }
    
    @IBAction func Email(_ sender: Any) {
        print("hihi")
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["chantaldemissie@yahoo.com"])
            mail.setMessageBody("<p>Awesome resume app!</p>", isHTML: true)
            
            present(mail, animated: true)
            print("email is working")
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
}
