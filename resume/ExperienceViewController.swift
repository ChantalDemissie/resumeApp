import UIKit

class ExperienceViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var experiences = [
        "Nordstrom iOS Mobile Team: Intern",
        "Ada Developers Academy: Student",
        "Black Girls Code: Technical Assistant",
        "Ada Prospective Student Mentor"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             return experiences.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let cell = UITableViewCell()

            cell.textLabel?.text = "\(experiences[indexPath.row])"

            return cell
        }
    }
