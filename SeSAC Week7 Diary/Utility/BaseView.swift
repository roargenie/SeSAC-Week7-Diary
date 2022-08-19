

import UIKit

class BaseView: UIView {
    
    // 코드 베이스
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
        setConstraints()
    }
    
    // xib storyboard 기반, 하지만 코드베이스로 구성할때도 protocol로 채택되어진 init이라 호출은 해주어야 함.
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented") // 런타임 오류
    }
    
    func configureUI() { }
    
    func setConstraints() { }
    
    
    
}

// required initializer

//protocol example {
//    init(name: String)
//}
//
//
//class Mobile: example {
//    let name: String
//
//    required init(name: String) {
//        self.name = name
//    }
//}
//
//class Apple: Mobile {
//    let wwdc: String
//
//    init(wwdc: String) {
//        self.wwdc = wwdc
//        super.init(name: "")
//    }
//
//    required init(name: String) {
//        fatalError("init(name:) has not been implemented")
//    }
//
//}
//
//let a = Apple(wwdc: "애플")




