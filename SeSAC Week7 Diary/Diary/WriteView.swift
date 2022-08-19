

import UIKit
import SnapKit

class WriteView: BaseView {
    
    let mainImageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .systemCyan
        view.contentMode = .scaleToFill
        return view
    }()
    
    let titleTextField: BlackRadiusTextField = {
        print("titleTextField")
        let view = BlackRadiusTextField()
//        view.borderStyle = .none
//        view.layer.borderColor = UIColor.yellow.cgColor
//        view.layer.borderWidth = 1
        view.placeholder = "제목을 입력해주세요"
//        view.textAlignment = .center
//        view.font = .boldSystemFont(ofSize: 20)
        return view
    }()
    
    let dateTextField: BlackRadiusTextField = {
        let view = BlackRadiusTextField()
//        view.borderStyle = .none
//        view.layer.borderColor = UIColor.yellow.cgColor
//        view.layer.borderWidth = 1
        view.placeholder = "날짜를 입력해주세요"
//        view.textAlignment = .center
//        view.font = .boldSystemFont(ofSize: 20)
        return view
    }()
    
    let contentTextView: UITextView = {
        let view = UITextView()
        view.layer.borderColor = UIColor.tintColor.cgColor
        view.layer.borderWidth = 1
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        [mainImageView, titleTextField, dateTextField, contentTextView].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraints() {
        mainImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(self).multipliedBy(0.3)
        }
        
        titleTextField.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.bottom).offset(20)
            make.leading.equalTo(mainImageView.snp.leading)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        dateTextField.snp.makeConstraints { make in
            make.top.equalTo(titleTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        contentTextView.snp.makeConstraints { make in
            make.top.equalTo(dateTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
        }
    }
    
}



