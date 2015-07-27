class SessionsController < ApplicationController
  # SDP: If you are authenticated all the actions, then you can remove the only: for
  # brevity
  before_action :authenticate_user!, only: [:show, :new, :create, :edit, :update]
end
