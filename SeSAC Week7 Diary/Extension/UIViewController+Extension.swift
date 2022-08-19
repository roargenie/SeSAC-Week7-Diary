


import UIKit


extension UIViewController {
    
    func transitionViewController<T: UIViewController>(sb: String, viewController vc: T) {
        
        let sb = UIStoryboard(name: sb, bundle: nil)
        guard let controller = sb.instantiateViewController(withIdentifier: T.reuseIdentifier) as? T else { return }
        
        self.present(controller, animated: true)
    }
}
