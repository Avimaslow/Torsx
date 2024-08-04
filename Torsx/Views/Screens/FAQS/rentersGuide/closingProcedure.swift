//
//  closingProcedure.swift
//  Torsx
//
//  Created by Avi Maslow on 8/10/24.
//

import SwiftUI

struct RentersGuideGeneralClosingProceduresView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text("General Approval Requirements")
                    .font(.headline)
                
                Text("Approval Requirements differ depending on the landlord/management company and/or on the building. The following are general guidelines that apply in most instances:")
                    .font(.subheadline)
                
                Text("""
                • Renters need to show income of at least 40-50 times monthly rent.
                • Rent should be 25% of renters' annual income. Ex: annual income = $100,000, rent $25,000 per year.
                • Renters must show a secure and stable employment history.
                • Renters need to have good credit history. A major component of the approval process is based on the credit report.
                """)
                
                Text("What makes a credit report bad?")
                    .font(.headline)
                
                Text("""
                • A couple old late payments are usually ok.
                • High revolving balances are not good.
                • Past due payments that are outstanding are bad.
                • Delinquencies and collections are very bad.
                • A public record (a day in court) is bad.
                • A Landlord-Tenant record is very bad.
                """)
                
                Text("If you think your credit report is bad, advise your TORSX broker so they can prepare you for the application process. Landlords/management companies have different ways of dealing with credit problems.")
                
                Text("""
                • Some landlords/management companies allow renters to increase security deposit while others require a guarantor. Some may simply reject the application. Your TORSX broker will advise you in order to save you time, money, and frustration.
                """)
                
                Text("Renters must show a good rental history.")
                    .font(.headline)
                
                Text("""
                • Rental, credit, and employment information is generally referenced and submitted in form of a letter or sometimes by a phone call.
                """)
                
                Text("Renters need to have a social security number.")
                    .font(.headline)
                
                Text("""
                • If you do not have a social security number or are not applying for one, you must have a guarantor co-signing your lease.
                """)
                
                Text("Bank Statements:")
                    .font(.headline)
                
                Text("""
                • In most cases, landlords/management companies require copies of a renter's 3 most recent bank statements from a checking, savings, stock account, or any other financial institution.
                • Renter should have backup detail sheets available upon request.
                • Most rent application forms require listing bank account information.
                """)
                
                Text("Letter of Employment:")
                    .font(.headline)
                
                Text("""
                • Renter should get a Letter of Employment on their company's letterhead, with the following:
                  - Position
                  - Length of employment
                  - Annual income.
                • In the majority of cases, an offer or an acceptance letter for a new position is not sufficient to show employment.
                """)
                
                Text("Letter of Landlord Reference:")
                    .font(.headline)
                
                Text("""
                • A letter of reference from a previous landlord is one of the most important reference letters a renter can submit to a landlord/management company who is processing their application.
                """)
                
                Text("Pay Stubs:")
                    .font(.headline)
                
                Text("""
                • Copies of renter's 3 most recent pay stubs are usually required.
                """)
                
                Text("Students need to have a guarantor co-sign their lease.")
                    .font(.headline)
                
                Text("""
                • Certain buildings won't accept students. This is legal in NY State and not challengeable in a court of law.
                """)
                
                Text("Tax Returns:")
                    .font(.headline)
                
                Text("""
                • Some landlords and some management companies require potential renters to include a copy of their most recent Federal Tax Return (1040).
                • Renters should have their tax return available just in case it is required.
                """)
                
                Text("Self-employed renters:")
                    .font(.headline)
                
                Text("""
                • If income comes from different sources, you will be required to submit tax returns and a letter from a CPA stating the nature of your business, as well as, projected future income.
                • Business owners looking to rent are almost always required to submit a tax return.
                """)
                
                Text("If renters do not meet the above-mentioned criteria, there are usually two possible solutions:")
                    .font(.headline)
                
                Text("""
                • Renters can get a co-signer or guarantor to co-sign the lease for you.
                • Some owners will allow tenants to prepay 6 months to 12 months rent up front.
                """)
                
                Text("Guarantor or co-signer:")
                    .font(.headline)
                
                Text("""
                • A guarantor or co-signer is a person who guarantees the entire rent for the entire lease term and lease renewals should a renter default on their rent payments. A guarantor can be anyone who agrees to sign on behalf of a renter and who is willing and qualified to act as a guarantor.
                """)
                
                Text("Qualifications of a guarantor or co-signer:")
                    .font(.headline)
                
                Text("""
                • Documents required from a guarantor are similar to applicant(s):
                  - Application Form: Same form as the applicant fills out.
                  - Credit Report: A guarantor's credit report must be in good standing.
                  - Federal Tax Returns: A guarantor is required to submit federal tax returns as proof of income.
                  - Guarantor must show annual income of 80-100 times monthly rent.
                  - A Guarantor is not required to be present at lease signing.
                • In some cases, landlords/management companies require a guarantor to reside in the tri-state area (New York, New Jersey, or Connecticut).
                """)
            }
            .padding()
        }
        .navigationTitle("General Closing Procedures")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RentersGuideGeneralClosingProceduresView()
}
