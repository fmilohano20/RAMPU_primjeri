

import UIKit

protocol ViewContollerDelegate
{
    
    func updateFragment(_ data: String)
}

class ViewController: UIViewController {
    
    @IBOutlet weak var gumb: UIButton!
    @IBOutlet weak var txtlable: UILabel!
    
    @IBOutlet weak var inputfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "container"
    
    }
    
    
    var delegate : ViewContollerDelegate?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "FragmentControler")
        {
            let fragView = segue.destination as! FragmentControler
            fragView.delegate = self
            delegate = fragView
            
            
        }
    }

    @IBAction func btn(_ sender: Any) {
        
        delegate?.updateFragment(inputfield.text!)
    }
    
    
}
extension ViewController : FragmentControlerDelagate
{
    
    func updateContainer(_ data : String) {
        
        
        txtlable.text = data
    }
    
}

