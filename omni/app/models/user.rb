class User < ActiveRecord::Base
  has_many :sessions

  def self.find_or_create_from_auth_hash(auth_hash)
    info = auth_hash['info']
    find_or_create_by_uid(auth_hash['uid'])
  end
end
