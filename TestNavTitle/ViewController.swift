//
//  ViewController.swift
//  TestNavTitle
//
//  Created by Shane Whitehead on 5/10/2016.
//  Copyright © 2016 KaiZen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	var headerView: HeaderView? = nil
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		headerView = loadHeaderView()
		guard let headerView = headerView else {
			return
		}
		print("\(view.intrinsicContentSize)")
		headerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		headerView.backgroundColor = UIColor.clear
		navigationItem.titleView = headerView
		
		navigationController?.navigationBar.clipsToBounds = true
	}
	
	@IBAction func tapped(_ sender: AnyObject) {
		changeTitle()
	}
	
	func loadHeaderView() -> HeaderView? {
		guard let results = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil) else {
			return nil
		}
		guard let view = results.first as? HeaderView else {
			return nil
		}
		return view
	}
	
	func changeTitle() {
		let animation = CATransition()
		animation.duration = 0.5
        animation.type = CATransitionType.push
        animation.subtype = CATransitionSubtype.fromTop
		
//		navigationController?.navigationBar.layer.add(animation, forKey: "changeTitle")
		headerView?.layer.add(animation, forKey: "changeTitle")
		headerView?.image = UIImage(named: "pad")
		headerView?.title = "This is something new"
		
//		ATransition *fadeTextAnimation = [CATransition animation];
//		fadeTextAnimation.duration = 0.5;
//		fadeTextAnimation.type = kCATransitionFade;
//		
//		[self.navigationController.navigationBar.layer addAnimation: fadeTextAnimation forKey: @"fadeText"];
//		self.navigationItem.title = "My new title";
//		You can adjust the duration and set a timing function to suit, of course.
//		
//		There are also other types of animation that might work in different circumstances (thanks @inorganik):
//		
//		kCATransitionFade
//		kCATransitionMoveIn
//		kCATransitionPush
//		kCATransitionReveal
	}


}

