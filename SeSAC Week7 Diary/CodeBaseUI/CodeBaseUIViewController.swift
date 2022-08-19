



import UIKit

import SnapKit

class CodeBaseUIViewController: UIViewController {
    
    let testImageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .orange
        return view
    }()
    let testButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .green
        return view
    }()
    let testLabel: UILabel = {
        let view = UILabel()
        view.backgroundColor = .systemPurple
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }
    
    func setUI() {
        [testImageView, testButton, testLabel].forEach { view.addSubview($0) }
        
        testImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(50)
            make.centerX.equalTo(view)
            make.width.equalTo(150)
            make.height.equalTo(150)
        }
        
        testButton.snp.makeConstraints { make in
            make.top.equalTo(testImageView.snp.bottom).offset(40)
            make.leading.equalTo(view.snp.leading).offset(30)
            make.trailing.equalTo(view.snp.trailing).offset(-30)
            make.height.equalTo(50)
        }
        
        testLabel.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-50)
            make.leading.equalTo(testButton.snp.leading)
            make.trailing.equalTo(testButton.snp.trailing)
            make.height.equalTo(40)
        }
        
    }
    
    
    
    
    
    
    
}
