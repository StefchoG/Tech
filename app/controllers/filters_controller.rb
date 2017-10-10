require 'csv'
class FiltersController < ApplicationController
	def create
		csv_file = params[:file]
		csv_file_path = csv_file.path

		result = 0

		CSV.foreach(csv_file_path) do  |row|
		if row[2].to_i % 2 == 1
			result += row[1].to_f
			
		end
		end
		result.ceil()
		render plain: '%.2f' % result
	end
end
