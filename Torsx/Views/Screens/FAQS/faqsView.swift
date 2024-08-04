//
//  faqsView.swift
//  Torsx
//
//  Created by Avi Maslow on 8/10/24.
//
import SwiftUI

struct faqsView: View {
    var body: some View {
        NavigationView {
            List {
                // Renters Guide Section
                Section(header: Text("Renters Guide")
                            .font(.custom("PTSans-Regular", size: 16))
                            .foregroundColor(.brandPrimary)) {
                    NavigationLink(destination: RentersGuideStandardRequirementsView()) {
                        Text("Standard Requirements")
                            .font(.custom("PTSans-Regular", size: 16))
                            .foregroundColor(.brandPrimary)
                    }
                    
                    NavigationLink(destination: RentersGuideGeneralClosingProceduresView()) {
                        Text("General Closing Procedures")
                            .font(.custom("PTSans-Regular", size: 16))
                            .foregroundColor(.brandPrimary)
                    }
                    
                    NavigationLink(destination: RentersGuideFAQView()) {
                        Text("Frequently Asked Questions")
                            .font(.custom("PTSans-Regular", size: 16))
                            .foregroundColor(.brandPrimary)
                    }
                }
                
                // Sellers Guide Section
                Section(header: Text("Seller's Guide")
                            .font(.custom("PTSans-Regular", size: 16))
                            .foregroundColor(.brandPrimary)) {
                    NavigationLink(destination: SellersGuideFAQView()) {
                        Text("Standard Requirements")
                            .font(.custom("PTSans-Regular", size: 16))
                            .foregroundColor(.brandPrimary)
                    }
                    
                    NavigationLink(destination: SellersGuideGeneralClosingProceduresView()) {
                        Text("General Closing Procedures")
                            .font(.custom("PTSans-Regular", size: 16))
                            .foregroundColor(.brandPrimary)
                    }
                    
                    NavigationLink(destination: SellersFAQView()) {
                        Text("Frequently Asked Questions")
                            .font(.custom("PTSans-Regular", size: 16))
                            .foregroundColor(.brandPrimary)
                    }
                }
                
                // Buyers Guide Section
                Section(header: Text("Buyer's Guide")
                            .font(.custom("PTSans-Regular", size: 16))
                            .foregroundColor(.brandPrimary)) {
                    NavigationLink(destination: BuyersStandardRequirementsView()) {
                        Text("Standard Requirements")
                            .font(.custom("PTSans-Regular", size: 16))
                            .foregroundColor(.brandPrimary)
                    }
                    
                    NavigationLink(destination: BuyersGuideClosingProceduresView()) {
                        Text("General Closing Procedures")
                            .font(.custom("PTSans-Regular", size: 16))
                            .foregroundColor(.brandPrimary)
                    }
                    
                    NavigationLink(destination: BuyersGuideFAQView()) {
                        Text("Frequently Asked Questions")
                            .font(.custom("PTSans-Regular", size: 16))
                            .foregroundColor(.brandPrimary)
                    }
                }
            }
            .navigationTitle("Guides")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Guides")
                        .font(.custom("PlayfairDisplay-Bold", size: 40))
                        .foregroundColor(.brandPrimary) // Apply brandPrimary color to navigation title
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
}

#Preview {
    faqsView()
}
