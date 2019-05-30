//
//  ViewController.swift
//  RandomNumbers
//
//  Created by Carlos on 5/26/19.
//  Copyright © 2019 oSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var tituloApp: UILabel!
    @IBOutlet weak var opcionesSegmentedControl: UISegmentedControl!
    @IBOutlet weak var reiniciarButton: UIButton!
    @IBOutlet weak var contadorLabel: UILabel!
    @IBOutlet weak var historiaLabel: UILabel!
    @IBOutlet weak var numeroButton: UIButton!
    
    // MARK: - Constantes
    
    private let simboloSinNumero = "🎲"
    
    // MARK: - Variables
    
    private var numeroMin: Int = 0
    private var numeroMax: Int = 1
    private var numeroActual: Int = -1
    private var contador: Int = 0
    private var historial: String = ""
    
    // MARK: - Acciones
    
    @IBAction func reiniciarButtonAction(_ sender: UIButton) {
        reiniciar()
    }
    
    @IBAction func numeroButtonAction(_ sender: UIButton) {
        generarNumero()
    }
    
    // MARK: - Métodos
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        reiniciar()
    }

    func reiniciar() {
        numeroActual = -1
        historial = ""
        contador = 0
        contadorLabel.text = ""
        historiaLabel.text = ""
        numeroButton.setTitle(simboloSinNumero, for: .normal)
    }

    func generarNumero() {
        // lógica para generar un número aleatorio entre numeroMin y numeroMax
        numeroActual = numeroMax   // mientras

        // actualizar el contador
        contador += 1
        // actualizar el historial
        historial += " " + String(numeroActual)
        // desplegar datos
        contadorLabel.text = String(contador)
        historiaLabel.text = historial
        numeroButton.setTitle(String(numeroActual), for: .normal)
    }
}

