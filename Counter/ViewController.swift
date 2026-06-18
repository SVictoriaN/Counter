
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    
    private var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        counterLabel.text = "Значение счётчика: \(count)"
    }

    @IBAction func incrementButtonTapped(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счётчика: \(count)"
    }
}

