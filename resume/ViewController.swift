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
    }
    
    @IBAction func Email(_ sender: Any) {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["chantaldemissie@yahoo.com"])
            mail.setMessageBody("<p>Great resume app! Are you available for job or volunteer opportunities?</p>", isHTML: true)
            present(mail, animated: true)
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
}
