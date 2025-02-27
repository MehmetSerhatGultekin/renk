import UIKit

class LogInVC: BackgroundDesign {
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var mailTF: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientBackground()
        textFieldsdAttributes(textField1: mailTF, textfield2: passwordTF)
        logInButtonAttributes(button: logInButton)

    }
}
