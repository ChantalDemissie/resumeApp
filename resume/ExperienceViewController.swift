import UIKit

class ExperienceViewController: UIViewController {
    
    @IBOutlet weak var experiencesLabel: UILabel!
    
    var experiences = [
        "Nordstrom iOS Mobile Team",
        "Ada Developers Academy"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        experiencesLabel.text = "\u{2022} " + experiences.joined(separator: "\n\u{2022} ")
    }
    
}
