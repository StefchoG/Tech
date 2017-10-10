require 'csv'
class IntervalsController < ApplicationController
  protect_from_forgery except: :create
	def create
		csv_file = params[:file]
		csv_file_path = csv_file.path

		result = 0
		num_of_rows = 0
    maxsum = 0
    number = 0 
    
    	CSV.foreach(csv_file_path) do |row|
      	num_of_rows += 1
      end

      while (number+30) != num_of_rows
      	result = 0
          CSV.foreach(csv_file_path).with_index(0) do  |row,current|
            if number+29 == current 
              break
            end
            
            result += row[0].to_f
            if result > maxsum
              maxsum = result.
            end 

            number += 1
    
          end
      end
    
      maxsum = maxsum.ceil
      render plain: '%.2f' % maxsum
    end
end
  