import UIKit

class ViewController: UIViewController {
    let buttonsView = UIView()
    let wordGuessView = UITextField()
    var letterButtons = [UIButton]()
    let button = UIButton()
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    
    
    override func loadView() {
        super.loadView()
        
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        buttonsView.backgroundColor = UIColor.lightGray
        buttonsView.layer.cornerRadius = 25
        view.addSubview(buttonsView)
        
        let width = 75
        let height = 75
        
        for row in 0..<3 {
            for column in 0..<12 {
                let frame = CGRect(x: column * width, y: row * height, width: width, height: height)

                button.frame = frame
                button.titleLabel?.font = UIFont.systemFont(ofSize: 44)
                button.setTitle("W", for: .normal)
//                button.addTarget(self, action: #selector(letterTapped), for: .touchUpInside)

                buttonsView.addSubview(button)
                letterButtons.append(button)
            }
        }
        
//        for letter in alphabet {
//            button.setTitle(String(letter), for: .normal)
//        }
        
        wordGuessView.translatesAutoresizingMaskIntoConstraints = false
        wordGuessView.isUserInteractionEnabled = false
        wordGuessView.font = UIFont.systemFont(ofSize: 44)
        wordGuessView.layer.cornerRadius = 25
        wordGuessView.placeholder = "your word here".uppercased()
        wordGuessView.textAlignment = .center
        wordGuessView.backgroundColor = .systemGray6
        view.addSubview(wordGuessView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupConstraints()
    }
    
    @objc func letterTapped() {
        print("letter tapped")
    }
    
    func setupConstraints() {
        let constraints = [
            buttonsView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            buttonsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            buttonsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            buttonsView.heightAnchor.constraint(equalToConstant: 200),
            
            wordGuessView.bottomAnchor.constraint(equalTo: buttonsView.topAnchor, constant: -20),
            wordGuessView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            wordGuessView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            wordGuessView.heightAnchor.constraint(equalToConstant: 75),
            
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
}


