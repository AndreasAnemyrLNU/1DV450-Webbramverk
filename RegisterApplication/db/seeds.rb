# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  users = User.create (
                          [
                              { username: 'Andreas' , email: 'andreas@anemyr.se' , password: 'secretpass' , password_confirmation: 'secretpass'},
                              { username: 'Matilda' , email: 'matilda@anemyr.se' , password: 'secretpass' , password_confirmation: 'secretpass'},
                              { username: 'Noa'     , email: 'noa@anemyr.se'     , password: 'secretpass' , password_confirmation: 'secretpass'},
                              { username: 'Ellen'   , email: 'ellen@anemyr.se'   , password: 'secretpass' , password_confirmation: 'secretpass'}
                          ]
                      )

   api_keys = ApiKey.create (
                                [
                                    { key: SecureRandom.base64 , user_id: 0 , app: 'MyShop 1' },
                                    { key: SecureRandom.base64 , user_id: 3 , app: 'MyShop 2' },
                                    { key: SecureRandom.base64 , user_id: 0 , app: 'MyShop 3' },
                                    { key: SecureRandom.base64 , user_id: 3 , app: 'MyShop 4' },
                                    { key: SecureRandom.base64 , user_id: 2 , app: 'MyShop 5' },
                                    { key: SecureRandom.base64 , user_id: 1 , app: 'MyShop 6' },
                                    { key: SecureRandom.base64 , user_id: 1 , app: 'MyShop 7' }
                                ]
                            )
