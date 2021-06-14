//
//  ViewController.swift
//  Creachine
//
//  Created by Rahmannur Rizki Syahputra on 07/06/21.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource{
	
	@IBOutlet weak var promptTableView: UITableView!
	@IBOutlet weak var borderView: UIView!
	
	@IBOutlet weak var randomizeButton: UIButton!
	@IBOutlet weak var setIdeaButton: UIButton!
	@IBOutlet weak var filterButton: UIButton!
	
	@IBAction func setIdea(_ sender: Any) {
	}
	@IBAction func randomize(_ sender: Any) {
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
//		let filterButton = openFilterButton(frame: CGRect(x: 248, y: 130, width: 102, height: 32))
//		view.addSubview(filterButton)
//		filterButton.configure(with: openfilterButtonViewModel(text: "Filter off", icon: UIImage(systemName: "line.horizontal.3.decrease.circle.fill"), backgroudColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
        
        //MARK: -CUSTOMIZE BUTTON
		filterButton.layer.cornerRadius = 9
        filterButton.layer.shadowRadius = 2.5
        filterButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        filterButton.layer.shadowOpacity = 0.3
        filterButton.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
		
		setIdeaButton.layer.cornerRadius = 18
		setIdeaButton.layer.shadowRadius = 3
		setIdeaButton.layer.shadowOffset = CGSize(width: 0, height: 5)
		setIdeaButton.layer.shadowOpacity = 0.3
		setIdeaButton.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
		
		randomizeButton.layer.cornerRadius = 18
		randomizeButton.layer.borderWidth = 4
		randomizeButton.layer.shadowRadius = 3
		randomizeButton.layer.shadowOffset = CGSize(width: 0, height: 5)
		randomizeButton.layer.shadowOpacity = 0.3
		randomizeButton.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)

        
        //MARK: -CUSTOMIZE TABLEVIEW
		borderView.layer.cornerRadius = 22
		promptTableView.dataSource = self
		
        //Register
		let contentNib = UINib(nibName: "\(promptTableViewCell.self)", bundle: nil)
		
		self.promptTableView.register(contentNib, forCellReuseIdentifier: "contentCell")
	}
    
    
    //MARK: -SETUP TABLEVIEW
	func numberOfSections(in tableView: UITableView) -> Int {
		return 3
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "contentCell") as! promptTableViewCell
        
        //MARK: -CUSTOMIZE CELL: BORDER
		cell.contentHeaderView.layer.cornerRadius = 20
        cell.contentHeaderView.layer.borderWidth = 4.5
        cell.contentHeaderView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        cell.contentBodyView.layer.cornerRadius = 20
        cell.contentBodyView.layer.borderWidth = 4.5
		cell.contentBodyView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        //MARK: -CUSTOMIZE CELL: HEADER TEXT
		if indexPath.section == 0 {
			cell.contentHeaderLabel.text = "Content"
		} else if indexPath.section == 1{
			cell.contentHeaderLabel.text = "Color"
		} else {
			cell.contentHeaderLabel.text = "Style"
		}
		
		return cell
	}

    //MARK: -STATUS BAR HIDDEN
    override var prefersStatusBarHidden: Bool {
        return true
    }
	
}

