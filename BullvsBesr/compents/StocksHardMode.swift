//
//  StocksHardMode.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 7/9/23.
//

import Foundation
import SwiftUI

struct StocksHardMode {
    let stocks: [StockHardMode] = [
        StockHardMode(name: "Apple", logo: "apple", tickerName: "AAPL", bullBearMarketScenarios: [
            StockMarketScenario(scenario: "Apple is in the recovery stage and has had a consistent increase in their stock price for the past quarter. Their gains have recently stalled, but they are releasing the new iPhone 15.", market: .bullish),
            StockMarketScenario(scenario: "Apple announced a breakthrough in their autonomous vehicle project, which has caused a surge in investor confidence and a spike in stock price.", market: .bullish),
            StockMarketScenario(scenario: "The recent release of Apple's latest product has exceeded expectations, leading to a surge in sales and a positive impact on the stock price.", market: .bullish),
            StockMarketScenario(scenario: "Apple has had a decline in shares this last year. The company has great brand loyalty and is expected to release an augmented/virtual reality (AR/VR) headset this quarter, which is expected to boost investor confidence.", market: .bearish),
            StockMarketScenario(scenario: "The slowdown in iPhone sales has negatively impacted Apple's stock price, and analysts predict a challenging period ahead for the company.", market: .bearish),
            StockMarketScenario(scenario: "Apple's latest earnings report fell short of expectations, causing a dip in stock price. Market uncertainties are adding to the bearish sentiment.", market: .bearish)
        ]),
        StockHardMode(name: "Tesla", logo: "tesla", tickerName: "TSLA", bullBearMarketScenarios: [
            StockMarketScenario(scenario: "The market is experiencing an uptrend, and Tesla stock has doubled in a month. However, Elon Musk just made headlines for purchasing Twitter, and he is going to allow all users freedom of speech on the platform.", market: .bullish),
            StockMarketScenario(scenario: "Tesla has unveiled its latest innovation, a groundbreaking energy storage solution, which has garnered significant investor interest and led to a surge in stock price.", market: .bullish),
            StockMarketScenario(scenario: "Tesla's partnership with a major technology company to develop advanced autonomous driving technology has fueled investor excitement and contributed to a bullish trend in the stock market.", market: .bullish),
            StockMarketScenario(scenario: "Tesla was ranked amongst the worst-performing stocks in 2022. At the beginning of this quarter, the company announced that they are rolling out a Semi-truck that can cover 500 miles before requiring a charge.", market: .bearish),
            StockMarketScenario(scenario: "The recent regulatory scrutiny and safety concerns regarding Tesla's autopilot feature have negatively impacted investor sentiment, leading to a decline in stock price.", market: .bearish),
            StockMarketScenario(scenario: "Tesla's production delays and supply chain challenges have resulted in lower-than-expected earnings, triggering a bearish trend in the market.", market: .bearish)
        ]),
        StockHardMode(name: "Verizon", logo: "verizon", tickerName: "VZ", bullBearMarketScenarios: [
                StockMarketScenario(scenario: "Verizon stock has been on an upward trend for the last month. Due to the trend, investors are purchasing shares of the stock, causing the price to increase more.", market: .bullish),
                StockMarketScenario(scenario: "Verizon has recently announced a strategic partnership with a leading streaming platform, attracting investors' attention and positively impacting the stock price.", market: .bullish),
                StockMarketScenario(scenario: "The rollout of Verizon's 5G network has been successful, leading to increased customer adoption and higher revenue, which has positively influenced the stock price.", market: .bullish),
                StockMarketScenario(scenario: "Verizon stock has been on a downward trend for the past 2 quarters. Recent news has come out that the company is having a recall on their Samsung Galaxy.", market: .bearish),
                StockMarketScenario(scenario: "Verizon's latest earnings report revealed a decline in subscriber growth and increased competition, resulting in a bearish sentiment among investors.", market: .bearish),
                StockMarketScenario(scenario: "The uncertainty surrounding the future of the telecommunications industry has negatively impacted Verizon's stock price, leading to a downward trend.", market: .bearish)
            ]),
            StockHardMode(name: "Walmart", logo: "walmart", tickerName: "WMT", bullBearMarketScenarios: [
                StockMarketScenario(scenario: "Walmart's strong performance in the online grocery market has attracted investors' attention, leading to a significant increase in stock price.", market: .bullish),
                StockMarketScenario(scenario: "Walmart's recent acquisition of a leading e-commerce company has positioned them as a key player in the online retail space, driving investor confidence.", market: .bullish),
                StockMarketScenario(scenario: "The company's robust quarterly earnings report and positive sales growth have contributed to a bullish trend in Walmart's stock price.", market: .bullish),
                StockMarketScenario(scenario: "Walmart has faced intense competition from online retailers, resulting in a decline in market share and investor concerns about the company's future.", market: .bearish),
                StockMarketScenario(scenario: "The recent labor strikes and increased scrutiny on employee wages have impacted Walmart's profitability and stock price.", market: .bearish),
                StockMarketScenario(scenario: "The company's expansion into international markets has faced challenges, leading to lower-than-expected earnings and a bearish sentiment in the market.", market: .bearish)
            ]),
            StockHardMode(name: "Amazon", logo: "amazon", tickerName: "AMZN", bullBearMarketScenarios: [
                StockMarketScenario(scenario: "Amazon's strong performance in the e-commerce space and their success with Amazon Web Services (AWS) have attracted investors' attention, leading to a significant increase in stock price.", market: .bullish),
                StockMarketScenario(scenario: "Amazon has announced a new subscription service that offers exclusive benefits to customers, which has increased investor confidence and positively impacted the stock price.", market: .bullish),
                StockMarketScenario(scenario: "The company's expansion into new markets and their focus on innovation have contributed to a bullish trend in Amazon's stock price.", market: .bullish),
                StockMarketScenario(scenario: "Amazon's recent earnings report fell short of expectations, causing a decline in stock price and investor concerns about the company's profit margins.", market: .bearish),
                StockMarketScenario(scenario: "Increased regulatory scrutiny and antitrust concerns surrounding Amazon's dominance in the market have negatively impacted investor sentiment and resulted in a decline in stock price.", market: .bearish),
                StockMarketScenario(scenario: "The ongoing labor disputes and worker rights issues have affected Amazon's reputation and investor confidence, leading to a bearish sentiment in the market.", market: .bearish)
            ]),
        StockHardMode(name: "EA", logo: "ea", tickerName: "EA", bullBearMarketScenarios: [
                 StockMarketScenario(scenario: "EA's latest release of a highly anticipated video game has been a huge success, driving up sales and positively impacting the stock price.", market: .bullish),
                 StockMarketScenario(scenario: "The company's strong performance in the esports industry and successful partnerships with professional gaming teams have attracted investors and contributed to a bullish trend in the market.", market: .bullish),
                 StockMarketScenario(scenario: "EA's innovative approach to virtual reality gaming has garnered significant attention and investor interest, resulting in a surge in stock price.", market: .bullish),
                 StockMarketScenario(scenario: "EA's recent earnings report fell short of expectations, causing a decline in stock price and investor concerns about the company's growth potential.", market: .bearish),
                 StockMarketScenario(scenario: "The increasing competition in the gaming industry and concerns over consumer spending on video games have impacted EA's stock price.", market: .bearish),
                 StockMarketScenario(scenario: "EA's recent release of a controversial game has faced backlash from the gaming community, leading to a decline in sales and a bearish sentiment in the market.", market: .bearish)
             ]),
        StockHardMode(name: "Delta", logo: "delta", tickerName: "DAL", bullBearMarketScenarios: [
               StockMarketScenario(scenario: "Delta Airlines has seen a surge in bookings and passenger demand, resulting in increased revenue and a bullish trend in the stock market.", market: .bullish),
               StockMarketScenario(scenario: "The successful implementation of cost-saving measures and improved operational efficiency have positively impacted Delta's earnings, leading to an increase in stock price.", market: .bullish),
               StockMarketScenario(scenario: "Delta Airlines has faced challenges due to increased competition and rising fuel costs, resulting in a bearish sentiment among investors.", market: .bearish),
               StockMarketScenario(scenario: "The ongoing labor disputes and potential disruptions in the airline industry have negatively impacted Delta's profitability and stock price.", market: .bearish),
               StockMarketScenario(scenario: "Delta Airlines reported lower-than-expected earnings in the recent quarter, causing a decline in stock price and concerns about the company's financial performance.", market: .bearish),
               StockMarketScenario(scenario: "The uncertainty surrounding travel restrictions and the resurgence of COVID-19 cases has created volatility in the airline industry, affecting Delta's stock price.", market: .bearish)
           ]),
           StockHardMode(name: "Google", logo: "google", tickerName: "GOOGL", bullBearMarketScenarios: [
               StockMarketScenario(scenario: "Google's strong performance in the digital advertising market and their continuous innovation in technology have attracted investors' attention, leading to a significant increase in stock price.", market: .bullish),
               StockMarketScenario(scenario: "Google has recently announced a strategic partnership with a major technology company, which has positively impacted investor sentiment and contributed to a bullish trend in the stock market.", market: .bullish),
               StockMarketScenario(scenario: "The company's expansion into new markets and successful product launches have contributed to a bullish trend in Google's stock price.", market: .bullish),
               StockMarketScenario(scenario: "Google is facing increased regulatory scrutiny and antitrust concerns, which has negatively impacted investor sentiment and resulted in a decline in stock price.", market: .bearish),
               StockMarketScenario(scenario: "The ongoing privacy concerns and data protection issues have affected Google's reputation and investor confidence, leading to a bearish sentiment in the market.", market: .bearish),
               StockMarketScenario(scenario: "Google's recent earnings report fell short of expectations, causing a decline in stock price and concerns about the company's revenue growth.", market: .bearish)
           ]),
           StockHardMode(name: "Lyft", logo: "lyft", tickerName: "LYFT", bullBearMarketScenarios: [
               StockMarketScenario(scenario: "Lyft's expansion into new markets and successful partnerships have attracted investors' attention, leading to a significant increase in stock price.", market: .bullish),
               StockMarketScenario(scenario: "The company's strong performance in the ride-hailing market and increased user adoption have contributed to a bullish trend in Lyft's stock price.", market: .bullish),
               StockMarketScenario(scenario: "Lyft is facing increased competition from other ride-hailing companies, resulting in market share loss and a bearish sentiment among investors.", market: .bearish),
               StockMarketScenario(scenario: "The ongoing regulatory challenges and potential changes in the gig economy have raised concerns about Lyft's business model and affected investor confidence.", market: .bearish),
               StockMarketScenario(scenario: "Lyft's recent earnings report fell short of expectations, causing a decline in stock price and concerns about the company's profitability.", market: .bearish),
               StockMarketScenario(scenario: "The uncertainty surrounding the recovery of the travel and transportation industry has created volatility in Lyft's stock price.", market: .bearish)
           ]),
           StockHardMode(name: "McDonald's", logo: "mcdonalds", tickerName: "MCD", bullBearMarketScenarios: [
               StockMarketScenario(scenario: "McDonald's strong sales growth and successful product launches, including plant-based menu options, have attracted investors' attention, leading to a significant increase in stock price.", market: .bullish),
               StockMarketScenario(scenario: "The company's focus on digital transformation and enhanced customer experience has contributed to a bullish trend in McDonald's stock price.", market: .bullish),
               StockMarketScenario(scenario: "McDonald's is facing increased competition from fast-casual and delivery-focused restaurants, resulting in market share loss and a bearish sentiment among investors.", market: .bearish),
               StockMarketScenario(scenario: "The ongoing labor disputes and potential impacts of minimum wage increases have raised concerns about McDonald's operating costs and affected investor confidence.", market: .bearish),
               StockMarketScenario(scenario: "McDonald's recent earnings report fell short of expectations, causing a decline in stock price and concerns about the company's sales growth.", market: .bearish),
               StockMarketScenario(scenario: "The uncertainty surrounding the recovery of the restaurant industry and changing consumer preferences have created volatility in McDonald's stock price.", market: .bearish)
           ]),
           StockHardMode(name: "Starbucks", logo: "starbucks", tickerName: "SBUX", bullBearMarketScenarios: [
               StockMarketScenario(scenario: "Starbucks' strong sales growth and successful expansion into new markets have attracted investors' attention, leading to a significant increase in stock price.", market: .bullish),
               StockMarketScenario(scenario: "The company's focus on digital innovation and loyalty programs has contributed to a bullish trend in Starbucks' stock price.", market: .bullish),
               StockMarketScenario(scenario: "Starbucks is facing increased competition from local coffee shops and online delivery services, resulting in market share loss and a bearish sentiment among investors.", market: .bearish),
               StockMarketScenario(scenario: "The ongoing labor disputes and potential impacts of minimum wage increases have raised concerns about Starbucks' operating costs and affected investor confidence.", market: .bearish),
               StockMarketScenario(scenario: "Starbucks' recent earnings report fell short of expectations, causing a decline in stock price and concerns about the company's sales growth.", market: .bearish),
               StockMarketScenario(scenario: "The uncertainty surrounding the recovery of the foodservice industry and changing consumer preferences have created volatility in Starbucks' stock price.", market: .bearish)
           ]),
        StockHardMode(name: "Nike", logo: "nike", tickerName: "NKE", bullBearMarketScenarios: [
                 StockMarketScenario(scenario: "Nike's strong sales growth and successful product launches, including innovative athletic footwear and apparel, have attracted investors' attention, leading to a significant increase in stock price.", market: .bullish),
                 StockMarketScenario(scenario: "The company's focus on direct-to-consumer sales and e-commerce has contributed to a bullish trend in Nike's stock price.", market: .bullish),
                 StockMarketScenario(scenario: "Nike is facing increased competition from other sportswear brands and potential disruptions in the global supply chain, resulting in market share loss and a bearish sentiment among investors.", market: .bearish),
                 StockMarketScenario(scenario: "The ongoing labor disputes and potential impacts of minimum wage increases have raised concerns about Nike's operating costs and affected investor confidence.", market: .bearish),
                 StockMarketScenario(scenario: "Nike's recent earnings report fell short of expectations, causing a decline in stock price and concerns about the company's sales growth.", market: .bearish),
                 StockMarketScenario(scenario: "The uncertainty surrounding the recovery of the retail industry and changing consumer preferences have created volatility in Nike's stock price.", market: .bearish)
             ])
    ]
}

struct StockHardMode {
    let name: String
    let logo: String
    let tickerName: String
    let bullBearMarketScenarios: [StockMarketScenario]
    var stockPrice: Double {
        let marketScenarios = bullBearMarketScenarios.filter { $0.market == .bullish || $0.market == .bearish }
        let marketSum = marketScenarios.reduce(0.0) { $0 + ($1.market == .bullish ? 1 : -1) }
        let priceRange: ClosedRange<Double> = 20.0...300.0
        let randomPrice = Double.random(in: priceRange)
        let adjustedPrice = randomPrice + (marketSum * 10.0)
        return adjustedPrice
    }
}

enum Market {
    case bullish
    case bearish
}

struct StockMarketScenario {
    let scenario: String
    let market: Market
}

//I want  page that is the same as the Stockspage but I want the stock prices to loop through doubles of 10 - 300 for each stock price also i want the bull and bear market scenarios to be combines  into 1  instead of seperating them  and also I want new scenarios based on bull and bear market and based on the market. I also want the price to reflect the market the stock is in other than that keep everything else the same
