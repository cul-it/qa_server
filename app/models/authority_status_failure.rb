# Provide access to the authority_status_failure database table which tracks specific failures over time.
class AuthorityStatusFailure < ActiveRecord::Base
  self.table_name = 'authority_status_failure'
  belongs_to :authority_status
end
