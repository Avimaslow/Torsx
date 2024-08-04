//
//  rentersFAQ.swift
//  Torsx
//
//  Created by Avi Maslow on 8/10/24.
//

import SwiftUI

struct RentersGuideFAQView: View {
    @State private var isExpanded1 = false
    @State private var isExpanded2 = false
    @State private var isExpanded3 = false
    @State private var isExpanded4 = false
    @State private var isExpanded5 = false
    @State private var isExpanded6 = false
    @State private var isExpanded7 = false
    @State private var isExpanded8 = false
    @State private var isExpanded9 = false

    var body: some View {
        List {
            DisclosureGroup(isExpanded: $isExpanded1) {
                Text("""
                    TORSX does not charge for information provided by the website nor do we charge for viewing of apartments or rental properties through our brokers. Clients pay a broker's fee ONLY if they rent a property through TORSX. If the property is a NO FEE apartment, you will not incur a broker's fee.
                    Unfurnished apartments: With a 1-2 year lease, TORSX usually charges 15% of the annual rent.
                    Furnished/Short Term rental fees: Please call or email for our discount pricing.
                    """)
                    .padding(.vertical)
            } label: {
                Text("How much is TORSX's broker fee?")
            }

            DisclosureGroup(isExpanded: $isExpanded2) {
                Text("""
                    Potential renters should begin their search 4-6 weeks prior to an anticipated moving date. Apartments are not usually ready more than 6 weeks ahead of a lease starting date.
                    """)
                    .padding(.vertical)
            } label: {
                Text("When should a prospective renter begin an apartment or property rental search?")
            }

            DisclosureGroup(isExpanded: $isExpanded3) {
                Text("""
                    Rent stabilized buildings and/or apartments are buildings whose rent is regulated by the City of New York and State of New York. Rent increases are only about 2-4% annually. Once a renter secures a rent stabilized apartment, they have a right to renew a lease agreement indefinitely. A lot of brownstones, townhouses with more than 4 units, and older tenement/elevator buildings in NYC fall into this category. These types of building are owned and operated by small to medium size landlords/management companies.
                    """)
                    .padding(.vertical)
            } label: {
                Text("What are Rent Stabilized buildings and/or apartments?")
            }

            DisclosureGroup(isExpanded: $isExpanded4) {
                Text("""
                    TORSX does not charge for information provided by the website nor do we charge for viewing of apartments or rental properties through our brokers. Clients pay a broker's fee ONLY if they rent a property through TORSX.
                    Unfurnished apartments: With a 1-2 year lease, TORSX charges ____% of annual rent.
                    Furnished/Short Term rental fees: ___.
                    A sizable amount of our listings are made up of "No Fee" apartments.
                    """)
                    .padding(.vertical)
            } label: {
                Text("How much is TORSX's broker fee?")
            }

            DisclosureGroup(isExpanded: $isExpanded5) {
                Text("""
                    Prospective renters seek out TORSX Realty's service for 2 reasons:
                    First, our clients want to find the best deals coupled with the most value they can afford. They understand TORSX's brokers will save them considerable money in the long run. They understand that we offer a variety of services, covering all aspects of their property search. Our clients understand that even though they might be able to find 'No Fee' apartments, our brokers work extremely hard to negotiate the lowest possible monthly-rent payments. This amounts to long-term savings that renters who don't use TORSX probably would not get.
                    Second, our clients want to save the time and energy that gets wasted when trying to find and close on a property in NYC's dynamic real estate market. The process can be very frustrating without much result. Our clients come to us in order to utilize the guidance, knowledge, and experience of our licensed brokers. Our management team brings over 50 years of combined NYC real estate excellence to the table. Our clients benefit by saving money, time, and effort.
                    """)
                    .padding(.vertical)
            } label: {
                Text("Why choose TORSX? What sets it apart from all the others?")
            }

            DisclosureGroup(isExpanded: $isExpanded6) {
                Text("""
                    A lot of the apartments prospective renters see listed as 'No Fee' via the internet or advertised in newspapers actually use a flat fee agency. Prospective renters cannot get information about these properties without first paying a flat fee to these agencies. The fee is supposed to give the renter access to the agency's database. Fees can range from $50-$250, even though these agencies are not legally allowed to charge more than $15 for their services. Very few agency subscribers rent their apartments this way. A lot of these agencies provide almost no support service to clients. They have little or no staff and they operate basically as internet-information agencies. Therefore, they cannot possibly provide the expertise of a licensed broker. Be wary of information obtained in this manner as the information tends to be unreliable and outdated.
                    """)
                    .padding(.vertical)
            } label: {
                Text("What does 'No Fee' mean?")
            }

            DisclosureGroup(isExpanded: $isExpanded7) {
                Text("""
                    Sometimes landlords/management companies or brokers offer rental properties or apartments for 'No fee' (meaning no broker fees or rental application fees). These 'deals' tend toward being some of the most expensive apartments on the market. Most 'No Fee' apartments are found in high-rise, doorman buildings or newly constructed buildings. Generally 'No fees' are offered because of the sheer size of a building. These apartments are priced fairly and not great deals but they are not bad ones either. Sometime TORSX represents certain landlords/management companies or buildings that offer 'No Fee' apartments. These tend to be in luxury/doorman buildings and are priced at $2000 per month and up. In this instance, the fees are paid by the landlord/management company. In this case, TORSX passes on the savings to clients and provides all our services to you free of charge. Not all 'No fee' properties are found in doorman buildings. Sometimes landlords/management companies of elevator or walk-up buildings will advertise apartments as 'No Fee' on the web or in newspapers. Generally, these apartments are not good deals because landlords avoid additional costs and charge the tenant higher monthly payments. Fairly priced properties with a broker's fee would probably cost LESS money than a 'No Fee' apartment in an elevator or walk-up building.
                    """)
                    .padding(.vertical)
            } label: {
                Text("How can I find a 'No Fee' apartment?")
            }

            DisclosureGroup(isExpanded: $isExpanded8) {
                Text("""
                    Having a dog narrows the selection of properties down to 15% of what is currently available on the market. Cats tend not to be as much of a problem. Clients should tell their broker about pets to save time and money.
                    """)
                    .padding(.vertical)
            } label: {
                Text("Is having a pet a problem?")
            }

            DisclosureGroup(isExpanded: $isExpanded9) {
                Text("""
                    There are rental buildings, co-ops, and condo buildings.

                    Rental buildings: Usually full service, modern, doorman buildings; rents are generally high but are at market level. Annual rent increases might be considerable, depending on market conditions. These buildings are managed by big corporations trying to maximize profit. TORSX has access to these listings as well as more affordable more economically priced rental properties. We have access to most of the rental listings in the New York City Area.

                    Co-op and condo buildings: These are also usually full service buildings. Units are owned by individual owners who are not very familiar with market conditions. It is possible to get good deals in co-ops or a condo building. The drawback is that new tenants might have to meet with the co-op or condo board. This process can take over a month and requires the applicant to undergo rigorous screening. Many co-ops do not allow lease renewals. This means more apartment hunting after the first term of your lease. TORSX is selective about co-op buildings because of the inflexibility and arbitrary rules.
                    """)
                    .padding(.vertical)
            } label: {
                Text("Besides rent stabilized buildings, what other types of apartment buildings are there in NYC?")
            }
        }
        .navigationTitle("Renters FAQ")
        .listStyle(InsetGroupedListStyle())
    }
}

#Preview {
    RentersGuideFAQView()
}
