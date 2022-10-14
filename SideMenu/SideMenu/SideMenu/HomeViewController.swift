
import UIKit

protocol HomeViewControllerDelegate
{
    func MenuToggle(menuOption : MenuTitle?)
}
class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavigationbar()
        
    }
    var delegate : HomeViewControllerDelegate?
    @objc func handleMenuToggle()
    {
        delegate?.MenuToggle(menuOption: nil)    }
    func configureNavigationbar()
    {
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(imageLiteralResourceName:"icons8-menu-50").withRenderingMode(.alwaysOriginal) , style: .plain, target: self, action: #selector(handleMenuToggle))
        
        
    }
    


}
