//
//  TextTableViewCell.swift
//  Elya Assignment
//
//  Created by Junior on 14/09/2019.
//  Copyright © 2019 Jude Botchwey. All rights reserved.
//

import UIKit

class TextTableViewCell: UITableViewCell {

    
    var topInset: CGFloat = 0
    var leftInset: CGFloat = 0
    var bottomInset: CGFloat = 0
    var rightInset: CGFloat = 0
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var displayTextLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 3
        self.layer.borderWidth = 0.5
        self.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func configureCell(username: String, text: String, date: String){
        userNameLabel.text = username
        displayTextLabel.text = text
        dateLabel.text = date
    }
    
    override func layoutMarginsDidChange() {
        super.layoutMarginsDidChange()
        self.layoutMargins = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
    }
    
    
    
    

}
