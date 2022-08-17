//
//  SnpakitViewController.swift
//  SeSAC Week7 Diary
//
//  Created by 이명진 on 2022/08/17.
//

import UIKit
import SnapKit

class SnpakitViewController: UIViewController {

    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()

    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [redView, blackView].forEach {
            view.addSubview($0)
        }
        
        redView.addSubview(yellowView)
        
        redView.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.width.equalTo(200)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view)
        }
        
        blackView.snp.makeConstraints { make in
            make.edges.equalTo(redView).offset(50) // inset
        }
        
        
        
        
    }
}
