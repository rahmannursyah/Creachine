//
//  filterTableViewCell.swift
//  Creachine
//
//  Created by Rahmannur Rizki Syahputra on 10/06/21.
//

import UIKit

class filterTableViewCell: UITableViewCell {
	
	@IBOutlet weak var filterHeaderLabel: UILabel!
	@IBOutlet weak var filterHeaderView: UIView!
	@IBOutlet weak var filterBodyView: UIView!
	
	@IBOutlet weak var firstCheckButton: UIButton!
	@IBOutlet weak var firstFilterLabel: UILabel!
	
	@IBOutlet weak var secondCheckButton: UIButton!
	@IBOutlet weak var secondFilterLabel: UILabel!
	
	@IBOutlet weak var thirdCheckButton: UIButton!
	@IBOutlet weak var thirdFilterLabel: UILabel!
	
	@IBOutlet weak var fourthCheckButton: UIButton!
	@IBOutlet weak var fourthFilterLabel: UILabel!
	
	var isActive: Bool = false
	var isSecondActive: Bool = false
	var isThirdActive: Bool = false
	var isFourthActive: Bool = false
	
	@IBAction func checkedButton(_ sender: Any) {
		if isActive {
			print(isActive)
			isActive = false
			print(isActive)
			firstCheckButton.setImage(#imageLiteral(resourceName: "Unchecked"), for: .normal)
		}
		else {
			isActive = true
			firstCheckButton.setImage(#imageLiteral(resourceName: "Checked"), for: .normal)
		}
	}

	@IBAction func secondCheckedButton(_ sender: Any) {
		if isSecondActive {
			isSecondActive = false
			secondCheckButton.setImage(#imageLiteral(resourceName: "Unchecked"), for: .normal)
		} else {
			isSecondActive = true
			secondCheckButton.setImage(#imageLiteral(resourceName: "Checked"), for: .normal)
		}
	}
	@IBAction func thirdCheckedButton(_ sender: Any) {
		if isThirdActive {
			isThirdActive = false
			thirdCheckButton.setImage(#imageLiteral(resourceName: "Unchecked"), for: .normal)
		} else {
			isThirdActive = true
			thirdCheckButton.setImage(#imageLiteral(resourceName: "Checked"), for: .normal)
		}
	}
	@IBAction func fourthCheckedButton(_ sender: Any) {
		if isFourthActive {
			isFourthActive = false
			fourthCheckButton.setImage(#imageLiteral(resourceName: "Unchecked"), for: .normal)
		} else {
			isFourthActive = true
			fourthCheckButton.setImage(#imageLiteral(resourceName: "Checked"), for: .normal)
		}
	}
}
