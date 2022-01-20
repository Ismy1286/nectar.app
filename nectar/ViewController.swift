import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var logo: UIImageView = {
        let view = UIImageView(image: UIImage(named: "logo"))
        return view
    }()
    
    private lazy var goTo2ScreenButton: CustonButton = {
        let view = CustonButton()
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        setupViews()
    }
    
    private func setupSubViews() {
        view.addSubview(logo)
        logo.snp.makeConstraints { make in
            make.width.equalTo(view.frame.width * 0.646)
            make.centerY.equalToSuperview().offset(20)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(goTo2ScreenButton)
        goTo2ScreenButton.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.centerX.equalToSuperview()
            make.top.equalTo(logo.snp.bottom)
            make.bottom.equalToSuperview()
        }
    }
    
    private func setupViews() {
        view.backgroundColor = UIColor(red: 83/255, green: 177/255, blue: 117/255, alpha: 1)
        goTo2ScreenButton.setOnClickListener { view in
            self.navigationController?.pushViewController(TwoScreen(), animated: true)
        }
    }
}

