import UIKit

class ProjectsViewController: UIViewController, UITableViewDataSource {
    
    var projects = [
        "Dreamlife",
        "Rideshare",
        "Github"
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = "\(projects[indexPath.row])"
        
        return cell
    }
    
}
