import Foundation
import UIKit
import SnapKit

class TwoScreen: UIViewController {
    
    private lazy var viewImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "2ndScr"))
        return view
    }()
    
    private lazy var halfScreen: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var carrotImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "21"))
        return view
    }()
    
    private lazy var welcomeLabel: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        view.font = .systemFont(ofSize: 48, weight: .semibold)
        view.text = "Welcome \nto our store"
        view.numberOfLines = 0
        view.textAlignment = .center
        return view
    }()
    
    private lazy var subLabel: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 0.7)
        view.font = .systemFont(ofSize: 16)
        view.text = "Ger your groceries in as fast as one hour"
        return view
    }()
    
    private lazy var goTo3ScreenButton: CustonButton = {
        let view = CustonButton()
        view.setTitle("Get Started", for: .normal)
        view.titleLabel!.font = .systemFont(ofSize: 18, weight: .semibold)
        view.titleLabel?.textColor = UIColor(red: 255/255, green: 249/255, blue: 255/255, alpha: 1)
        view.backgroundColor = UIColor(red: 83/255, green: 177/255, blue: 117/255, alpha: 1)
        view.layer.cornerRadius = 19
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        setupViews()
    }
    
    private func setupSubViews() {
        
        view.addSubview(viewImage)
        viewImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        view.addSubview(halfScreen)
        halfScreen.snp.makeConstraints { make in
            make.bottom.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.44)
        }
        
        halfScreen.addSubview(carrotImage)
        carrotImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
        }
        halfScreen.addSubview(welcomeLabel)
        welcomeLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(carrotImage.snp.bottom).offset(view.frame.height * 0.033)
        }
        halfScreen.addSubview(subLabel)
        subLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(welcomeLabel.snp.bottom).offset(view.frame.height * 0.005)
        }
        halfScreen.addSubview(goTo3ScreenButton)
        goTo3ScreenButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(subLabel.snp.bottom).offset(view.frame.height * 0.05)
            make.height.equalTo(67)
            make.width.equalToSuperview().multipliedBy(0.85)
        }
    }
    private func setupViews() {
        goTo3ScreenButton.setOnClickListener { view in
            self.navigationController?.pushViewController(ThreeScreen(), animated: true)
        }
    }
}
