if Rails.env == "production"
  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '221073327989545', 
      '4148fd1b9663fc58fb66958926f78f82',
      :scope => 'publish_actions,email,offline_access,read_stream', :display => 'popup', 
      :client_options => { 
        :ssl => {
          :ca_file => Rails.root.join('ca_bundle.crt').to_s
          }
        }
  end
else
  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '221073327989545', 
      '4148fd1b9663fc58fb66958926f78f82',
      :scope => 'publish_actions,email,offline_access,read_stream', :display => 'popup', 
      :client_options => { 
        :ssl => {
          :ca_file => Rails.root.join('ca_bundle.crt').to_s
          }
        }
  end
end