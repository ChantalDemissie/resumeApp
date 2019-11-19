import UIKit

class ProjectsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var projects = [
        "Dreamlife",
        "Rideshare",
        "Github"
    ]
    
    var links = [
        "https://dream-life-100.firebaseapp.com/",
        "http://candr-rideshare.herokuapp.com/",
        "https://github.com/ChantalDemissie",
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projects.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let url =  URL(string: self.links[indexPath.row])!
        UIApplication.shared.open(url, options: [:])
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = "\(projects[indexPath.row])"
        
        return cell
    }
}
