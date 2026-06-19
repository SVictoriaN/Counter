
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var historyTextView: UITextView!
        
    private var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        counterLabel.text = "Значение счётчика: \(count)"
        historyTextView.text = "История изменений:"
        historyTextView.isEditable = false
    }

    @IBAction func incrementButtonTapped(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счётчика: \(count)"
        addHistory("значение изменено на +1")
    }
    
    @IBAction func decrementButtonTapped(_ sender: Any) {
        if count > 0 {
            count -= 1
            counterLabel.text = "Значение счётчика: \(count)"
            addHistory("значение изменено на -1")
        } else {
            addHistory("попытка уменьшить значение счётчика ниже 0")
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
            count = 0
            counterLabel.text = "Значение счётчика: \(count)"
            addHistory("значение сброшено")
    }
    
    private func addHistory(_ text: String) {
        historyTextView.text = historyTextView.text + "\n" + getCurrentDate() + ": " + text
    }
    
    private func getCurrentDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let currentDate = formatter.string(from: Date())
        return currentDate
    }
}

