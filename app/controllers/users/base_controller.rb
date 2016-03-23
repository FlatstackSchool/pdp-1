module Users
  class BaseController < ApplicationController
    before_action :authenticate_user!

    def self.local_prefixes
      [controller_path, controller_path.split("/")[1..-1].join("/")]
    end
  end
end
