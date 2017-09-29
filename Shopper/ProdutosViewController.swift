//
//  ProdutosViewController.swift
//  Shopper
//
//  Created by Daniel Teodoro on 28/09/17.
//  Copyright © 2017 Daniel Teodoro. All rights reserved.
//

import UIKit

class ProdutosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var listTableView: UITableView!
    var productsArray: NSMutableArray! = NSMutableArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        setMockData()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setMockData(){
        let product = NSMutableDictionary.init()
        product.setValue("Sabão", forKey: "product")
        product.setValue("sabao_clarim", forKey: "imageUrl")
        product.setValue("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", forKey: "answer")
        
        let product2 = NSMutableDictionary.init()
        product2.setValue("Detergente", forKey: "product")
        product2.setValue("detergente", forKey: "imageUrl")
        product2.setValue("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", forKey: "answer")
        
        let product3 = NSMutableDictionary.init()
        product3.setValue("Água Sanitária", forKey: "product")
        product3.setValue("agua_sanitaria", forKey: "imageUrl")
        product3.setValue("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", forKey: "answer")
        
        let product4 = NSMutableDictionary.init()
        product4.setValue("Sabão em pó", forKey: "product")
        product4.setValue("sabao-em-po", forKey: "imageUrl")
        product4.setValue("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", forKey: "answer")
        
        let product5 = NSMutableDictionary.init()
        product5.setValue("Limpa Vidros", forKey: "product")
        product5.setValue("limpa-vidros", forKey: "imageUrl")
        product5.setValue("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", forKey: "answer")
        
        let product6 = NSMutableDictionary.init()
        product6.setValue("Passatempo ", forKey: "product")
        product6.setValue("passatempo", forKey: "imageUrl")
        product6.setValue("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", forKey: "answer")
        
        let product7 = NSMutableDictionary.init()
        product7.setValue("Cereal Matinal", forKey: "product")
        product7.setValue("cereal_matinal", forKey: "imageUrl")
        product7.setValue("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", forKey: "answer")
        
        let product8 = NSMutableDictionary.init()
        product8.setValue("Pó de café", forKey: "product")
        product8.setValue("po-de-cafe", forKey: "imageUrl")
        product8.setValue("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", forKey: "answer")
        
        let product9 = NSMutableDictionary.init()
        product9.setValue("Açucar", forKey: "product")
        product9.setValue("acucar", forKey: "imageUrl")
        product9.setValue("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", forKey: "answer")
        
        let product10 = NSMutableDictionary.init()
        product10.setValue("Arroz", forKey: "product")
        product10.setValue("arroz", forKey: "imageUrl")
        product10.setValue("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", forKey: "answer")
        
        let cleaningProductsArray: NSMutableArray! = NSMutableArray()
        let foodProductsArray: NSMutableArray! = NSMutableArray()
        
        cleaningProductsArray?.addObjects(from: [ product, product2, product3, product4, product5])
        foodProductsArray?.addObjects(from: [ product6, product7, product8, product9, product10])
        productsArray?.addObjects(from: [cleaningProductsArray, foodProductsArray])
        
        listTableView.delegate = self
        listTableView.dataSource = self
        listTableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "productCell")
    }
    
    //MARK: - TableView
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Limpeza"
        } else{
            return "Alimentos"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return (productsArray.object(at: section) as! NSMutableArray).count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath as IndexPath) as! ProductTableViewCell
        
        cell.setProductCell(dictionary: (productsArray.object(at: indexPath.section) as! NSMutableArray).object(at: indexPath.row) as! NSDictionary)
        
        return cell
    }

}
