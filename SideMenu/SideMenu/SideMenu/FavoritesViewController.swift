
import UIKit

class FavoritesViewController: UIViewController {
    
    
    @objc func goBack()
    {
        dismiss(animated: true , completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationItem.title = "Favorites"
        navigationController?.navigationBar.barStyle = .black
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(imageLiteralResourceName: "icons8-back-50").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(goBack))
        
        let label = UILabel(frame : CGRect(x: 0, y: 0, width: 200, height: 30))
        
        label.center = CGPoint(x: 160, y: 260)
        label.text = "FavoritesView"
        view.addSubview(label)
        
        
    }
}
