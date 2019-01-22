//
//  ViewController.swift
//  SampleTableView2
//
//  Created by 原田摩利奈 on 2019/01/17.
//  Copyright © 2019 原田摩利奈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var showImageTableView: UITableView!
    var imageNameArray = ["image1.HEIC","image2.JPG", "image3.JPG","image4.HEIC", "image5.JPG", "image6.JPG", "image7.JPG", "image8.JPG", "image9.JPG", "image10.JPG",]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UIImage(named: imageNameArray[0])
        showImageTableView.dataSource = self
        showImageTableView.delegate = self
        self.showImageTableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }
}

extension ViewController: UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = showImageTableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        cell.setImage(imageData:UIImage(named: imageNameArray[indexPath.row])!)
        cell.setText(text: imageNameArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}



