


import UIKit


protocol FragmentDelegate
{
    func changeParentLabel(_ data : String)
}
class Fragment: UIViewController {
  
    @IBOutlet weak var inputLabel: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var delegate : FragmentDelegate?
    @IBAction func btnPressed(_ sender: Any) {
        delegate?.changeParentLabel(inputLabel.text!)
    }
}
extension Fragment : ViewvControllerDelegate
{
    
    func changeFragLabel(_ data: String) {
        
        label.text = data
    }
    
}



