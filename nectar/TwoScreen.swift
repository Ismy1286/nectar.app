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
    
    private lazy var welcomeImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "22"))
        return view
    }()
    
    private lazy var subImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "23"))
        return view
    }()
    
    private lazy var goTo3ScreenButton: CustonButton = {
        let view = CustonButton()
        view.setTitle("Get Started", for: .normal)
        view.backgroundColor = UIColor(red: 83/255, green: 177/255, blue: 117/255, alpha: 1)
        view.layer.cornerRadius = 15
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
        halfScreen.addSubview(welcomeImage)
        welcomeImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(carrotImage.snp.bottom).offset(view.frame.height * 0.033)
        }
        halfScreen.addSubview(subImage)
        subImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(welcomeImage.snp.bottom).offset(view.frame.height * 0.02)
        }
        halfScreen.addSubview(goTo3ScreenButton)
        goTo3ScreenButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(subImage.snp.bottom).offset(view.frame.height * 0.04)
            make.height.equalToSuperview().multipliedBy(0.15)
            make.width.equalToSuperview().multipliedBy(0.85)
        }
    }
    private func setupViews() {
        goTo3ScreenButton.setOnClickListener { view in
            self.navigationController?.pushViewController(ThreeScreen(), animated: true)
        }
    }
}
