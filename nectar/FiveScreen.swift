import Foundation
import UIKit
import SnapKit

class FiveScreen: UIViewController {
    
    private lazy var backgroundImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "40"))
        return view
    }()
    
    private lazy var enter4DigitImage: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 24/255, green: 23/255, blue: 37/255, alpha: 1)
        view.font = .systemFont(ofSize: 26, weight: .semibold)
        view.text = "Enter your 4-digit code"
        return view
    }()
    
    private lazy var code1Label: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 124/255, green: 124/255, blue: 124/255, alpha: 1)
        view.font = .systemFont(ofSize: 16)
        view.text = "Code"
        return view
    }()
    
    private lazy var inputField: UITextField = {
        let view = UITextField()
        view.textColor = UIColor(red: 24/255, green: 23/255, blue: 37/255, alpha: 1)
        view.font = .systemFont(ofSize: 18)
        view.clearsOnBeginEditing = true
        view.text = "- - - -"
        return view
    }()
    
    private lazy var pixImage: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 226/255, green: 226/255, blue: 226/255, alpha: 1)
        return view
    }()
    
    private lazy var keyboardImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "41"))
        return view
    }()
    
    private lazy var resendButton: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 83/255, green: 177/255, blue: 117/255, alpha: 1)
        view.font = .systemFont(ofSize: 18)
        view.text = "Resend Code"
        return view
    }()
    
    private lazy var nextButton: CustonButton = {
        let view = CustonButton()
        view.setImage(UIImage(named:"43"), for: .normal)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        setupViews()
    }
    
    private func setupSubViews() {
        
        view.addSubview(backgroundImage)
        backgroundImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        view.addSubview(enter4DigitImage)
        enter4DigitImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(view.frame.height * 0.17)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
        }
        view.addSubview(code1Label)
        code1Label.snp.makeConstraints { make in
            make.top.equalTo(enter4DigitImage).offset(view.frame.height * 0.07)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
        }
        view.addSubview(inputField)
        inputField.snp.makeConstraints { make in
            make.top.equalTo(code1Label).offset(view.frame.height * 0.04)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
            make.width.equalToSuperview().multipliedBy(0.85)
            
        }
        view.addSubview(pixImage)
        pixImage.snp.makeConstraints { make in
            make.top.equalTo(inputField.snp.bottom).offset(view.frame.height * 0.017)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
            make.width.equalToSuperview().multipliedBy(0.85)
            make.height.equalTo(1)
        }
        view.addSubview(keyboardImage)
        keyboardImage.snp.makeConstraints { make in
            make.bottom.left.right.equalToSuperview()
        }
        view.addSubview(nextButton)
        nextButton.layer.cornerRadius = view.frame.width * 0.15
        nextButton.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(view.frame.width * (-0.075))
            make.bottom.equalTo(keyboardImage.snp.top).offset(view.frame.width * (-0.075))
            make.height.width.equalTo(67)
        }
        view.addSubview(resendButton)
        resendButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
            make.centerY.equalTo(nextButton)
        }
    }
    
    private func setupViews() {
        view.backgroundColor = UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1)
        nextButton.setOnClickListener { view in
            self.navigationController?.pushViewController(SixScreen(), animated: true)
        }
    }
}
