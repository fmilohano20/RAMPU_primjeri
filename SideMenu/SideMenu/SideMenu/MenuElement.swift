//
//  MenuElement.swift
//  SideMenu
//
//  Created by ASELab on 12.10.2022..
//

import UIKit

enum MenuTitle : Int, CustomStringConvertible
{
    case Calls
    case Contacts
    case Favorites
    case Settings
    
    var description: String{
        switch self{
        case .Calls: return "Calls"
        case .Contacts: return "Contacts"
        case .Favorites: return "Favorites"
        case .Settings: return "Settings"
            
        }
    }
    
}
class MenuElement: UITableViewCell {
    
    let Elementlabel : UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "Testing"
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .darkGray
        addSubview(Elementlabel)
        Elementlabel.translatesAutoresizingMaskIntoConstraints = false
        Elementlabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        Elementlabel.leftAnchor.constraint(equalTo: leftAnchor,constant: 14).isActive = true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
