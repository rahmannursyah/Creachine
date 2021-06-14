//
//  contentTableViewCell.swift
//  Creachine
//
//  Created by Rahmannur Rizki Syahputra on 07/06/21.
//

import UIKit

class promptTableViewCell: UITableViewCell {

	@IBOutlet weak var contentHeaderView: UIView!
	@IBOutlet weak var contentHeaderLabel: UILabel!
	@IBOutlet weak var contentRandomLabel: UILabel!
	@IBOutlet weak var contentBodyView: UIView!
	@IBOutlet weak var contentSpinAnimationView: UIImageView!
	@IBOutlet weak var lightAnimation: UIImageView!
	@IBOutlet weak var detailImageView: UIImageView!
	@IBOutlet weak var lockButton: UIButton!
	
	var isActive: Bool = false
	
	@IBAction func isLockButtonPressed(_ sender: Any) {
		if isActive {
			isActive = false
			lockButton.setImage(UIImage(systemName: "lock.open.fill"), for: .normal)
		} else {
			isActive = true
			lockButton.setImage(UIImage(systemName: "lock.fill"), for: .normal)
		}
	}
}
