require 'csv'
class SumsController < ApplicationController
	def create
		csv_file = params[:file]
		csv_file_path = csv_file.path

		result = 0

		CSV.foreach(csv_file_path) do  |row|
			result += row[0].to_f
		end
		result.ceil()
		render plain: '%.2f' % result
	end
end
