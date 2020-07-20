//
//  TextFieldCell.swift
//  TexFieldCellDelegate
//
//  Created by Ary on 20/07/2020.
//  Copyright © 2020 Ary. All rights reserved.
//

import UIKit

class TextFieldCell: UITableViewCell {

    var textField:UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        textField = UITextField(frame: CGRect(x: 60, y: 100, width: 240, height: 30))
        textField.backgroundColor = .white
        textField.placeholder = "Type here"
        textField.font = .systemFont(ofSize: 14)
        textField.clearButtonMode = .whileEditing
        self.accessoryView = self.textField
        self.textLabel?.font = .systemFont(ofSize: 14)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
