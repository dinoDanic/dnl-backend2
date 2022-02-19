class ApplicationController < ActionController::Base
  # TODO: VUKA ZVONA : dok idem s localhost 3000 dobim poruku Authitication za 3000 nije methaclo 3005 (gdi vrtim rails s)
  # s ovom linijom ispod radi normalno
  skip_before_action :verify_authenticity_token
end
