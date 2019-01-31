//
//  KrovlyaTableViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 08.11.17.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class CatalogMenuTableViewController: UITableViewController {
    
    var catalog: [CatalogMenu] = [
        CatalogMenu(name: "Профнастил", image: "profnastil.jpg", detail: "Стальной профилированный лист, применяется в строительстве в качестве кровельного или облицовачного материала."),
        CatalogMenu(name: "Металлочерепица", image: "metallocherepica.jpg", detail: "Разновидность профилированного стального оцинкованного листа, рисунок на котором имитирует натуральную черепицу."),
        CatalogMenu(name: "Фальцевая кровля", image: "krovla.jpg", detail: "Конструкция из стали или цветных металлов, в которой для соединения отдельных элементов покрытия используется фальцевое соединение."),
         CatalogMenu(name: "Металлосайдинг", image: "metallosaiding.jpg", detail: "Защищает здание от неблагоприятных природных воздействий и одновременно используется в качестве декоративной отделки."),
        CatalogMenu(name: "Водосточная система и снегозадержатели", image: "vodostock.jpg", detail: "Для защиты кровли, фасада и фундамента здания от негативного воздействия атмосферных осадков."),
//        CatalogMenu(name: "Снегозадержатели и кровельные лестницы", image: "stopSnow.jpg", detail: "Защищают жильцов и имущество от схода снега с кровли."),
       
        CatalogMenu(name: "Евроштакетник", image: "zabor.jpg", detail: "Хорошая альтернатива забору из профнастила и деревянного штакетника. Металлический штакетник, при правильной установке, будет вам служить долго и радовать взгляд своей оригинальностью.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return catalog.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatalogCell", for: indexPath) as! CatalogMenuTableViewCell

        cell.catalogNameLabel.text = catalog[indexPath.row].name
        cell.catalogDetailLabel.text = catalog[indexPath.row].detail
        cell.catalogImage.image = UIImage(named: catalog[indexPath.row].image)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let viewControllerName = catalog[indexPath.row].name
            let destinationViewController = storyboard?.instantiateViewController(withIdentifier: viewControllerName)
            self.navigationController?.pushViewController(destinationViewController!, animated: true)
    }
}
