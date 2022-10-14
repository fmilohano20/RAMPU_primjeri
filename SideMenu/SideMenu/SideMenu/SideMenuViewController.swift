
import UIKit

private let reuseIdentifier = "MenuElement"
class SideMenuViewController: UIViewController {
    
    var tableView : UITableView!
    var delegate : HomeViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .black
        configureTableView()
        
    }
    
    func configureTableView()
    {
        
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MenuElement.self,forCellReuseIdentifier: reuseIdentifier)
        tableView.backgroundColor = .darkGray
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    

}
extension SideMenuViewController : UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let element = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as! MenuElement
        let menuOption = MenuTitle(rawValue: indexPath.row)
        element.Elementlabel.text = menuOption?.description
        return element
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuTitle(rawValue: indexPath.row)
        delegate?.MenuToggle(menuOption: menuOption)
    }
    
    
    
}
