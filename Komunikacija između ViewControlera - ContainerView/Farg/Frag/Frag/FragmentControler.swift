
import UIKit

protocol FragmentControlerDelagate
{
    
    func updateContainer(_ data : String)
}

class FragmentControler: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var inputfield: UITextField!
    @IBOutlet weak var gumb: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    var delegate : FragmentControlerDelagate?

    @IBAction func press(_ sender: Any) {
        
        print("wohoh")
        delegate?.updateContainer(inputfield.text!)
    }
}

extension FragmentControler : ViewContollerDelegate
{
    func updateFragment(_ data :String) {
        
        label.text = data
        
        
    }
    
}

