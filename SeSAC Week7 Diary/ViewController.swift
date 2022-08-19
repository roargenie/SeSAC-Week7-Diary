
import UIKit
import SeSAC_Week7_UIFramework
import SnapKit



class ViewController: UIViewController {
    
    let nameButton: UIButton = {
        let view = UIButton()
        view.setTitle("닉네임", for: .normal)
        view.backgroundColor = .green
        view.tintColor = .orange
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
        nameButton.addTarget(self, action: #selector(nameButtonTapped), for: .touchUpInside)
        
        // Notification 활용한 값전달 addObserver
        NotificationCenter.default.addObserver(self, selector: #selector(saveButtonNotificationobserver), name: NSNotification.Name("saveButtonNotification"), object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("Test"), object: nil)
        
    }
    
    @objc func saveButtonNotificationobserver(notification: NSNotification) {
        
        if let name = notification.userInfo?["name"] as? String {
            print(name)
            self.nameButton.setTitle(name, for: .normal)
        }
        
    }
    
    @objc func nameButtonTapped() {
        
        NotificationCenter.default.post(name: NSNotification.Name("Test"), object: nil, userInfo: ["name": "\(Int.random(in: 1...100))", "value": 123456])
        
        //let vc = WriteViewController()
        let vc = ProfileViewController()

        vc.saveButtonActionHandler = { value in
            self.nameButton.setTitle(value, for: .normal)
        }
        
        
        present(vc, animated: true)
    }
    
    func configureUI() {
        view.addSubview(nameButton)
        
        nameButton.snp.makeConstraints { make in
            make.width.height.equalTo(200)
            make.center.equalTo(view)
        }
        
    }
    
     
}



