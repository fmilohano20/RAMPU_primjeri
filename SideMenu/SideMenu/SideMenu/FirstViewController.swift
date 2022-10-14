
import UIKit



class FirstViewController: UIViewController {
    
    var menuController : SideMenuViewController!
    var controller : UIViewController!
    var isOpen = false
    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigureHomeController()
        
        

    }
    
    func ConfigureHomeController()
    {
        let homeController =  HomeViewController()
        homeController.delegate = self
        controller = UINavigationController(rootViewController: homeController)
        
        view.addSubview(controller.view)
        addChild(controller)
        controller.didMove(toParent: self)
    }
    
    func configureMenuController()
    {
        if menuController == nil
        {
            menuController = SideMenuViewController()
            menuController.delegate = self
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
        }
    }
        
    func showSideMenu(expand : Bool,menuOption :  MenuTitle?)
    {
        if(expand)
        {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                self.controller.view.frame.origin.x = self.controller.view.frame.width - 85
            },completion: nil)
        }
        else
        {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                self.controller.view.frame.origin.x = 0
            }) { (_) in
                
                guard let menuOption = menuOption else {return}
                self.selectedMenuOption(menuOption: menuOption)
            }
        }
        
    }
    func selectedMenuOption(menuOption : MenuTitle)
    {
        
        
        switch(menuOption)
        {case .Calls: print("show calls")
            let elementView = CallsViewController()
            let element = UINavigationController(rootViewController: elementView)
            element.modalPresentationStyle = .fullScreen
            present(element,animated: true,completion: nil)
        case .Contacts: print("show contacts")
            let elementView = ContactsViewController()
            let element = UINavigationController(rootViewController: elementView)
            element.modalPresentationStyle = .fullScreen
            present(element,animated: true,completion: nil)

        case .Favorites: print("show favorites")
            let elementView = FavoritesViewController()
            let element = UINavigationController(rootViewController: elementView)
            element.modalPresentationStyle = .fullScreen
            present(element,animated: true,completion: nil)

        case .Settings: print("show settings")
            let elementView = SettingsViewController()
            let element = UINavigationController(rootViewController: elementView)
            element.modalPresentationStyle = .fullScreen
            present(element,animated: true,completion: nil)

        }
    }
}
extension FirstViewController:HomeViewControllerDelegate
{
    func MenuToggle(menuOption: MenuTitle?) {
        
        if (!isOpen)
        {
            configureMenuController()
        }
        
        isOpen = !isOpen
        showSideMenu(expand : isOpen,menuOption: menuOption)
    }
}
