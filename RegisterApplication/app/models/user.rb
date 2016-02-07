class User < ActiveRecord::Base


  def owner
    self.username
  end

  # associations
  has_many :api_keys

  #email
  validates :email,
            :presence => { :message => 'Email field can\'t be blank'},
            :uniqueness => true

  #password
  #validates :password,
  #          :presence => { :message => 'Password field can\'t be blank'}

  #password
  validates :password_confirmation,
            :presence => { :message => 'Password Confirmation field can\'t be blank'}

  #username
  validates :username,
            :presence => { :message => 'Username field can\'t be blank' }

  #TODO regex validate email

  has_secure_password
end
