import UIKit

class ViewController: UIViewController {

    
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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

