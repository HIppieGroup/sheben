class Admin::DashboardController < ApplicationController
	layout "admin"
	http_basic_authenticate_with name: "admin", password: "1111"
end
