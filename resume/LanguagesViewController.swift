import UIKit

class LanguagesViewController: UIViewController {
    
    @IBOutlet weak var LanguagesLabel: UILabel!
    
    var languages = [
        "Swift",
        "Ruby",
        "Ruby on Rails",
        "React",
        "Javascript"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LanguagesLabel.text = "\u{2022} " + languages.joined(separator: "\n\u{2022}")
    }
    
}
