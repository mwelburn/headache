require 'factory_girl'

Factory.define(:user) do |u|
  u.name 'Test User'
  u.email 'user@test.com'
  u.password 'please'
end

Factory.define(:headache) do |h|
  h.user_id 1
  h.onset_time DateTime.new
  
  h.intensity 7
end