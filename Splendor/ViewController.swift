import UIKit

class ViewController: UIViewController {

    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        myTitle.text = "HIII"
     }

    @IBOutlet var myTitle: UILabel!

    @IBAction func myButton() {
        count += 1
        print("clicked the button!")
        myTitle.text = "Clicked \(count) times"
    }
}

