AddressFinder.configure do |af|
    # Required
    af.api_key = 'N7HCYXEQGD6ALTWM34RP'
    af.api_secret = 'YYYYYYYYYY'
  
    # Optional
    af.default_country = 'nz' # default: nz
    af.verification_version = 'v2' # default: v1
    af.timeout = 10 # default: 10 seconds
    af.retries = 12 # default: 12
    af.retry_delay = 5 # default: 5 seconds
    af.domain = 'localhost'
    af.proxy_host = ''
    af.proxy_port = ''
    af.proxy_user = ''
    af.proxy_password = ''
  end