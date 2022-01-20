import Foundation
import UIKit
import SnapKit

class ThreeScreen: UIViewController {
    
    private lazy var backImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "Mask3"))
        return view
    }()
    
    private lazy var getLabel: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 24/255, green: 23/255, blue: 37/255, alpha: 1)
        view.font = .systemFont(ofSize: 26, weight: .semibold)
        view.text = "Get your groceries \nwith nectar"
        view.numberOfLines = 0
        return view
    }()
    
    private lazy var numberInput: UITextField = {
        let view = UITextField()
        view.textColor = UIColor(red: 24/255, green: 23/255, blue: 37/255, alpha: 1)
        view.font = .systemFont(ofSize: 18)
        view.clearsOnBeginEditing = true
        view.text = "+880"
        return view
    }()
    
    private lazy var pixImage: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 226/255, green: 226/255, blue: 226/255, alpha: 1)
        return view
    }()
    
    private lazy var connectLabel: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 124/255, green: 124/255, blue: 124/255, alpha: 1)
        view.font = .systemFont(ofSize: 14)
        view.text = "Or connect with social media"
        return view
    }()
    
    private lazy var googleButton: CustonButton = {
        let view = CustonButton()
        view.setImage(UIImage(named:"google"), for: .normal)
        view.layer.cornerRadius = 19
        return view
    }()
    
    private lazy var faceButton: CustonButton = {
        let view = CustonButton()
        view.setImage(UIImage(named:"facebook"), for: .normal)
        view.layer.cornerRadius = 19
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        setupViews()
    }
    
    private func setupSubViews() {
        
        view.addSubview(backImage)
        backImage.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.42)
        }
        view.addSubview(getLabel)
        getLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
            make.top.equalTo(backImage.snp.bottom).offset(view.frame.height * 0.07)
        }
        view.addSubview(numberInput)
        numberInput.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
            make.top.equalTo(getLabel.snp.bottom).offset(view.frame.height * 0.04)
            make.width.equalToSuperview().multipliedBy(0.85)
        }
        view.addSubview(pixImage)
        pixImage.snp.makeConstraints { make in
            make.top.equalTo(numberInput.snp.bottom).offset(view.frame.height * 0.017)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
            make.width.equalToSuperview().multipliedBy(0.85)
            make.height.equalTo(1)
        }
        view.addSubview(connectLabel)
        connectLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(pixImage.snp.bottom).offset(view.frame.height * 0.045)
        }
        view.addSubview(googleButton)
        googleButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(connectLabel.snp.bottom).offset(view.frame.height * 0.06)
            make.height.equalTo(67)
            make.width.equalToSuperview().multipliedBy(0.85)
        }
        view.addSubview(faceButton)
        faceButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(googleButton.snp.bottom).offset(view.frame.height * 0.02)
            make.height.equalTo(67)
            make.width.equalToSuperview().multipliedBy(0.85)
        }
    }
    private func setupViews() {
        view.backgroundColor = UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1)
        googleButton.setOnClickListener { view in
            self.navigationController?.pushViewController(FourScreen(), animated: true)
        }
        faceButton.setOnClickListener { view in
            self.navigationController?.pushViewController(FourScreen(), animated: true)
        }
    }
}

