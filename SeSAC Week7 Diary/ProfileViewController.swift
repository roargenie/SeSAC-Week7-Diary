

import UIKit
import SnapKit

extension NSNotification.Name {
    static let saveButton = NSNotification.Name("saveButtonNotification")
}

class ProfileViewController: UIViewController {
    
    let saveButton: UIButton = {
        let view = UIButton()
        view.setTitle("저장", for: .normal)
        view.backgroundColor = .purple
        
        return view
    }()
    
    let textField: UITextField = {
        let view = UITextField()
        view.placeholder = "이름을 입력하세요"
        view.backgroundColor = .blue
        view.textColor = .white
        return view
    }()
    
    var saveButtonActionHandler: ((String) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configureUI()
        saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        NotificationCenter.default.addObserver(self, selector: #selector(testButtonNotificationobserver), name: NSNotification.Name("Test"), object: nil)
        
    }
    
    @objc func testButtonNotificationobserver(notification: NSNotification) {
        print(#function)
        if let name = notification.userInfo?["name"] as? String {
            print(name)
            self.textField.text = name
        }
        
    }
    
    func configureUI() {
        [saveButton, textField].forEach { view.addSubview($0) }
        
        saveButton.snp.makeConstraints { make in
            make.width.height.equalTo(200)
            make.center.equalTo(view)
        }
        
        textField.snp.makeConstraints {
            $0.leading.trailing.equalTo(view).inset(50)
            $0.top.equalTo(50)
            $0.height.equalTo(50)
        }
        
    }
    
    @objc func saveButtonTapped() {
        // 값 전달 방식
        // 1. 클로저
        //saveButtonActionHandler?(textField.text!)
        
        // 2. Notification
        NotificationCenter.default.post(name: .saveButton, object: nil, userInfo: ["name": textField.text!, "value": 123456])
        
        
        dismiss(animated: true)
    }
    
    
}
