OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '801587743296479', 'dd4b77f40d3c9c92f3322ff979c6acc4', 
            :scope => "email", :info_fields => "name,email,image", :display => 'popup', 
            :client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}
end