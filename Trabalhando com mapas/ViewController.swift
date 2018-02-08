//
//  ViewController.swift
//  Trabalhando com mapas
//
//  Created by Ronaldo Cagliari on 07/02/2018.
//  Copyright © 2018 tresrw.com.br. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapa: MKMapView!
    
    // Configura o gerenciador de local - location manager
    var gerenciadorLocal = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Essa classe (contexto) será responsável por gerenciar o nosso gerenciador local
        gerenciadorLocal.delegate = self
        // define a melhor localização possível
        gerenciadorLocal.desiredAccuracy = kCLLocationAccuracyBest
        // Pedir autorização ao usuário para utilizar a localização
        gerenciadorLocal.requestWhenInUseAuthorization()
        // Atualizando a localização d usuário
        gerenciadorLocal.startUpdatingLocation()
        
        
        
        
        /*
        // Passo 4) Configurando a latitude e longitude do ponto inicial do mapa.
        let latitude: CLLocationDegrees = -23.533834
        let longitude: CLLocationDegrees = -46.680305
        
        // Passo 6) Configura o Delta -> Quanto menor o valor mais ele aproxima o zoom
        let deltaLatitude: CLLocationDegrees = 0.01
        let deltaLongitude: CLLocationDegrees = 0.01
        
        // Passo 3) Configurando a localização e a área de visualização
        // Recebe latitude e longitude
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        // Passo 5) Configurar área de visualização
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpanMake(deltaLatitude, deltaLongitude)
        
        // Passo 2) Configurando uma Região com localização e área de visualização
        let regiao: MKCoordinateRegion = MKCoordinateRegionMake(localizacao, areaVisualizacao)
        
        // Passo 1) Configurando a região
        mapa.setRegion(regiao, animated: true)
        
        // Incluindo uma anotação (Pin)
        let anotacao = MKPointAnnotation()
        
        // Configurando a anotação
        anotacao.coordinate = localizacao
        anotacao.title = "Minha Casa"
        anotacao.subtitle = "Nada como nosso lar!"
        
        // Adiciona anotação no Mapa
        mapa.addAnnotation(anotacao)
         */
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

