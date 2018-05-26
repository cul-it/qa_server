# Controller for Check Status header menu item
class CheckStatusController < AuthorityValidationController

  ALL_AUTHORITIES = '__all__'.freeze

  class_attribute :presenter_class
  self.presenter_class = CheckStatusPresenter

  # Sets up presenter with data to display in the UI
  def index
    validate(authorities_to_validate)
    @presenter = presenter_class.new(authorities_list: authorities_list,
                                     status_data: status_data_from_log)
  end

  private

    def status_data_from_log
      @status_data = status_log.to_a
    end

    def authorities_to_validate
      return [] unless authority_name.present?
      (authority_name == ALL_AUTHORITIES) ? authorities_list : [authority_name]
    end

    def authority_name
      return @authority_name if @authority_name.present?
      @authority_name = (params.key? :authority) ? params[:authority].downcase : nil
    end
end
