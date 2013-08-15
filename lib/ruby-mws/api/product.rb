module MWS
  module API

    class Product < Base

    # GetCompetitivePricingForASIN, GetLowestOfferListingsForASIN, GetMyPriceForASIN
    # GetMatchingProduct
      def_request [:get_competitive_pricing_for_asin, :get_lowest_offer_listings_for_asin, 
                   :get_my_price_for_asin, :get_matching_product],
        :verb => :get,
        :uri => '/Products/2011-10-01',
        :version => '2011-10-01',
        :lists => {
          :asin_list => "ASINList.ASIN"
        }#, -- not sure we want to mod this, we'll lose the ASIN in the wrapper
        # :mods => [
        #   #lambda {|r| r.collect!{ |p| p.product }}
        # ]

    # GetCompetitivePricingForSKU, GetLowestOfferListingsForSKU, GetMyPriceForSKU  
      def_request [:get_competitive_pricing_for_sku, :get_lowest_offer_listings_for_sku, 
                   :get_my_price_for_sku],
        :verb => :get,
        :uri => '/Products/2011-10-01',
        :version => '2011-10-01',
        :lists => {
          :seller_sku_list => "SellerSKUList.SellerSKU"
        }
        
      # GetProductCategoriesForSKU, GetProductCategoriesForASIN
      def_request([:get_product_categories_for_asin, :get_product_categories_for_sku],
        :verb => :get,
        :uri => '/Products/2011-10-01',
        :version => '2011-10-01')

    end

  end
end
