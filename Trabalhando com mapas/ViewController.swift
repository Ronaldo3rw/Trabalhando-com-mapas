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
        let latitude: CLLocationDegrees = -23.533834 // Passo 4) Configurando a latitude e longitude do ponto inicial do mapa.
        let longitude: CLLocationDegrees = -46.680305
        let deltaLatitude: CLLocationDegrees = 0.01 // Passo 6) Configura o Delta -> Quanto menor o valor mais ele aproxima o zoom
        let deltaLongitude: CLLocationDegrees = 0.01
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude) // Passo 3) Configurando a localização e a área de visualização - Recebe latitude e longitude
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpanMake(deltaLatitude, deltaLongitude) // Passo 5) Configurar área de visualização
        let regiao: MKCoordinateRegion = MKCoordinateRegionMake(localizacao, areaVisualizacao)  // Passo 2) Configurando uma Região com localização e área de visualização
        mapa.setRegion(regiao, animated: true) // Passo 1) Configurando a região
        let anotacao = MKPointAnnotation() // Incluindo uma anotação (Pin)
        anotacao.coordinate = localizacao // Configurando a anotação
        anotacao.title = "Minha Casa"
        anotacao.subtitle = "Nada como nosso lar!"
        mapa.addAnnotation(anotacao) // Adiciona anotação no Mapa
        */
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let localizacaoUsuario: CLLocation = locations.last!
        
        // Monta exibição do mapa
        let latitude: CLLocationDegrees = localizacaoUsuario.coordinate.latitude
        let longitude: CLLocationDegrees = localizacaoUsuario.coordinate.longitude
        let deltaLatitude: CLLocationDegrees = 0.01 // Passo 6) Configura o Delta -> Quanto menor o valor mais ele aproxima o zoom
        let deltaLongitude: CLLocationDegrees = 0.01
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude) // Passo 3) Configurando a localização e a área de visualização - Recebe latitude e longitude
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpanMake(deltaLatitude, deltaLongitude) // Passo 5) Configurar área de visualização
        let regiao: MKCoordinateRegion = MKCoordinateRegionMake(localizacao, areaVisualizacao)  // Passo 2) Configurando uma Região com localização e área de visualização
        mapa.setRegion(regiao, animated: true) // Passo 1) Configurando a região
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

