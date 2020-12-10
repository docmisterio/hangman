import UIKit

class ViewController: UIViewController {
    let buttonsView = UIView()
    var letterButtons = [UIButton]()
    
    
    
    override func loadView() {
        super.loadView()
        
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        buttonsView.backgroundColor = UIColor.gray
        buttonsView.layer.cornerRadius = 25
        view.addSubview(buttonsView)
        
        let width = 60
        let height = 100
        
        for row in 0..<2 {
            for column in 0..<13 {
                let button = UIButton()
                button.titleLabel?.font = UIFont.systemFont(ofSize: 36)
                button.setTitle("W", for: .normal)
                button.addTarget(self, action: #selector(letterTapped), for: .touchUpInside)
                
                let frame = CGRect(x: column * width, y: row * height, width: width, height: height)
                button.frame = frame
                
                buttonsView.addSubview(button)
                letterButtons.append(button)
            }
        }
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
            
            
            
            
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    
}


