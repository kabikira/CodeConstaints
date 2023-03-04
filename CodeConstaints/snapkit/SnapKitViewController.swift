//
//  SnapKitViewController.swift
//  CodeConstaints
//
//  Created by koala panda on 2023/03/04.
//

import UIKit
import SnapKit

class SnapKitViewController: UIViewController {
    private let headerView: HeaderView = UINib.init(nibName: "Header", bundle: nil).instantiate(withOwner: nil).first as! HeaderView
    
    
    @IBOutlet weak var headerContainerView: UIView! {
        didSet {
            headerContainerView.addSubview(headerView)
            headerView.snp.makeConstraints { $0.edges.equalToSuperview() }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
}
