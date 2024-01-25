//
//  HomeStatsView.swift
//  Crypto
//
//  Created by Uday Gajera on 25/01/24.
//

import SwiftUI

struct HomeStatsView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @Binding var showPortfolio: Bool
    
    var body: some View {
        HStack {
            ForEach(vm.statistics) { stat in
                StatisticView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
        }
        .frame(width: UIScreen.main.bounds.width,
               alignment: showPortfolio ? .trailing : .leading)
    }
}

struct HomeStatsView_Previews: PreviewProvider{
    static var previews: some View{
        HomeStatsView(showPortfolio: .constant(false))
            .environmentObject(dev.homeVM)
    }

}
