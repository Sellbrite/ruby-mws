module MWS
  module API

    class Product < Base

    # GetCompetitivePricingForASIN, GetLowestOfferListingsForASIN, GetMyPriceForASIN
    # GetMatchingProduct
      def_request [:get_competitive_pricing_for_ASIN, :get_lowest_offer_listings_for_ASIN,
                   :get_my_price_for_ASIN, :get_matching_product],
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
      def_request [:get_competitive_pricing_for_SKU, :get_lowest_offer_listings_for_SKU,
                   :get_my_price_for_SKU],
        :verb => :get,
        :uri => '/Products/2011-10-01',
        :version => '2011-10-01',
        :lists => {
          :seller_sku_list => "SellerSKUList.SellerSKU"
        }

      # GetProductCategoriesForSKU, GetProductCategoriesForASIN
      def_request([:get_product_categories_for_ASIN, :get_product_categories_for_SKU],
        :verb => :get,
        :uri => '/Products/2011-10-01',
        :version => '2011-10-01')

      # ListMatchingProducts
      def_request [:list_matching_products],
        :verb => :get,
        :uri => '/Products/2011-10-01',
        :version => '2011-10-01'

      # GetMatchingProductForId
      def_request :get_matching_product_for_id,
        :verb => :get,
        :uri => '/Products/2011-10-01',
        :version => '2011-10-01',
        :lists => {
          :id_list => "IdList.Id"
        }
    end

  end
end
