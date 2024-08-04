//
//  BuyerStandardReq.swift
//  Torsx
//
//  Created by Avi Maslow on 8/10/24.
//
import SwiftUI

struct BuyersStandardRequirementsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                // Standard Fund Requirements
                Text("Standard Fund Requirements")
                    .font(.custom("PlayfairDisplay-Bold", size: 30))
                    .foregroundColor(.brandPrimary)
                    .padding(.bottom, 10)
                
                // The Budget
                VStack(alignment: .leading, spacing: 10) {
                    Text("The Budget")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Location, size, amenities, building type, school locations and nearness to public transportation are crucial to determining what a property will cost. We suggest that buyers review financing options to determine what amount of money they can put toward a deposit and then determine what they can afford for a monthly mortgage payment. Some people may want to see if they pre-qualify for mortgage status in order to know what budget they will be working within.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                }
                
                // Type of Property
                VStack(alignment: .leading, spacing: 10) {
                    Text("Type of Property")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    The next thing to determine would be the type of property you'd like to buy. Would you like an apartment, condominium, coop or commercial property?
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                }
                
                // Apartment Purchase
                VStack(alignment: .leading, spacing: 10) {
                    Text("Apartment Purchase")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    For apartment purchases, there is no approval process, besides normal financial inquiries. Buyers are entitled to have complete control over any renovations they wish to make. Maintenance costs are the sole responsibility of an owner and with this, the owner gets total control over maintenance and repairs. Transferring deeds or reselling an apartment do not require approval. The size of a property can vary according to a budget and location of the property.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                }
                
                // Condominium Purchase
                VStack(alignment: .leading, spacing: 10) {
                    Text("Condominium Purchase")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Condo owners buy the apartment and also own a percentage of the common building areas, i.e. entrance areas, hallways, and recreational areas etc. The condominium is considered real property; because of this fact, owners have the right to use the property any way he/she sees fit. Owners are subject to pay property taxes which can either be escrowed into a part of a monthly mortgage payment or which are paid annually as an expense. Monthly maintenance fees are generally paid to the building's condominium association.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                }
                
                // Coop Purchase
                VStack(alignment: .leading, spacing: 10) {
                    Text("Coop Purchase")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Buying a coop is tricky, but TORSX's team of qualified agents can help. When purchasing a cooperative apartment, the purchaser is really purchasing shares in a cooperation. The shares correspond to the units in which you live. Coop fees include a monthly mortgage payment and maintenance fees for the building. Maintenance fees are sometimes high but both mortgage payments and maintenance fees generally result in higher tax deductibles.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                }
                
                // Estimated Fees
                VStack(alignment: .leading, spacing: 10) {
                    Text("Estimated Fees")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(.brandPrimary)
                    
                    Text("Cooperative Apartment:")
                        .font(.custom("PTSans-Regular", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    For Seller:
                    • Broker Fees: Are typically 6%. Fees vary according to property size and amount of marketing
                    • Attorney Fees: Approximately $1,500
                    • Managing Agent: $450
                    • Flip Tax: Consult Managing Agent
                    • Stock Transfer Tax: $.05 per share
                    • Move Out Deposit Fee: $1,000
                    • New York City Transfer Tax: 1.00% of price up to $500,000; 1.425% of entire price when it exceeds $500,000
                    • New York State Transfer Tax: 0.4% (.004) of price
                    • Payoff Bank Attorney: If seller has mortgage $30
                    • UCC-3 Filing Fee: If seller has mortgage $350
                    
                    For Purchaser:
                    • Own Attorney Fee: Approximately $1500
                    • Bank Fees/Application/Credit/Appraisal/Bank Attorney/Miscellaneous Fees: $1,600
                    • Short-Term Interest: One month max*
                    • Move-In Deposit: $1000
                    • Managing Agent or Co-op Attorney Fee: $600
                    • Lien Search: $300
                    • Maintenance Adjustments: One month tax
                    • Mansion Tax: 1% of entire price when price exceeds $1,000,000
                    *Prorated for month of closing
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("Condominium/Townhouse:")
                        .font(.custom("PTSans-Regular", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    For Seller:
                    • Broker Fees: Are typically 6%. Fees vary according to property size and amount of marketing
                    • Attorney Fees: Approximately $1,500
                    • Managing Agent: $450
                    • Move Out Deposit Fee: $1,000
                    • New York City Transfer Tax: 1.00% of price up to $500,000; 1.425% of entire price when it exceeds $500,000
                    • New York State Transfer Tax: 0.4% (.004) of price
                    • Miscellaneous Title Company Fees: If seller has mortgage $200
                    
                    For Purchaser:
                    • Approximately $1,500
                    • Bank Fees: Points 2%
                    • Application/Credit/Appraisal/Bank Attorney/Miscellaneous Fees: $1,600
                    • Short-Term Interest: One month max*
                    • Real Estate Tax: Escrows 2-6 months
                    • Recording Fee: $200
                    • Mortgage Tax: 1.75% of mortgage on loans under $500,000 or 1.875% of entire amount on loans over $500,000
                    • Fee Title Insurance: Approximately $450 per $100,000
                    • Mortgage Title Insurance: Approximately $200 per $100,000
                    • Miscellaneous Title Charges: $300
                    • Managing Agents Fee: $250
                    • Adjustments:
                    • Common charges: One month max*
                    • Real Estate Taxes: 1 to 6 months
                    • Mansion Tax: 1% of entire price when price exceeds $1,000,000
                    *Prorated for month of closing
                    *Expect to pay eight months Real Estate Taxes. These taxes are combined between seller as an adjustment and escrow established by lender.
                    *Note: When purchasing condos from a sponsor, the purchaser will be required to pay New York City and New York State Transfer Taxes; see above for amounts.
                    *Also, buyers are required to pay sponsor’s attorney’s fee; this fee is approximately $1,000.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("Multi-Family Residential/Commercial Property:")
                        .font(.custom("PTSans-Regular", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    For Seller:
                    • Broker Fees: Are typically 6%. Fees vary according to property size and amount of marketing
                    • Attorney Fees: Approximately $5,000
                    • New York City Transfer Tax: 1.425% of price up to $500,000; 2.625% of entire price when it exceeds $500,000
                    • New York State Transfer Tax: 0.4% (.004) of price
                    • Payoff Bank Attorney: If Seller has mortgage - $350 Miscellaneous $200 Transfer Security Deposit T.S.D.
                    
                    For Purchaser:
                    • Own Attorney Fee: Approximately $5,000
                    • Bank Fees: Points 2%>
                    • Application/Credit/Appraisal/Bank Attorney/Miscellaneous Fees: $5,000-$10,000
                    • Short-Term Interest: One month max*
                    • Mortgage Tax: 2.75% of entire amount on loans over $500,000
                    • Real Estate Tax: Escrows 2-6 months
                    • Fee Title Insurance: Approximately $450 per $100,000
                    • Mortgage Title Insurance: Approximately $200 per $100,000
                    • Miscellaneous Title Charges: $1,000
                    • Adjustments: Rents* T.B.D. Real Estate Taxes 1-6 months *Prorated for month of closing
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                }
            }
            .padding()
        }
        .navigationTitle("Buyer's Guide")
        .navigationBarTitleDisplayMode(.inline)
        .foregroundColor(.brandPrimary)
    }
}

#Preview {
    BuyersStandardRequirementsView()
}

// Define your brand primary color in your Color extension or directly in the assets
extension Color {
    static let primaryColor = Color("BrandPrimaryColor") // Ensure this color is defined in your asset catalog
}
