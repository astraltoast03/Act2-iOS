import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textlabel: UILabel!
    @IBOutlet weak var randomNumberLabel: UILabel!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet var background: UIView!
    
    @IBAction func generateRandomNumber(_ sender: UIButton) {
        // Verificar si se ingresó un número en el TextField
        guard let userNumberText = textfield.text, let userNumber = Int(userNumberText) else {
            textlabel.text = "Ingrese un número válido"
            textlabel.backgroundColor = .clear
            return
        }

        // Generar un número aleatorio del 1 al 6
        let randomDiceNumber = Int.random(in: 1...6)

        // Mostrar el número aleatorio en el Label correspondiente
        randomNumberLabel.text = "\(randomDiceNumber)"

        // Verificar si el usuario atinó al número aleatorio
        if userNumber == randomDiceNumber {
            textlabel.text = "¡Adivinaste!"
            background.backgroundColor = UIColor.green
        } else {
            textlabel.text = "Incorrecto"
            background.backgroundColor = UIColor.red
        }
    }
}


