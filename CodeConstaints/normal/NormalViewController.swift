//
//  NormalViewController.swift
//  CodeConstaints
//
//  Created by koala panda on 2023/03/02.
//

import UIKit

class NormalViewController: UIViewController {
    
    private let headerView: HeaderView = UINib.init(nibName: "Header", bundle: nil).instantiate(withOwner: nil, options: nil).first as! HeaderView
    
    @IBOutlet weak var headerContainerView: UIView! {
        didSet {
                    headerContainerView.addSubview(headerView)
                    headerView.translatesAutoresizingMaskIntoConstraints = false
                    let constraints: [NSLayoutConstraint] = [
                        headerView.topAnchor.constraint(equalTo: headerContainerView.topAnchor),
                        headerView.leadingAnchor.constraint(equalTo: headerContainerView.leadingAnchor),
                        headerView.trailingAnchor.constraint(equalTo: headerContainerView.trailingAnchor),
                        headerView.bottomAnchor.constraint(equalTo: headerContainerView.bottomAnchor)
                    ]
                    NSLayoutConstraint.activate(constraints)
                }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
