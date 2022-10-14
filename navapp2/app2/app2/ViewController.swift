import UIKit

protocol ViewvControllerDelegate
{
    func changeFragLabel(_ data: String)
    
}
class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var Button1: UIButton!
    
    @IBOutlet weak var inputfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if(segue.identifier == "Fragment1")
            {
                let fragView = segue.destination as! Fragment
                fragView.delegate = self
                delegate = fragView
               
            }
    }
    
    var delegate : ViewvControllerDelegate?
    
    @IBAction func Pressed(_ sender :Any?)
    {
        delegate?.changeFragLabel(inputfield.text!)
        
    }
    
    
}
extension ViewController : FragmentDelegate
{
    
    func changeParentLabel(_ data: String) {
        label.text = data
    }
}


