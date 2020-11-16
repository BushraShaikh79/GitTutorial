
//  ViewController.swift
//  CricketAssignment
//
//  Created by Bushra on 21/09/20.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- outlets and variable
    @IBOutlet var viewModel: CricketVM!
    @IBOutlet var recordTable: UITableView!
    var flag = 0
    var backEnable = false
    
    //MARK:- view lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print("flag \(flag)")
        
        viewModel.parse(flag: flag, completion: { _ in
            self.recordTable.reloadData()
            self.setNavigationBar(flag: self.flag)
        })
    }
    
    //MARK:- menu option
    func setNavigationBar(flag: Int) {
        if flag == 0 {
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: Constants.right_bar_button.rawValue), style: .done, target: self, action: #selector(sortRecord(sender:)))
            if backEnable {
                self.navigationItem.hidesBackButton = true
            }
        }else {
            self.navigationItem.title = ""
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: Constants.left_bar_button.rawValue), style: .done, target: self, action: #selector(backNavigation(sender:)))
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: Constants.sort_fname.rawValue, style: .done, target: self, action: #selector(sortRecord(sender:)))
        }
    }
    
    @objc func sortRecord(sender: UIBarButtonItem) {
        if sender.title == Constants.sort_fname.rawValue {
            flag = 1
           self.navigationItem.rightBarButtonItem!.title = Constants.sort_lname.rawValue
        }else if sender.title == Constants.sort_lname.rawValue  {
            flag = 2
            self.navigationItem.rightBarButtonItem!.title = Constants.sort_fname.rawValue
        }else {
            flag = 0
        }
        viewModel.sortData(flag: flag, completion: { _ in
            self.recordTable.reloadData()
        })
    }
    
    @objc func backNavigation(sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "MainStoryID") as! ViewController
        view.backEnable = true
        self.navigationController?.pushViewController(view, animated: true)
    }
}

//MARK:- tableview delegates
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = recordTable.dequeueReusableCell(withIdentifier: "recordID", for: indexPath) as! RecordCell
        
        if flag == 0 {
            cell.lblCountry.textColor = UIColor.black
            cell.lblCountry.text = viewModel.titleForitemAtIndexPath(flag: flag, indexPath: indexPath)
            cell.accessoryType = .disclosureIndicator
        } else {
            cell.accessoryType = .none
            if viewModel.playersList![indexPath.row].captain != nil && viewModel.playersList![indexPath.row].captain == true {
                cell.lblCountry.textColor = UIColor.red
                cell.lblCountry.text = "Captain - \(viewModel.titleForitemAtIndexPath(flag: flag, indexPath: indexPath))"
            }else {
                cell.lblCountry.textColor = UIColor.black
                cell.lblCountry.text = viewModel.titleForitemAtIndexPath(flag: flag, indexPath: indexPath)
                
            }
        }
    
        return cell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItemsInSection(flag: flag, section: section)
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        flag = 1
        viewModel.getPlayersList(param: viewModel.countryList![indexPath.row]) { _ in
            setNavigationBar(flag: flag)
             self.recordTable.reloadData()
        }
    }
    
    
}
