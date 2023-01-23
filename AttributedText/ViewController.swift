//
//  ViewController.swift
//  AttributedText
//
//  Created by Konstantyn Koroban on 14/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func makeAttributedText( for quote: String, for searchField: String) -> NSAttributedString {
        let headAttributredString = NSAttributedString(string: quote)
        let modifiedAttributedString = NSMutableAttributedString(attributedString: headAttributredString)
        let range = NSString(string: quote).range(of: searchField, options: .caseInsensitive)
        modifiedAttributedString.addAttribute(.backgroundColor, value: UIColor.orange, range: range)
        return modifiedAttributedString
    }
    
    @IBAction func searchAction(_ sender: Any) {
        if let searchField = searchTextField.text, let text = textView.text {
            textView.attributedText = makeAttributedText(for: text, for: searchField)
        }
    }
}


