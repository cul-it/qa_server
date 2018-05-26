# This presenter class provides all data needed by the view that checks the status of authorities.
class CheckStatusPresenter

  # @param authorities_list [Array<String>] a list of all loaded authorities' names
  # @param status_data [Array<Hash>] a list of status data for each scenario tested
  def initialize(authorities_list:, status_data:)
    @authorities_list = authorities_list
    @status_data = status_data
  end

  # @return [Array<String>] A list of all loaded authorities' names
  # @example ['AGROVOC_DIRECT', 'AGROVOC_LD4L_CACHE', 'LOCNAMES_LD4L_CACHE']
  def authorities_list
    @authorities_list
  end

  # @return [Array<Hash>] A list of status data for each scenario tested.
  # @example
  #   [ { status: :PASS,
  #       status_label: '√',
  #       authority_name: 'LOCNAMES_LD4L_CACHE',
  #       subauthority_name: 'person',
  #       service: 'ld4l_cache',
  #       action: 'search',
  #       url: '/qa/search/linked_data/locnames_ld4l_cache/person?q=mark twain&maxRecords=4',
  #       err_message: '' }, ... ]
  def status_data
    @status_data
  end

  # @return [Boolean] true if status data exists; otherwise false
  def status_data?
    @status_data.present?
  end

  # @return [String] the name of the css style class to use for the status cell based on the status of the scenario test.
  def status_style_class(status)
    "status_#{status[:status].to_s}"
  end
end
