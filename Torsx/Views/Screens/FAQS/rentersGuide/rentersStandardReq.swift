//
//  rentersStandardReq.swift
//  Torsx
//
//  Created by Avi Maslow on 8/10/24.
//

import SwiftUI

struct RentersGuideStandardRequirementsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text("Approximate costs of Application Process:")
                    .font(.headline)
                Text("• Both applicants and guarantors are required to submit credit reports, no exceptions.")
                Text("• Credit reports and application fees range from $25 to $100 depending on landlord/management company.")
                
                Text("Lease signing requirements:")
                    .font(.headline)
                Text("""
                • Once all completed application materials have been submitted, TORSX can usually get our clients approved for their apartment or rental property that same day.
                • Almost all applications are approved within 1-2 business days.
                • Renter must have completed all application materials. This includes reference letters and supporting documentation.
                • Approved clients are expected to sign lease immediately and provide necessary funds. Lease signings take place within 24 hours of application approval.
                • Renters sign their lease and provide necessary funds regardless of when the lease starts.
                """)
                
                Text("Funds:")
                    .font(.headline)
                Text("""
                • Renters generally provide 1st month's rent and equivalent of 1 month's rent as a security deposit.
                • This money is fully refundable in case a client gets rejected.
                • When paying the deposit ask for a receipt that states, the money will be refunded if you are rejected.
                • When signing a lease, renters should have funds for rent, security and broker fee (if any).
                • Money should be in a certified form Bank Checks: Certified checks or Money orders.
                • Personal checks are not accepted.
                """)
                
                Text("Miscellaneous Fees:")
                    .font(.headline)
                Text("""
                • Sometimes landlords/management companies require new tenants to pay a move in deposit.
                • This fee can range from $250 - $600.
                • Move in fees are usually refundable as long as there is no damage done to a building while moving.
                • Some landlords/management companies require renters insurance.
                • When renting in a condominium or in a co-op, renters should expect processing fees, move in fees and other miscellaneous fees sometimes in total of $250 - $1100 in non-refundable fees.
                • Be sure to ask your TORSX broker if there are additional fees; especially if renting a Condo or Co-Op. Fees for pets or for temporary walls are also common.
                """)
                
                Text("The Budget:")
                    .font(.headline)
                Text("""
                • For obvious reasons, a budget is an important factor in determining what apartment or rental property a renter can afford. The price of a property depends on a variety of factors - size, location, condition, features, neighborhood amenities, schools among others. It is key to determine a budget at the beginning of the application process to have an understanding of what you can afford.
                """)
                
                Text("A general price guideline for apartments:")
                    .font(.headline)
                Text("""
                • Studios range from $1,800 to $2,500 per month
                • One bedrooms range from $2,200 to $3,700 per month
                • Two bedrooms range from $3,500 to $6,500 per month
                • Three bedrooms range from $4,500 to $10,000 per month.
                """)
            }
            .padding()
        }
        .navigationTitle("Standard Requirements")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RentersGuideStandardRequirementsView()
}
