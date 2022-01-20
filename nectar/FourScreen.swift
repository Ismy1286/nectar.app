import Foundation
import UIKit
import SnapKit

class FourScreen: UIViewController {
    
    private lazy var fonImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "40"))
        return view
    }()
    
    private lazy var enterLabel: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 24/255, green: 23/255, blue: 37/255, alpha: 1)
        view.font = .systemFont(ofSize: 26, weight: .semibold)
        view.text = "Enter your mobile number"
        return view
    }()
    
    private lazy var numberLabel: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 124/255, green: 124/255, blue: 124/255, alpha: 1)
        view.font = .systemFont(ofSize: 16)
        view.text = "Mobile Number"
        return view
    }()
    
    private lazy var inputLabel: UITextField = {
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
    
    private lazy var keyboardImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "41"))
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
        
        view.addSubview(fonImage)
        fonImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        view.addSubview(enterLabel)
        enterLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(view.frame.height * 0.17)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
        }
        view.addSubview(numberLabel)
        numberLabel.snp.makeConstraints { make in
            make.top.equalTo(enterLabel).offset(view.frame.height * 0.07)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
        }
        view.addSubview(inputLabel)
        inputLabel.snp.makeConstraints { make in
            make.top.equalTo(numberLabel).offset(view.frame.height * 0.04)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
            make.width.equalToSuperview().multipliedBy(0.85)
        }
        view.addSubview(pixImage)
        pixImage.snp.makeConstraints { make in
            make.top.equalTo(inputLabel.snp.bottom).offset(view.frame.height * 0.017)
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
            make.bottom.equalTo(keyboardImage.snp.top)
            make.height.width.equalTo(67)
        }
    }
    
    private func setupViews() {
        view.backgroundColor = UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1)
        nextButton.setOnClickListener { view in
            self.navigationController?.pushViewController(FiveScreen(), animated: true)
        }
    }
}
