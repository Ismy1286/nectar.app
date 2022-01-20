//
//  SevenScreen.swift
//  nectar
//
//  Created by user on 19.01.2022.
//

import Foundation
import UIKit
import SnapKit

class SevenScreen: UIViewController {
    
    private lazy var backgroundImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "40"))
        return view
    }()
    
    private lazy var logoImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "carrot78"))
        return view
    }()
    
    private lazy var labelText1: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 24/255, green: 23/255, blue: 37/255, alpha: 1)
        view.font = .systemFont(ofSize: 26, weight: .semibold)
        view.text = "Login"
        return view
    }()
    
    private lazy var labelText2: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 124/255, green: 124/255, blue: 124/255, alpha: 1)
        view.font = .systemFont(ofSize: 16)
        view.text = "Enter your emails and password"
        return view
    }()
    
    private lazy var labelText3: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 124/255, green: 124/255, blue: 124/255, alpha: 1)
        view.font = .systemFont(ofSize: 16, weight: .semibold)
        view.text = "Email"
        return view
    }()
    
    private lazy var labelText4: UITextField = {
        let view = UITextField()
        view.textColor = UIColor(red: 24/255, green: 23/255, blue: 37/255, alpha: 1)
        view.font = .systemFont(ofSize: 18)
        view.clearsOnBeginEditing = true
        view.text = "imshuvo97@gmail.com"
        return view
    }()
    
    private lazy var pixImage: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 226/255, green: 226/255, blue: 226/255, alpha: 1)
        return view
    }()
    
    private lazy var labelText33: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 124/255, green: 124/255, blue: 124/255, alpha: 1)
        view.font = .systemFont(ofSize: 16, weight: .semibold)
        view.text = "Password"
        return view
    }()
    
    private lazy var labelText44: UITextField = {
        let view = UITextField()
        view.textColor = UIColor(red: 24/255, green: 23/255, blue: 37/255, alpha: 1)
        view.font = .systemFont(ofSize: 18)
        view.clearsOnBeginEditing = true
        view.isSecureTextEntry = true
        view.text = "************"
        return view
    }()
    
    private lazy var eyeButton1: CustonButton = {
        let view = CustonButton()
        view.setImage(UIImage(named:"eye7"), for: .normal)
        return view
    }()
    
    private lazy var pixImage1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 226/255, green: 226/255, blue: 226/255, alpha: 1)
        return view
    }()
    
    private lazy var labelText5: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 24/255, green: 23/255, blue: 37/255, alpha: 1)
        view.font = .systemFont(ofSize: 14)
        view.text = "Forgot Password?"
        return view
    }()
    
    private lazy var loginButton: CustonButton = {
        let view = CustonButton()
        view.backgroundColor = UIColor(red: 83/255, green: 177/255, blue: 117/255, alpha: 1)
        view.setTitle("Log In", for: .normal)
        view.titleLabel!.font = .systemFont(ofSize: 18, weight: .semibold)
        view.titleLabel?.textColor = UIColor(red: 255/255, green: 249/255, blue: 255/255, alpha: 1)
        view.layer.cornerRadius = 19
        return view
    }()
    
    private lazy var downView: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var labelText6: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 24/255, green: 23/255, blue: 37/255, alpha: 1)
        view.font = .systemFont(ofSize: 14)
        view.text = "Don’t have an account? "
        return view
    }()
    
    private lazy var labelText7: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 83/255, green: 177/255, blue: 117/255, alpha: 1)
        view.font = .systemFont(ofSize: 14)
        view.text = "Singup"
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubview()
        setupViews()
    }
    
    private func setupSubview(){
        
        view.addSubview(backgroundImage)
        backgroundImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(view.frame.height * 0.15)
            make.centerX.equalToSuperview()
        }
        view.addSubview(labelText1)
        labelText1.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(view.frame.height * 0.07)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
        }
        view.addSubview(labelText2)
        labelText2.snp.makeConstraints { make in
            make.top.equalTo(labelText1.snp.bottom).offset(view.frame.height * 0.01)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
        }
        view.addSubview(labelText3)
        labelText3.snp.makeConstraints { make in
            make.top.equalTo(labelText2.snp.bottom).offset(view.frame.height * 0.05)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
        }
        view.addSubview(labelText4)
        labelText4.snp.makeConstraints { make in
            make.top.equalTo(labelText3.snp.bottom).offset(view.frame.height * 0.02)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
            make.width.equalToSuperview().multipliedBy(0.85)
        }
        view.addSubview(pixImage)
        pixImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(labelText4.snp.bottom).offset(view.frame.height * 0.017)
            make.height.equalTo(1)
            make.width.equalToSuperview().multipliedBy(0.85)
        }
        view.addSubview(labelText33)
        labelText33.snp.makeConstraints { make in
            make.top.equalTo(pixImage.snp.bottom).offset(view.frame.height * 0.035)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
        }
        view.addSubview(labelText44)
        labelText44.snp.makeConstraints { make in
            make.top.equalTo(labelText33.snp.bottom).offset(view.frame.height * 0.02)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
            make.width.equalToSuperview().multipliedBy(0.75)
        }
        view.addSubview(eyeButton1)
        eyeButton1.snp.makeConstraints { make in
            make.centerY.equalTo(labelText44)
            make.right.equalToSuperview().offset(view.frame.width * (-0.075))
        }
        view.addSubview(pixImage1)
        pixImage1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(eyeButton1.snp.bottom).offset(view.frame.height * 0.017)
            make.height.equalTo(1)
            make.width.equalToSuperview().multipliedBy(0.85)
        }
        view.addSubview(labelText5)
        labelText5.snp.makeConstraints { make in
            make.top.equalTo(pixImage1.snp.bottom).offset(view.frame.height * 0.02)
            make.right.equalToSuperview().offset(view.frame.width * (-0.075))
        }
        view.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(labelText5.snp.bottom).offset(view.frame.height * 0.04)
            make.height.equalTo(67)
            make.width.equalToSuperview().multipliedBy(0.85)
        }
        view.addSubview(downView)
        downView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(loginButton.snp.bottom).offset(view.frame.height * 0.03)
        }
        downView.addSubview(labelText6)
        labelText6.snp.makeConstraints { make in
            make.left.top.bottom.equalToSuperview()
        }
        downView.addSubview(labelText7)
        labelText7.snp.makeConstraints { make in
            make.right.top.bottom.equalToSuperview()
            make.left.equalTo(labelText6.snp.right).offset(2)
        }
    }
    
    private func setupViews(){
        view.backgroundColor = UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1)
        loginButton.setOnClickListener { view in
            self.navigationController?.pushViewController(EightScreen(), animated: true)
        }
    }
}
