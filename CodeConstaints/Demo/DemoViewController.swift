//
//  DemoViewController.swift
//  CodeConstaints
//
//  Created by koala panda on 2023/03/03.
//

import UIKit
import SnapKit

private func createSampleModels() -> [SampleModel] {
    [SampleModel(userName: "@aaaa", displayName: "ああああ", biography: "あああああああああああああああああああああああああああああああああああああああああああ"),
     SampleModel(userName: "@bbbb", displayName: "いいいいい", biography: "いいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい")
    ]
}

final class DemoViewController: UIViewController {

    @IBOutlet weak var topContainerView: UIView!
    @IBOutlet weak var bottomStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTopContanierView()
        self.setUpBottomStacView()

        
    }

}
private extension DemoViewController {
    
    func setUpTopContanierView() {
        let sampleModels = createSampleModels()
        
        guard let headerView1: HeaderView = UINib.init(nibName: "Header", bundle: nil).instantiate(withOwner: nil, options: nil).first as? HeaderView
        else { return }
        self.topContainerView.addSubview(headerView1)
        headerView1.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.bottom.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(0.5)
        }
        headerView1.configure(sampleModel: sampleModels[0])
        
        guard let headerView2: HeaderView = UINib.init(nibName: "Header", bundle: nil)
            .instantiate(withOwner: nil, options: nil).first as? HeaderView
        else { return }
        
        self.topContainerView.addSubview(headerView2)
        headerView2.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(0.5)
        }
        headerView2.configure(sampleModel: sampleModels[1])
    }
    func setUpTopContainerView2() {
        let sampleModels = createSampleModels()
        
        guard let headerView1: HeaderView = UINib.init(nibName: "Header", bundle: nil).instantiate(withOwner: nil).first as? HeaderView,
              let headerView2: HeaderView = UINib.init(nibName: "Header", bundle: nil).instantiate(withOwner: nil).first as? HeaderView
        else { return }
        
        self.topContainerView.addSubview(headerView1)
        headerView1.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.bottom.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(0.5)
        }
        headerView1.configure(sampleModel: sampleModels[0])
        
        self.topContainerView.addSubview(headerView2)
        headerView2.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.bottom.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(0.5)
        }
        headerView2.configure(sampleModel: sampleModels[1])
    }
    
    func setUpBottomStacView() {
        let sampleModels = createSampleModels()
        
        for sampleModel in sampleModels {
            guard let headerView: HeaderView = UINib.init(nibName: "Header", bundle: nil).instantiate(withOwner: nil).first as? HeaderView else {
                continue
            }
            self.bottomStackView.addArrangedSubview(headerView)
            headerView.configure(sampleModel: sampleModel)
        }
    }
}
