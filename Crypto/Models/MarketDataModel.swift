//
//  MarketDataModel.swift
//  Crypto
//
//  Created by Uday Gajera on 25/01/24.
//

import Foundation

//https://api.coingecko.com/api/v3/global

/*
 JSON response:
 {
   "data": {
     "active_cryptocurrencies": 12435,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 983,
     "total_market_cap": {
       "btc": 40772767.1567264,
       "eth": 736151785.6860783,
       "ltc": 24921228857.37496,
       "bch": 6909937445.906587,
       "bnb": 5527049037.669622,
       "eos": 2394017683233.8696,
       "xrp": 3197589584911.55,
       "xlm": 14585729209517.43,
       "link": 118332521286.48418,
       "dot": 252077878765.26865,
       "yfi": 234010146.78383183,
       "usd": 1625789039765.3777,
       "aed": 5971360564154.233,
       "ars": 1337130155110306.8,
       "aud": 2468398105927.8574,
       "bdt": 178507552584170.22,
       "bhd": 612842804328.5996,
       "bmd": 1625789039765.3777,
       "brl": 8010134161589.867,
       "cad": 2196510901651.7349,
       "chf": 1406122179446.5164,
       "clp": 1481597809828585.5,
       "cny": 11524405608376.875,
       "czk": 36952071348115.29,
       "dkk": 11128930798664.898,
       "eur": 1492612530572.994,
       "gbp": 1277553156392.83,
       "gel": 4332727790974.7173,
       "hkd": 12708874213297.922,
       "huf": 574862746570640.2,
       "idr": 25783384548028544,
       "ils": 6024325519491.716,
       "inr": 135133248726447.72,
       "jpy": 240061164480936.03,
       "krw": 2174187712599209.5,
       "kwd": 500019548125.0396,
       "lkr": 518077843808487.3,
       "mmk": 3415688605220084.5,
       "mxn": 28024701151859.637,
       "myr": 7688356369050.454,
       "ngn": 1464722119595820.2,
       "nok": 17001266178196.098,
       "nzd": 2657394456011.543,
       "php": 91734328796874.38,
       "pkr": 454865045913500.3,
       "pln": 6533197488938.297,
       "rub": 144450409973932.53,
       "sar": 6096728408588.628,
       "sek": 16943888831404.666,
       "sgd": 2178232155477.6516,
       "thb": 58062888378430.375,
       "try": 49232111186394.32,
       "twd": 50936783510369.25,
       "uah": 60992680536476.61,
       "vef": 162790256551.70724,
       "vnd": 40014500079433200,
       "zar": 30765131157288.188,
       "xdr": 1221816230742.556,
       "xag": 71128709452.77596,
       "xau": 806749037.3123736,
       "bits": 40772767156726.4,
       "sats": 4077276715672640
     },
     "total_volume": {
       "btc": 1405010.801994271,
       "eth": 25367451.927424062,
       "ltc": 858774083.421677,
       "bch": 238113266.02594385,
       "bnb": 190459567.5644927,
       "eos": 82496748189.28693,
       "xrp": 110187466302.58919,
       "xlm": 502617519570.4014,
       "link": 4077684254.189728,
       "dot": 8686487754.132626,
       "yfi": 8063882.020656717,
       "usd": 56023942497.054924,
       "aed": 205770338397.43228,
       "ars": 46076890106104.19,
       "aud": 85059863342.60103,
       "bdt": 6151288154033.065,
       "bhd": 21118281148.20738,
       "bmd": 56023942497.054924,
       "brl": 276025538791.5321,
       "cad": 75690755343.04857,
       "chf": 48454323530.507774,
       "clp": 51055179036991.09,
       "cny": 397125716390.3736,
       "czk": 1273351381832.8105,
       "dkk": 383497836354.0222,
       "eur": 51434741247.40857,
       "gbp": 44023894133.898155,
       "gel": 149303806754.65088,
       "hkd": 437941959696.60236,
       "huf": 19809505827533.664,
       "idr": 888483571956336.8,
       "ils": 207595486396.1015,
       "inr": 4656629593949.825,
       "jpy": 8272397307215.758,
       "krw": 74921508516283.11,
       "kwd": 17230443634.681686,
       "lkr": 17852724197669.3,
       "mmk": 117703058223538.95,
       "mxn": 965718311187.2327,
       "myr": 264937224068.57214,
       "ngn": 50473650513871.64,
       "nok": 585855812437.9026,
       "nzd": 91572590633.94116,
       "php": 3161122775353.2456,
       "pkr": 15674440258162.746,
       "pln": 225130980397.68033,
       "rub": 4977694684928.792,
       "sar": 210090456651.26538,
       "sek": 583878615459.2954,
       "sgd": 75060878157.55414,
       "thb": 2000820426366.9653,
       "try": 1696515906216.9653,
       "twd": 1755258130403.9822,
       "uah": 2101779716518.4055,
       "vef": 5609677362.230108,
       "vnd": 1378881267290423.8,
       "zar": 1060152268660.2694,
       "xdr": 42103225313.2717,
       "xag": 2451062610.710625,
       "xau": 27800200.74588852,
       "bits": 1405010801994.271,
       "sats": 140501080199427.11
     },
     "market_cap_percentage": {
       "btc": 48.09138149644862,
       "eth": 16.338547302271483,
       "usdt": 5.874461196364026,
       "bnb": 2.7874337737402675,
       "sol": 2.3250641408228656,
       "xrp": 1.7007284630055672,
       "usdc": 1.5891028247950294,
       "steth": 1.2710442628730947,
       "ada": 1.0271743818061234,
       "doge": 0.6814269283027556
     },
     "market_cap_change_percentage_24h_usd": -0.6506352400983803,
     "updated_at": 1706186943
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPrecentString()
        }
        return ""
    }
    
}

