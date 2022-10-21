//
//  CWButton.swift
//  CardWorkoutProgrammatic
//
//  Created by Patrick Nguyen on 2022-10-19.
//

import UIKit

class CWButton: UIButton {

    //overrides UIButton init so we can call configure to customize our button
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    //each time override must have this
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //setting background color and title
    init(color: UIColor, title: String, systemImageName: String) {
        super.init(frame: .zero)
        
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseForegroundColor = color
        configuration?.baseBackgroundColor = color
        configuration?.cornerStyle = .medium
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePadding = 5
        configuration?.imagePlacement = .trailing
        
        //use autolayout
        translatesAutoresizingMaskIntoConstraints = false

    }
    

}
