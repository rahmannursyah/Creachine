//
//  filterViewController.swift
//  Creachine
//
//  Created by Rahmannur Rizki Syahputra on 10/06/21.
//

import UIKit

class filterViewController: UIViewController, UITableViewDataSource {

	@IBOutlet weak var filterBorderView: UIView!
	@IBOutlet weak var filterTableView: UITableView!
	
	@IBOutlet weak var applyButton: UIButton!
	@IBOutlet weak var clearAllButton: UIButton!
	@IBAction func clearAll(_ sender: Any) {
	}
	@IBAction func apply(_ sender: Any) {
	}
	@IBAction func exitModal(_ sender: Any) {
		self.dismiss(animated: true, completion: nil)
	}
	override func viewDidLoad() {
        super.viewDidLoad()
		
		clearAllButton.layer.cornerRadius = 18
		clearAllButton.layer.shadowRadius = 3
		clearAllButton.layer.shadowOffset = CGSize(width: 0, height: 5)
		clearAllButton.layer.shadowOpacity = 0.3
		clearAllButton.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
		
		applyButton.layer.cornerRadius = 18
		applyButton.layer.borderWidth = 4
		applyButton.layer.shadowRadius = 3
		applyButton.layer.shadowOffset = CGSize(width: 0, height: 5)
		applyButton.layer.shadowOpacity = 0.3
		applyButton.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
		
		filterBorderView.layer.cornerRadius = 22
		//filterBorderView.layer.borderWidth = 10
		filterTableView.dataSource = self
		
		let filterNib = UINib(nibName: "\(filterTableViewCell.self)", bundle: nil)
		filterTableView.register(filterNib, forCellReuseIdentifier: "filterCell")
    }
    
	func numberOfSections(in tableView: UITableView) -> Int {
		return 3
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "filterCell") as! filterTableViewCell
		
		cell.filterHeaderView.layer.cornerRadius = 20
        cell.filterHeaderView.layer.borderWidth = 4.5
		cell.filterHeaderView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
		cell.filterBodyView.layer.cornerRadius = 20
        cell.filterBodyView.layer.borderWidth = 4.5
		cell.filterBodyView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
		
		
		if indexPath.section == 0 {
			cell.filterHeaderLabel.text = "Content"
			cell.firstFilterLabel.text = "Scene"
			cell.secondFilterLabel.text = "Fantasy"
			cell.thirdFilterLabel.text = "Object"
			cell.fourthFilterLabel.text = "Character"
		} else if indexPath.section == 1{
			cell.filterHeaderLabel.text = "Color"
			cell.firstFilterLabel.text = "Cool Tone"
			cell.secondFilterLabel.text = "Earth Tone"
			cell.thirdFilterLabel.text = "Pastel"
			cell.fourthFilterLabel.text = "Vibrant"
		} else {
			cell.filterHeaderLabel.text = "Style"
			cell.firstFilterLabel.text = "Anime"
			cell.secondFilterLabel.text = "Cartoon"
			cell.thirdFilterLabel.text = "Classic"
			cell.fourthFilterLabel.text = "(Your Own)"
		}
		
		return cell
	}
	
}
