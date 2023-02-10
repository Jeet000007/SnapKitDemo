//
//  ViewController.swift
//  SnapKitDemo
//
//  Created by Jeet Jayakar on 08/02/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        traditionalWay()
//        snapKitWay()
        complexUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    
    func traditionalWay()  {
        let newView = UIView()
        newView.backgroundColor = UIColor.red
        view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        newView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        newView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        newView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        newView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
    }
    
    func snapKitWay()  {
        let newView = UIView()
        newView.backgroundColor = UIColor.red
        view.addSubview(newView)
        newView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.left.equalTo(20)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
        }
        
    }
    
    func complexUI()  {
        
        let left = 16
        let right = -16
        let top = 16
        let bottom = -16
        
        
        let headerLabel = UILabel()
        headerLabel.text = "Leonardo Da Vinci Gallery"
        headerLabel.textColor = UIColor.black
        headerLabel.textAlignment = .center
        headerLabel.textColor = UIColor.white
        headerLabel.backgroundColor = UIColor.red
        headerLabel.font = UIFont.systemFont(ofSize: 20)
        headerLabel.numberOfLines = 2
        view.addSubview(headerLabel)
        headerLabel.snp.makeConstraints { make in
            make.leading.equalTo(left)
            make.trailing.equalTo(right)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(top)
            make.height.equalTo(30)
            //make.topMargin.equalTo(top)
        }
        
        
        let containerView = UIView()
        containerView.backgroundColor = UIColor.white
        view.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.leading.equalTo(left)
            make.trailing.equalTo(right)
            make.top.equalTo(headerLabel.snp.bottom).offset(top)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(bottom)
            
        }
        
//        let imageHeight = 200
//        let imageWidht = 100
        let monaLisaString = "MonaLisa"
        let christString = "Christ"
        
        let imageViewMonaLisa = UIImageView(image: UIImage(named: monaLisaString))
        containerView.addSubview(imageViewMonaLisa)
        imageViewMonaLisa.contentMode = .scaleToFill
        imageViewMonaLisa.snp.makeConstraints { make in
            make.leading.equalTo(left)
            make.top.equalTo(top)
        }
        
        let imageViewChrist = UIImageView(image: UIImage(named: christString))
        imageViewChrist.contentMode = .scaleToFill
        containerView.addSubview(imageViewChrist)
        imageViewChrist.snp.makeConstraints { make in
            make.height.equalTo(imageViewMonaLisa.snp.height)
            make.width.equalTo(imageViewMonaLisa.snp.width)
            make.leading.equalTo(imageViewMonaLisa.snp.trailing).offset(left)
            make.trailing.equalTo(right)
            make.top.equalTo(top)
        }
        
        let imageViewMonaLisa2 = UIImageView(image: UIImage(named: monaLisaString))
        imageViewMonaLisa2.contentMode = .scaleToFill
        containerView.addSubview(imageViewMonaLisa2)
        imageViewMonaLisa2.snp.makeConstraints { make in
            make.height.equalTo(imageViewMonaLisa.snp.height)
            make.width.equalTo(imageViewMonaLisa.snp.width)
            make.leading.equalTo(left)
            make.top.equalTo(imageViewMonaLisa.snp.bottom).offset(top)
            make.bottom.equalTo(containerView.snp.bottom).offset(bottom)
            
        }
        
        let imageViewChrist2 = UIImageView(image: UIImage(named: christString))
        imageViewChrist2.contentMode = .scaleToFill
        containerView.addSubview(imageViewChrist2)
        imageViewChrist2.snp.makeConstraints { make in
            make.height.equalTo(imageViewMonaLisa.snp.height)
            make.width.equalTo(imageViewMonaLisa.snp.width)
            make.leading.equalTo(imageViewMonaLisa2.snp.trailing).offset(left)
            make.trailing.equalTo(right)
            make.top.equalTo(imageViewChrist.snp.bottom).offset(top)
            make.bottom.equalTo(containerView.snp.bottom).offset(bottom)
        }
        
        
//        view.subviews.forEach { subView in
//            if let label = subView as? UILabel{
//                print("label is inside container view\(label.text ?? "")")
//            }
//        }
        
    }

}

