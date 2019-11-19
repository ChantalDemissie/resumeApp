import UIKit

class ProjectsViewController: UIViewController {
    
    @IBOutlet weak var ProjectLabel: UILabel!
    
    var projects = [
        "Dreamlife",
        "Rideshare",
        "Github"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ProjectLabel.text = "\u{2022} " + projects.joined(separator: "\n\u{2022} ")
    }
    
}
