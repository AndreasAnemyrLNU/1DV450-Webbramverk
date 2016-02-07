# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  users = User.create (
                          [
                              { username: 'Andreas' , email: 'andreas@anemyr.se' , password: 'secretpass' , password_confirmation: 'secretpass', admin: true },
                              { username: 'Matilda' , email: 'matilda@anemyr.se' , password: 'secretpass' , password_confirmation: 'secretpass' },
                              { username: 'Noa'     , email: 'noa@anemyr.se'     , password: 'secretpass' , password_confirmation: 'secretpass' },
                              { username: 'Ellen'   , email: 'ellen@anemyr.se'   , password: 'secretpass' , password_confirmation: 'secretpass' },
                              { username: 'Elia'    , email: 'elia@anemyr.se'    , password: 'secretpass' , password_confirmation: 'secretpass' },
                              { username: 'Maja'    , email: 'maja@anemyr.se'    , password: 'secretpass' , password_confirmation: 'secretpass' },
                              { username: 'Wilma'   , email: 'wilma@anemyr.se'   , password: 'secretpass' , password_confirmation: 'secretpass' }
                          ]
                      )

   api_keys = ApiKey.create (
                                [
                                    { key: SecureRandom.base64 , user_id: 1 , app: 'MyShop 1' },
                                    { key: SecureRandom.base64 , user_id: 2 , app: 'MyShop 2' },
                                    { key: SecureRandom.base64 , user_id: 3 , app: 'MyShop 3' },
                                    { key: SecureRandom.base64 , user_id: 4 , app: 'MyShop 4' },
                                    { key: SecureRandom.base64 , user_id: 5 , app: 'MyShop 5' },
                                    { key: SecureRandom.base64 , user_id: 6 , app: 'MyShop 6' },
                                    { key: SecureRandom.base64 , user_id: 0 , app: 'MyHackedFacebook 1' },
                                    { key: SecureRandom.base64 , user_id: 1 , app: 'MyHackedFacebook 2' },
                                    { key: SecureRandom.base64 , user_id: 2 , app: 'MyHackedFacebook 3' },
                                    { key: SecureRandom.base64 , user_id: 3 , app: 'MyHackedFacebook 4' },
                                    { key: SecureRandom.base64 , user_id: 4 , app: 'MyHackedFacebook 5' },
                                    { key: SecureRandom.base64 , user_id: 5 , app: 'MyHackedFacebook 6' },
                                    { key: SecureRandom.base64 , user_id: 6 , app: 'MyHackedFacebook 7' }
                                ]
                            )
