


import UIKit
import SnapKit



class WriteViewController: BaseViewController {
    
    var mainView = WriteView()
    
    
    override func loadView() {  // super.loadView X
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func configure() {
        mainView.titleTextField.addTarget(self, action: #selector(titleTextFieldTapped), for: .editingDidEndOnExit)
    }
    
    override func setConstraints() {
        
    }
    
    @objc func titleTextFieldTapped(_ textField: UITextField) {
        guard let text = textField.text, text.count > 0 else {
            showAlertMessage(title: "제목을 입력해주세요", button: "확인")
            return
        }
    }
    
}

