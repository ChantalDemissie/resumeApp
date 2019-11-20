import UIKit

class Language {
    let name : String
    let icon : UIImage
    
    init(name : String, icon : String) {
        self.name = name
        self.icon = UIImage(named: icon)!.invertedColors()!
    }
}

class LanguagesViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let languages = [
        Language(name: "Swift", icon: "icons8-swift-100"),
        Language(name: "Ruby", icon: "icons8-ruby-programming-language-100"),
        Language(name: "Ruby on Rails", icon: "rails"),
        Language(name: "React", icon: "icons8-react-native-100"),
        Language(name: "Javascript", icon: "icons8-javascript-100"),
        Language(name: "HTML", icon: "icons8-html-100"),
        Language(name: "CSS", icon: "icons8-css-100"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let language : Language = languages[indexPath.row]
        cell.textLabel?.text = "\(language.name)"
        cell.imageView?.image = language.icon
        
        return cell
    }
    
}

extension UIImage {
    /// source: https://www.avanderlee.com/swift/dark-mode-support-ios/
    /// Inverts the colors from the current image. Black turns white, white turns black etc.
    func invertedColors() -> UIImage? {
        guard let ciImage = CIImage(image: self) ?? ciImage, let filter = CIFilter(name: "CIColorInvert") else { return nil }
        filter.setValue(ciImage, forKey: kCIInputImageKey)
        
        guard let outputImage = filter.outputImage else { return nil }
        return UIImage(ciImage: outputImage)
    }
}
