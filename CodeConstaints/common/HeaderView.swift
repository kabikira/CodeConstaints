//
//  HeaderView.swift
//  CodeConstaints
//
//  Created by koala panda on 2023/03/01.
//

import UIKit

final class HeaderView: UIView {
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(sampleModel: SampleModel) {
        firstLabel.text = sampleModel.userName
        secondLabel.text = sampleModel.displayName
        textView.text = sampleModel.biography
    }
}
