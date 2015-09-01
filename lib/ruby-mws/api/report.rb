module MWS
  module API

    class Report < Base
      def_request [:request_report],
        :verb => :get,
        :uri => '/',
        :version => '2009-01-01',
        :lists => {
          :marketplace_id_list => "MarketplaceIdList.Id"
        }

      def_request [:get_report_request_list],
        :verb => :get,
        :uri => '/',
        :version => '2009-01-01',
        :lists => {
          :report_request_id_list => "ReportRequestIdList.Id",
          :report_type_list => "ReportTypeList.Type",
          :report_processing_status_list => "ReportProcessingStatusList.Status"
        },
        :mods => [
          lambda {|r| r.report_requests = [r.report_request_info].flatten}
        ]

      def_request [:get_report_request_list_by_next_token],
        :verb => :get,
        :uri => '/',
        :version => '2009-01-01'

      def_request [:get_report],
        :verb => :get,
        :uri => '/',
        :version => '2009-01-01'
      
    end

  end
end
