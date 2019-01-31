//
//  FalsePanelTableViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 30.11.2017.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class FalsePanelTableViewController: UITableViewController {
    
    @IBOutlet weak var falsePanelDescriptionLabel: UILabel!
    
    var falsePanel: [Product] = [
        Product(name: "Панель фальцевая оцинкованная", image: [#imageLiteral(resourceName: "falsePanel1"), #imageLiteral(resourceName: "falsePanel2")], description: "Оцинкованная кровельная сталь – это сравнительно недорогой материал позволяет монтировать кровли любой сложности, с обеих сторон покрыта слоем цинка, что надежно защищает металл от коррозии", parameter1: "Ширина листа 560 мм", parameter2: "Толщина листа 0.5 мм", parameter3: "", parameter4: "", parameter5: "", price: "от 194 руб"),
        
        Product(name: "Панель фальцевая оцинкованная окрашенная", image: [#imageLiteral(resourceName: "falsePanel3"), #imageLiteral(resourceName: "falsePanel4")], description: "Стальной лист покрыт слоем цинка, на который сначала наносится слой грунта, после чего – проводится покраска листа. С изнаночной стороны наносится защитная краска, а с лицевой стороны – слой цветного полимера.", parameter1: "Ширина листа 560 мм", parameter2: "Толщина листа 0.5 мм", parameter3: "", parameter4: "", parameter5: "", price: "от 207 руб")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        falsePanelDescriptionLabel.text = " Фальцевая кровля получила свое название благодаря особому методу крепления металлических листов кровельного материала друг с другом. Ребра жесткости, полученные в процессе фальцевания, придают кровле дополнительную прочность и выразительность."
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return falsePanel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "falseCell", for: indexPath) as! PanelTableViewCell
        
        cell.falsePanelNameLabel.text = falsePanel[indexPath.row].name
        cell.falsePanelDetailLabel.text = falsePanel[indexPath.row].description
        cell.falsePanelDetailImage.image = falsePanel[indexPath.row].image?.first
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProductDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DescriptionOfProductViewController
                
                destinationController.product = falsePanel[indexPath.row]
            }
        }
    }
}

