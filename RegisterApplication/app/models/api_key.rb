class ApiKey < ActiveRecord::Base

  #associations
  belongs_to :user

  #Validates that user enter a name of application
  validates :app,
      presence: { presence: true, :message => 'Enter name of application' }

end
