//
//  Facil.swift
//  ProyectoFinal
//
//  Created by Antonio Aaron Hernandez.
//

import UIKit

class Facil: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var clickButton: UIButton!
    
    @IBOutlet weak var numClicks: UILabel!
    @IBOutlet weak var temporizador: UILabel!
    
    //Numero de clicks empieza en cero y aumenta mediante los clicks
    var clicks = 0 {
        didSet{
            numClicks.text = "Clicks: \(clicks)"
        }
    }
    
    //Tiempo restante del juego para finalizarlo
    var timer = 10 {
        didSet{
            temporizador.text = "Tiempo restante: \(timer)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Hace los bordes circulares del boton
        clickButton.layer.cornerRadius = 16
        
        //Desabilitar y habilitar botones
        startButton.isUserInteractionEnabled = true
        clickButton.isUserInteractionEnabled = false
    }

    @IBAction func startButtonAction(_ sender: Any) {
        //Comenzar el temporizador
        tiempoRestante()
        
        //Desabilitar y habilitar botones
        startButton.isUserInteractionEnabled = false
        clickButton.isUserInteractionEnabled = true
    }
    
    @IBAction func clickButtonAction(_ sender: Any) {
        clicks += 1
    }
    
    //Funcion que calcula el tiempo restante
    func tiempoRestante(){
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            if self.timer > 0 {
                self.timer -= 1
                self.tiempoRestante()
            } else {
                self.temporizador.text = "Se acabo el tiempo"
                
                //Desabilitar y habilitar botones
                self.startButton.isUserInteractionEnabled = true
                self.clickButton.isUserInteractionEnabled = false
            }
        }
    }
}
