//
//  BuyersGeneralClosing.swift
//  Torsx
//
//  Created by Avi Maslow on 8/10/24.
//

import SwiftUI

struct BuyersGuideClosingProceduresView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                // General Closing Procedures Title
                Text("General Closing Procedures")
                    .font(.custom("PlayfairDisplay-Bold", size: 30))
                    .foregroundColor(.brandPrimary)
                    .padding(.bottom, 10)
                
                // What is a closing?
                VStack(alignment: .leading, spacing: 10) {
                    Text("What is a closing?")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    A closing is where a buyer gives a seller money in exchange for ownership and title to a particular property. This bargained-for exchange, or consideration, transfers ownership and title of the property. The seller also needs to sign over other documents including a deed. The place of closing is normally at the bank attorney’s office. The parties present will be: seller, bank attorney, real estate brokers, seller’s attorney, buyer’s attorney, and title closer.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Buyers need to apply for a mortgage as soon as the contract is signed by both parties. The mortgage process takes up to 45 days and can involve several procedures:

                    • The mortgage broker compiles the buyer's financial information and then presents the loan application.
                    • The bank sends an appraiser to assess the property.
                    • The underwriters review the loan and issue a commitment letter.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                }
                
                // Preparing Your Application Package
                VStack(alignment: .leading, spacing: 10) {
                    Text("Preparing Your Application Package")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    If buying an apartment, coop, condo, or any other property with a board or association, prepare your application package with your TORSX broker. These packages tend to vary from building to building. Most boards use the same financial requirements as the bank. Keep an extra copy of your mortgage application and any related documentation. Buyers are required to get personal, professional, and financial letters of reference. If renting, get a letter of reference from your current landlord. Ask what information is needed and for copies of sample reference letters. The board package is important, therefore, answer all questions in a clear, concise manner and give an accurate description of your financial qualifications. Before submitting your application package, write a cover letter, organize the presentation, and review it with your TORSX broker.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    The board package is submitted after a buyer receives his/her mortgage-loan commitment letter; it is submitted to a building's Managing Agent. The Managing Agent checks the application, evaluates credit and references, and then submits the package to the board. The board then reviews the completed package. Additional information may be requested, or if the package is passed, an interview is scheduled. There is either an interview committee that approves new applicants or a board will do it during its monthly meetings. Your TORSX broker can assist you as to the date, time, and any other preparations for your interview.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Closing is scheduled after the board approves an application package and completes the interview process. This generally takes 2 weeks for final approval and can vary depending on the availability of the parties involved; i.e. managing agent, buyer, seller, lawyers, and banks.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                }
                
                // General Closing Costs Defined
                VStack(alignment: .leading, spacing: 10) {
                    Text("General Closing Costs Defined")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Additional Fees: Sometimes borrowers are required to pay additional fees. Some of these include Wire Fees, Tax Service, Survey Costs, Flood Certification, Settlement Charges, Messenger Fees, Sub-Escrow Fees, and Transfer Tax. Ask your broker to explain these fees.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Appraisal Fee: Fee charged which estimates whether or not a property is worth enough to support a loan. A qualified appraiser will look over the property and produce a report.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Attorney Fee: Fees paid to the attorney representing you in real estate purchase (some closings require you to pay bank attorney fees or with condos, sponsor fees for sponsor attorney may be required). Fees vary according to the type of property and $ value of the property.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Condo Board Application or Co-op Flip Tax: Fees charged for processing condo applications or coop shares.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Credit Report: Generally between $25 - $100 per report.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Document Preparation Fee: Fee charged by bank or mortgage company for preparation of paperwork.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Escrow (Taxes, Insurance): In this case, money is figured into a mortgage for certain conditions like taxes and insurance, etc. (see real estate terms defined for a more complete definition).
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Inspection Fee: Fee for inspection of property to make sure it is up to code and livable.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Homeowner's Insurance: Is required to protect against property damage from hazards; i.e. fires, floods, etc.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Mortgage Insurance: Usually loans made from a down payment of less than 20% require mortgage insurance. This protects a lender if a borrower defaults on home loans.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Origination Fee/Points: Depending on the type of loan and the rate a mortgage seeker chooses, he/she may pay points. 1 point equals 1% of the total loan amount.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Prepaid Interest: This amount pays the interest due from the date of funding to the end of the current month.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Recording/Transfer Fees: This covers the costs of changing the property title in official county records.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Title Insurance and Search: Fees that are charged for a title search and insurance fees. A title search is used to verify that the seller is the true owner of the property being sold and that the seller has the right to sell it. Title insurance protects a lender in the event of a lien or other problems with the title for the property in question, that was not disclosed at the time of sale.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                }
                
                // Time Until Closing
                VStack(alignment: .leading, spacing: 10) {
                    Text("Time Until Closing")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    Generally, sales take between 3-5 months to close depending on various factors. The most common factors affecting closing include: mortgage & financing, condo/coop board approval, and negotiation.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                }
                
                // Recommended Amount To Put Down
                VStack(alignment: .leading, spacing: 10) {
                    Text("Recommended Amount To Put Down")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    The amount needed to purchase property varies depending on the type, size, and location of a property. For example, is the property a single or two-family dwelling, coop, or condo? TORSX recommends being prepared to pay about 10-20% of the total price. Some properties may accept a smaller percentage for qualification. You will also need to set aside additional monies for closing costs.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                }
                
                // Contract of Sale
                VStack(alignment: .leading, spacing: 10) {
                    Text("Contract of Sale")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(.brandPrimary)
                    
                    Text("""
                    A Contract of Sale is a legally binding agreement between a purchaser and a seller in which each party gives consideration, (bargains for an exchange) to define the terms of the sale.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                    
                    Text("""
                    NOTE: Sometimes there are other fees which may be charged. This generally occurs when the property is a condo or coop. Our brokers will be happy to discuss these with you.
                    """)
                    .font(.custom("PTSans-Regular", size: 20))
                    .foregroundColor(.brandPrimary)
                }
            }
            .padding()
        }
        .navigationTitle("General Closing Procedures")
        .navigationBarTitleDisplayMode(.inline)
        .foregroundColor(.brandPrimary)
    }
}

#Preview {
    BuyersGuideClosingProceduresView()
}
