Rails.application.config.middleware.use OmniAuth::Builder do  
  
  provider :redmine, "DBwVCa9eU9Rz1lgwwOHlUXSHSI1jVK4gqttm3Ia5" , "9AhBgnTuKnQvEHKUnSFxBpG91LnrEz3d1hcMt52I", :redmine_base_url => "http://localhost:3000/", :expose => false 
  
end  
