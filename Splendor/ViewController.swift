import UIKit

class ViewController: UIViewController {

    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        myTitle.text = "HIII"
     }

    @IBOutlet var myInput: UITextField!

    @IBOutlet var myTitle: UILabel!

    @IBAction func myButton() {
        if let text = myInput.text {
            if let intText = Int(text) {
                myTitle.text = "\(PrimeFactors.of(number: intText))"
            } else {
                myTitle.text = "\"\(text)\" is not a number"
            }
        }
    }

}

