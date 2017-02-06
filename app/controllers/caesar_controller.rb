require "caesar"

class CaesarController < ApplicationController
  def home
    @start_time = Time.now
  end

  def decrypt
    end_time = Time.now
    start_time = Time.parse(params[:start_time])
    @elapsed_time = end_time - start_time
    encrypted_message = params[:encrypted_message]
    @possibilities = Caesar.new.decrypt_message(encrypted_message)
  end
end
