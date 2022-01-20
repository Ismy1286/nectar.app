//
//  SixScreen.swift
//  nectar
//
//  Created by user on 19.01.2022.
//

import Foundation
import UIKit
import SnapKit

class SixScreen: UIViewController {
    
    private lazy var backgroundImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "40"))
        return view
    }()
    
    private lazy var mapImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "6map"))
        return view
    }()
    
    private lazy var labelText1: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 24/255, green: 23/255, blue: 37/255, alpha: 1)
        view.font = .systemFont(ofSize: 26, weight: .semibold)
        view.text = "Select Your Location"
        return view
    }()
    
    private lazy var labelText2: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 124/255, green: 124/255, blue: 124/255, alpha: 1)
        view.font = .systemFont(ofSize: 16)
        view.text = "Switch on your location to stay in tune with \n what’s happening in your area"
        view.numberOfLines = 0
        view.textAlignment = .center
        return view
    }()
    
    private lazy var labelText3: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 124/255, green: 124/255, blue: 124/255, alpha: 1)
        view.font = .systemFont(ofSize: 16, weight: .semibold)
        view.text = "Your Zone"
        return view
    }()
    
    private lazy var labelText4: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 24/255, green: 23/255, blue: 37/255, alpha: 1)
        view.font = .systemFont(ofSize: 18)
        view.text = "Banasree"
        return view
    }()
    
    private lazy var downButton: CustonButton = {
        let view = CustonButton()
        view.setImage(UIImage(named:"down"), for: .normal)
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
        view.text = "Your Area"
        return view
    }()
    
    private lazy var labelText44: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 177/255, green: 177/255, blue: 177/255, alpha: 1)
        view.font = .systemFont(ofSize: 18)
        view.text = "Types of your area"
        return view
    }()
    
    private lazy var downButton1: CustonButton = {
        let view = CustonButton()
        view.setImage(UIImage(named:"down"), for: .normal)
        return view
    }()
    
    private lazy var pixImage1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 226/255, green: 226/255, blue: 226/255, alpha: 1)
        return view
    }()
    
    private lazy var submitButton: CustonButton = {
        let view = CustonButton()
        view.backgroundColor = UIColor(red: 83/255, green: 177/255, blue: 117/255, alpha: 1)
        view.setTitle("Submit", for: .normal)
        view.titleLabel!.font = .systemFont(ofSize: 18, weight: .semibold)
        view.titleLabel?.textColor = UIColor(red: 255/255, green: 249/255, blue: 255/255, alpha: 1)
        view.layer.cornerRadius = 19
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
        view.addSubview(mapImage)
        mapImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(view.frame.height * 0.15)
            make.centerX.equalToSuperview()
        }
        view.addSubview(labelText1)
        labelText1.snp.makeConstraints { make in
            make.top.equalTo(mapImage.snp.bottom).offset(view.frame.height * 0.05)
            make.centerX.equalToSuperview()
        }
        view.addSubview(labelText2)
        labelText2.snp.makeConstraints { make in
            make.top.equalTo(labelText1.snp.bottom).offset(view.frame.height * 0.01)
            make.centerX.equalToSuperview()
        }
        view.addSubview(labelText3)
        labelText3.snp.makeConstraints { make in
            make.top.equalTo(labelText2.snp.bottom).offset(view.frame.height * 0.15)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
        }
        view.addSubview(labelText4)
        labelText4.snp.makeConstraints { make in
            make.top.equalTo(labelText3.snp.bottom).offset(view.frame.height * 0.02)
            make.left.equalToSuperview().offset(view.frame.width * 0.075)
        }
        view.addSubview(downButton)
        downButton.snp.makeConstraints { make in
            make.centerY.equalTo(labelText4)
            make.right.equalToSuperview().offset(view.frame.width * (-0.075))
        }
        view.addSubview(pixImage)
        pixImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(downButton.snp.bottom).offset(view.frame.height * 0.017)
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
        }
        view.addSubview(downButton1)
        downButton1.snp.makeConstraints { make in
            make.centerY.equalTo(labelText44)
            make.right.equalToSuperview().offset(view.frame.width * (-0.075))
        }
        view.addSubview(pixImage1)
        pixImage1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(downButton1.snp.bottom).offset(view.frame.height * 0.017)
            make.height.equalTo(1)
            make.width.equalToSuperview().multipliedBy(0.85)
        }
        view.addSubview(submitButton)
        submitButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(pixImage1.snp.bottom).offset(view.frame.height * 0.04)
            make.height.equalTo(67)
            make.width.equalToSuperview().multipliedBy(0.85)
        }
    }
    
    private func setupViews(){
        view.backgroundColor = UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1)
        submitButton.setOnClickListener { view in
            self.navigationController?.pushViewController(SevenScreen(), animated: true)
        }
    }
}
