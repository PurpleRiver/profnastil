//
//  StaketnikTableViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 01.12.2017.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class StaketnikTableViewController: UITableViewController {

    @IBOutlet weak var staketnikDescriptionLabel: UILabel!
    
    var staketnik: [Product] = [
    Product(name: "Металлический штакетник", image: [#imageLiteral(resourceName: "staketnik"), #imageLiteral(resourceName: "euroStaketnik2"), #imageLiteral(resourceName: "staketnik3")], description: "Значительно превосходит профнастил и деревянный штакетник по качественным и эстетическим свойствам. Изготовлен из оцинкованного металла с полимерным защитно-декоративным покрытием.", parameter1: "Ширина штакетника 153 мм", parameter2: "", parameter3: "Высота профиля 18 мм", parameter4: "Толщина  металла до 0,5 мм", parameter5: "Длина до 2,5 м", price: "от 48 руб"),
    Product(name: "Евроштакетник", image: [#imageLiteral(resourceName: "euroStaketnik"), #imageLiteral(resourceName: "euroStaketnik2-1")], description: "Металлический евроштакетник изготовленный из оцинкованного металла с полимерным защитно-декоративным покрытием. Профиль изготавливается из стали высокого качества, 275г/м2 цинка, грунтовка, 25мк полимерное покрытие с 1-й или 2-х сторон.", parameter1: "Ширина штакетника 153 мм", parameter2: "", parameter3: "Высота профиля 18 мм", parameter4: "Толщина  металла до 0,5 мм", parameter5: "Длина до 2,5 м", price: "от 48 руб"),
    Product(name: "Заборный профиль", image: [#imageLiteral(resourceName: "zaborProf"), #imageLiteral(resourceName: "zaborPfofile")], description: "Заборный профиль используется для возведения различных перегородок и стенок. Экономичное решение для возведение забора вокруг участка. Преимущества в его высокой прочности и умеренной цене.", parameter1: "Ширина штакетника 114 мм", parameter2: "", parameter3: "Высота профиля 20 мм", parameter4: "Толщина  металла до 0,5 мм", parameter5: "Длина до 12 м", price: "от 196 руб")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        staketnikDescriptionLabel.text? = "Металлический евроштакетник — это профиль, изготовленный из оцинкованного металла с полимерным защитно-декоративным покрытием. Изготавливается из стали высокого качества, 275г/м2 цинка, грунтовка, 25мк полимерное покрытие с 1-й или 2-х сторон."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return staketnik.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "staketnikCell", for: indexPath) as! StaketnikTableViewCell
        
        cell.staketnikImage.image = staketnik[indexPath.row].image?.first
        cell.staketnikNameLabel.text = staketnik[indexPath.row].name
        cell.staketnikDetailLabel.text = staketnik[indexPath.row].description

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProductDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DescriptionOfProductViewController
                
                destinationController.product = staketnik[indexPath.row]
            }
        }
    }
}
