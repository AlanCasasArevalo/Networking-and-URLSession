//
//  Constants.swift
//  URLSession0
//
//  Created by Alan Casas on 9/12/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import UIKit

let CONSTANTS = Constants()

struct Constants {
    let CALLS = BaseUrls()
    let COLORS = BaseColors()
    let ERROR_MESSAGE = ErrorMessages()
}

struct BaseUrls {
    let BASIC_URL = "https://itunes.apple.com/search?"
}

struct BaseColors {
    let BASICLINECOLOR = UIColor(red: 209/255, green: 209/255, blue: 209/255, alpha: 1)
    let PROGRESSVOICELINECOLOR = UIColor(red: 85/255, green: 189/255, blue: 135/255, alpha: 1)
    let PROGRESSDATALINECOLOR = UIColor(red: 178/255, green: 105/255, blue: 201/255, alpha: 1)
    let AVATARIMAGECOLOR = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1)
}

struct ErrorMessages {
    let SOMTHING_WAS_WRONG = "LO SENTIMOS, Algo ha salido mal por favor intentelo mas tarde"
    let INTERNET_CONECTION_FAILED = "LO SENTIMOS, PARECE QUE TIENES PROBLEMAS CON TU CONEXION DE INTERNET"
    let AUTHENTICATION_ERROR_511 = "LO SENTIMOS, PARECE QUE HAY PROBLEMAS DE USUARIO O PASSWORD"
    let SERVER_ERROR_500 = "LO SENTIMOS, PARECE QUE HAY PROBLEMAS DE USUARIO O PASSWORD"
    let COOKIE_ERROR_302 = "LO SENTIMOS, TU SESION HA CADUCADO"
    let USER_OR_PASSWORD_ERROR_403 = "LO SENTIMOS, TU NUMERO O PASSWORD NO SON CORRECTOS"
    let USER_OR_PASSWORD_ERROR_400 = "LO SENTIMOS, TU NUMERO O PASSWORD NO SON CORRECTOS"
    let USER_NOT_FOUND_ERROR_404 = "LO SENTIMOS, TU NUMERO NO FUE ENCONTRADO"
    let LOG_IN_NECCESSARY = "LO SENTIMOS, TIENES QUE INICIAR LA SESION EN LA APP MI ORANGE"
    let WIDGET_TOGGLE_DISABLE = "LO SENTIMOS, NO PODEMOS OFRECERTE ESTE SERVICIO EN ESTE MOMENTO"
    let LINE_SELECTION_IS_NECESSARY = "POR FAVOR RELIZAR UNA SELECION DE LINEA DESE LA APP"
}















