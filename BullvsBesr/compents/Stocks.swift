//
//  Data.swift
//  BullvsBesr
//
//  Created by Brandon Evans on 2/13/23.
//
import Foundation
struct Stock {
    let name : String
    let logo: String
    let tickerName: String
    let stockPrice: Double
    let bullMarketScenarios: [String]
    let bearMarketScenarios: [String]
}


extension Double {
    func removeZerosFromEnd() -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 16 //maximum digits in Double after dot (maximum precision)
        let number = NSNumber(value: self)
        return String(formatter.string(from: number) ?? "")
    }
}

struct Stocks {
    let stocks: [Stock] = [
        Stock(name: "Apple", logo: "apple", tickerName: "AAPL", stockPrice: 153.85,
              bullMarketScenarios: [
                  "Apple is in the recovery stage and has had a consistent increase in their stock price for the past quarter. Their gains have recently stalled, but they are releasing the new iPhone 15.",
                  "Apple announced a breakthrough in their autonomous vehicle project, which has caused a surge in investor confidence and a spike in stock price.",
                  "The recent release of Apple's latest product has exceeded expectations, leading to a surge in sales and a positive impact on the stock price."
              ],
              bearMarketScenarios: [
                  "Apple has had a decline in shares this last year. The company has great brand loyalty and is expected to release an augmented/virtual reality (AR/VR) headset this quarter, which is expected to boost investor confidence.",
                  "The slowdown in iPhone sales has negatively impacted Apple's stock price, and analysts predict a challenging period ahead for the company.",
                  "Apple's latest earnings report fell short of expectations, causing a dip in stock price. Market uncertainties are adding to the bearish sentiment."
              ]),
        Stock(name: "Tesla", logo: "tesla", tickerName: "TSLA", stockPrice: 194.64,
              bullMarketScenarios: [
                  "The market is experiencing an uptrend, and Tesla stock has doubled in a month. However, Elon Musk just made headlines for purchasing Twitter, and he is going to allow all users freedom of speech on the platform.",
                  "Tesla has unveiled its latest innovation, a groundbreaking energy storage solution, which has garnered significant investor interest and led to a surge in stock price.",
                  "Tesla's partnership with a major technology company to develop advanced autonomous driving technology has fueled investor excitement and contributed to a bullish trend in the stock market."
              ],
              bearMarketScenarios: [
                  "Tesla was ranked amongst the worst-performing stocks in 2022. At the beginning of this quarter, the company announced that they are rolling out a Semi-truck that can cover 500 miles before requiring a charge.",
                  "The recent regulatory scrutiny and safety concerns regarding Tesla's autopilot feature have negatively impacted investor sentiment, leading to a decline in stock price.",
                  "Tesla's production delays and supply chain challenges have resulted in lower-than-expected earnings, triggering a bearish trend in the market."
              ]),
        Stock(name: "Verizon", logo: "verizon", tickerName: "VZ", stockPrice: 40.32,
              bullMarketScenarios: [
                  "Verizon stock has been on an upward trend for the last month. Due to the trend, investors are purchasing shares of the stock, causing the price to increase more.",
                  "Verizon has recently announced a strategic partnership with a leading streaming platform, attracting investors' attention and positively impacting the stock price.",
                  "The rollout of Verizon's 5G network has been successful, leading to increased customer adoption and higher revenue, which has positively influenced the stock price."
              ],
              bearMarketScenarios: [
                  "Verizon stock has been on a downward trend for the past 2 quarters. Recent news has come out that the company is having a recall on their Samsung Galaxy.",
                  "Verizon's latest earnings report revealed a decline in subscriber growth and increased competition, resulting in a bearish sentiment among investors.",
                  "The uncertainty surrounding the future of the telecommunications industry has negatively impacted Verizon's stock price, leading to a downward trend."
              ]),
        Stock(name: "Walmart", logo: "walmart", tickerName: "WMT", stockPrice: 145.91,
              bullMarketScenarios: [
                  "Walmart's strong performance in the online grocery market has attracted investors' attention, leading to a significant increase in stock price.",
                  "Walmart's recent acquisition of a leading e-commerce company has positioned them as a key player in the online retail space, driving investor confidence.",
                  "The company's robust quarterly earnings report and positive sales growth have contributed to a bullish trend in Walmart's stock price."
              ],
              bearMarketScenarios: [
                  "Walmart has faced intense competition from online retailers, resulting in a decline in market share and investor concerns about the company's future.",
                  "The recent labor strikes and increased scrutiny on employee wages have impacted Walmart's profitability and stock price.",
                  "The company's expansion into international markets has faced challenges, leading to lower-than-expected earnings and a bearish sentiment in the market."
              ]),
        Stock(name: "EA", logo: "ea", tickerName: "EA", stockPrice: 113.20,
              bullMarketScenarios: [
                  "EA's latest release of a highly anticipated video game has been a huge success, driving up sales and positively impacting the stock price.",
                  "The company's strong performance in the esports industry and successful partnerships with professional gaming teams have attracted investors and contributed to a bullish trend in the market.",
                  "EA's innovative approach to virtual reality gaming has garnered significant attention and investor interest, resulting in a surge in stock price."
              ],
              bearMarketScenarios: [
                  "EA's recent earnings report fell short of expectations, causing a decline in stock price and investor concerns about the company's growth potential.",
                  "The increasing competition in the gaming industry and concerns over consumer spending on video games have impacted EA's stock price.",
                  "EA's recent release of a controversial game has faced backlash from the gaming community, leading to a decline in sales and a bearish sentiment in the market."
              ]),
        Stock(name: "Lyft", logo: "lyft", tickerName: "LYFT", stockPrice: 10.46,
              bullMarketScenarios: [
                  "Lyft's expansion into new markets and successful partnerships with major cities have driven investor confidence and contributed to a bullish trend in the stock market.",
                  "The company's latest earnings report revealed a significant increase in user adoption and revenue, leading to a surge in stock price.",
                  "Lyft's innovative approach to autonomous driving technology has positioned them as a key player in the future of transportation, attracting investors and positively impacting the stock price."
              ],
              bearMarketScenarios: [
                  "Lyft has faced increased competition from other ride-hailing companies, resulting in a decline in market share and investor concerns about profitability.",
                  "The regulatory challenges and legal battles surrounding the gig economy have impacted Lyft's business model and stock price.",
                  "Lyft's latest expansion into international markets has faced challenges and uncertainties, leading to a bearish sentiment among investors."
              ]),
        Stock(name: "Bank of America", logo: "boa", tickerName: "BAC", stockPrice: 35.65,
              bullMarketScenarios: [
                  "Bank of America's strong performance in the financial sector, with consistent revenue growth and improved efficiency, has attracted investors and positively impacted the stock price.",
                  "The company's successful implementation of digital banking initiatives and enhanced customer experience has driven investor confidence and contributed to a bullish trend in the market.",
                  "Bank of America's recent acquisition of a leading investment firm has expanded their portfolio and positioned them for future growth, leading to a surge in stock price."
              ],
              bearMarketScenarios: [
                  "Bank of America's latest earnings report fell short of expectations, with a decline in revenue and concerns over loan quality, resulting in a bearish sentiment among investors.",
                  "The uncertainties surrounding the economic outlook and interest rate fluctuations have impacted Bank of America's profitability and stock price.",
                  "The regulatory challenges and increased scrutiny on the banking industry have added to investor concerns and contributed to a decline in stock price."
              ]),
        Stock(name: "McDonald's", logo: "mcdonalds", tickerName: "MCD", stockPrice: 266.20,
              bullMarketScenarios: [
                  "McDonald's latest menu innovation has been a huge success, driving up sales and positively impacting the stock price.",
                  "The company's successful expansion into new markets and the introduction of healthier menu options have attracted investors and contributed to a bullish trend in the market.",
                  "McDonald's strong brand loyalty and effective marketing campaigns have led to increased customer engagement and a surge in stock price."
              ],
              bearMarketScenarios: [
                  "McDonald's has faced increased competition from fast-casual dining chains and changing consumer preferences, resulting in a decline in sales and investor concerns about the company's growth potential.",
                  "The recent controversies surrounding McDonald's labor practices and lawsuits related to health and safety issues have impacted the company's reputation and stock price.",
                  "McDonald's reliance on global supply chains has faced challenges, leading to supply disruptions and lower-than-expected earnings, triggering a bearish trend in the market."
              ]),
        Stock(name: "Google", logo: "google", tickerName: "GOOGL", stockPrice: 94.61,
              bullMarketScenarios: [
                  "Google's strong performance in the digital advertising industry and their dominance in the search engine market have attracted investors and contributed to a bullish trend in the stock market.",
                  "The company's successful expansion into new business areas, such as cloud computing and artificial intelligence, has positioned them for future growth and positively impacted the stock price.",
                  "Google's strategic partnerships with major technology companies and successful product launches have driven investor confidence and contributed to a surge in stock price."
              ],
              bearMarketScenarios: [
                  "Google's latest earnings report fell short of expectations, with a slowdown in ad revenue growth and concerns over privacy regulations, leading to a decline in stock price.",
                  "The increasing regulatory scrutiny on big tech companies and antitrust investigations have added to investor concerns and contributed to a bearish sentiment in the market.",
                  "Google's recent controversies surrounding data breaches and user privacy issues have impacted their reputation and stock price, resulting in a downward trend."
              ]),
        Stock(name: "Delta", logo: "delta", tickerName: "DAL", stockPrice: 38.60,
              bullMarketScenarios: [
                  "Delta's strong performance in the airline industry, with improved customer satisfaction and increased market share, has attracted investors and contributed to a bullish trend in the stock market.",
                  "The company's successful cost-cutting measures and effective revenue management strategies have driven investor confidence and positively impacted the stock price.",
                  "Delta's expansion into new international routes and successful partnerships with major airlines have positioned them for future growth, leading to a surge in stock price."
              ],
              bearMarketScenarios: [
                  "Delta has faced challenges due to rising fuel costs and increased competition from low-cost carriers, resulting in a decline in profitability and investor concerns about the company's financial health.",
                  "The uncertainties surrounding travel restrictions and the potential impact of geopolitical events have negatively affected Delta's stock price.",
                  "Delta's recent labor disputes and strikes by employees have impacted the company's operations and investor sentiment, contributing to a bearish trend in the market."
              ]),
        Stock(name: "Meta", logo: "meta", tickerName: "META", stockPrice: 179.43,
              bullMarketScenarios: [
                  "Meta's latest virtual reality product has received widespread acclaim and positive reviews, driving up sales and positively impacting the stock price.",
                  "The company's successful expansion into new technology sectors, such as augmented reality and artificial intelligence, has positioned them as a key player in the future of technology, attracting investors and contributing to a bullish trend in the market.",
                  "Meta's strong focus on user privacy and data security has garnered positive attention and increased user trust, leading to a surge in stock price."
              ],
              bearMarketScenarios: [
                  "Meta has faced scrutiny and legal challenges related to data privacy and antitrust concerns, leading to a decline in stock price and investor concerns about regulatory risks.",
                  "The recent controversies surrounding Meta's platform and issues related to harmful content have impacted user trust and resulted in a bearish sentiment in the market.",
                  "Meta's latest product release fell short of expectations, causing a decline in sales and investor concerns about the company's ability to innovate and drive future growth."
              ]),
        Stock(name: "Starbucks", logo: "starbucks", tickerName: "SBUX", stockPrice: 108.52,
              bullMarketScenarios: [
                  "Starbucks' strong global presence and successful expansion into new markets have driven investor confidence and contributed to a bullish trend in the stock market.",
                  "The company's innovative product offerings and successful digital initiatives, such as mobile ordering and loyalty programs, have attracted customers and positively impacted the stock price.",
                  "Starbucks' commitment to sustainability and ethical sourcing has resonated with consumers, leading to increased brand loyalty and a surge in stock price."
              ],
              bearMarketScenarios: [
                  "Starbucks has faced increased competition from local coffee chains and changing consumer preferences, resulting in a decline in sales and investor concerns about the company's growth potential.",
                  "The recent supply chain disruptions and rising commodity costs have impacted Starbucks' profitability and stock price.",
                  "Starbucks' reliance on international markets has faced challenges, with economic uncertainties and geopolitical events impacting their performance and contributing to a bearish sentiment in the market."
              ])
    ]
}





