//
//  HeaderView.swift
//  TestNavTitle
//
//  Created by Shane Whitehead on 5/10/2016.
//  Copyright © 2016 KaiZen. All rights reserved.
//

import UIKit

class HeaderView: UIView {

	@IBOutlet weak var label: UILabel!
	@IBOutlet weak var imageView: UIImageView!
	
	override func awakeFromNib() {
		super.awakeFromNib()
	}
	
	var image: UIImage? = nil {
		didSet {
			imageView.image = image
		}
	}
	
	var title: String = "Nothing to see here" {
		didSet {
			label.text = title
		}
	}
	
}
