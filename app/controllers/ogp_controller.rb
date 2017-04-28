class OgpController < ApplicationController
  def show
    @root_url = url_for("http://"+request.host_with_port+"/")
    @ogp = Settings.ogp.find { |h| h['index'] == params[:id].to_i }
  end
end
