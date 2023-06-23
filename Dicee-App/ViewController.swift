
import UIKit

class ViewController: UIViewController {
    private let background: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "GreenBackground")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    private let diceeLogo: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "DiceeLogo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 50
        return stackView
    }()
    private let diceeView1: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Dice1")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let diceeView2: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Dice1")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let rollButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(named: "custom1")
        button.setTitle("ROLL", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.setTitleColor(.gray, for: .highlighted)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        setup()
    }
    func setup() {
        rollButton.addTarget(self, action: #selector(rollAction), for: .touchUpInside)
    }
    func style() {
        view.addSubview(background)
        view.addSubview(diceeLogo)
        view.addSubview(stackView)
        stackView.addArrangedSubview(diceeView1)
        stackView.addArrangedSubview(diceeView2)
        view.addSubview(rollButton)
    }
    func layout() {
        NSLayoutConstraint.activate([
            background.topAnchor.constraint(equalTo: view.topAnchor),
            background.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            background.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            background.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            diceeLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            diceeLogo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            diceeLogo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 90),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            rollButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80),
            rollButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rollButton.widthAnchor.constraint(equalToConstant: 100),
            rollButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
    @objc func rollAction() {
        diceeView1.image = UIImage(named: "Dice\(Int(arc4random_uniform(6))+1)")
        diceeView2.image = UIImage(named: "Dice\(Int(arc4random_uniform(6))+1)")
    }
}

