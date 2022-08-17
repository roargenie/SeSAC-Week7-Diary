
import UIKit
import SeSAC_Week7_UIFramework





class ViewController: UIViewController {
    
    var name = "고래밥"
    
    private var age = 22
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .blue
        
        let vc = CodeSnap2ViewController()
        vc.modalPresentationStyle = .formSheet
        present(vc, animated: true)
//        showAlert(title: "테스트", message: "테스트 메세지", buttonTitle: "변경") { _ in
//            self.view.backgroundColor = .lightGray
//        }
//        let image = UIImage(systemName: "star.fill")!
//        let shareURL = "https://www.apple.com"
//        let text = "WWDC What's New!!!"
//        sesacShowActivityViewController(shareImage: image, shareURL: shareURL, shareText: text)
        
        OpenWebView.presentWebViewController(self, url: "https://www.naver.com", transitionStyle: .present)
        
    }
    
    
    
    
    
}

