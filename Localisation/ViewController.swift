//
//  ViewController.swift
//  Localisation
//
//  Created by Gadgetzone on 03/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    let languageLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello".localize()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 32, weight: .semibold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(languageLabel)
        languageLabel.frame = view.bounds
    }
}

extension String {
    
    func localize() -> String {
        return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self)
    }
}

