

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var tutorialLabel: UILabel!
    
    @IBOutlet weak var blackView: UIView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(systemName: "paperplane.fill")
        
        tutorialLabel.numberOfLines = 0
        tutorialLabel.font = .boldSystemFont(ofSize: 25)
        //tutorialLabel.backgroundColor = .red
        tutorialLabel.text = """
        일기 씁시다!
        잘 써봅시다!
        """
        tutorialLabel.alpha = 0
        blackView.alpha = 0
        
        blackView.backgroundColor = .black
        
        UIView.animate(withDuration: 3) {
            self.tutorialLabel.alpha = 1
            //self.tutorialLabel.backgroundColor = .yellow
        } completion: { _ in
            self.animateBlackView()
        }
        
    }
    
    func animateBlackView() {
        UIView.animate(withDuration: 2) {
            self.blackView.transform = CGAffineTransform(scaleX: 4, y: 1)
            self.blackView.alpha = 1
            
        } completion: { _ in
            self.animateImageView()
        }

    }
    
    func animateImageView() {
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse]) {
            self.imageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            self.imageView.tintColor = .systemPurple
        } completion: { _ in
            
        }

    }
    
    
    
    
    
    
}
