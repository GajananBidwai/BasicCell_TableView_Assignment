//
//  ViewController.swift
//  iOS_TableView_Assignment
//
//  Created by Mac on 03/01/24.
//

import UIKit

class ViewController: UIViewController {

    var studentNameArray = ["Gajanan" , "Harsh" , "Amey" , "Ashitosh" , "Hrutik" , "Aditya"]
    var studentTableViewCell : StudentTableViewCell?
    
    @IBOutlet weak var studentTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       initliazeTableView()
        registerXIBWithTableView()
    }
    
    func initliazeTableView()
    {
        studentTableView.dataSource = self
        studentTableView.delegate = self
    }
    func registerXIBWithTableView()
    {
        let uinib = UINib(nibName: "StudentTableViewCell", bundle: nil)
        studentTableView.register(uinib, forCellReuseIdentifier: "StudentTableViewCell")
    }

}
extension ViewController : UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        90.5
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
}
extension ViewController : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studentNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        studentTableViewCell = self.studentTableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell") as! StudentTableViewCell?
        
        studentTableViewCell?.studentNameLabel.text = studentNameArray[indexPath.row]
        return studentTableViewCell!
        

    }
    
    
}


