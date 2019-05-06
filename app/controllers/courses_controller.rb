class CoursesController < ApplicationController
   def index
      lat = params[:lat]
      lng = params[:lng]
      response = HTTParty.get("http://api.pdga.com/services/json/course?limit=15&latitude=#{lat}&longitude=#{lng}", headers: { 'Cookie' => 'SSESSf1f85588bb869a1781d21eec9fef1bff=gyOxwP7dl9KsxLJikR9dSx1Z4LZTTyjgL5DuTGV-NUY' })
      render json: response.body
   end

   def user_courses
      course = params[:course_id]
      response = HTTParty.get("http://api.pdga.com/services/json/course?course_id=#{course}", headers: { 'Cookie' => 'SSESSf1f85588bb869a1781d21eec9fef1bff=gyOxwP7dl9KsxLJikR9dSx1Z4LZTTyjgL5DuTGV-NUY' })
      render json: response.body
   end

   def reauth
      res = HTTParty.post("https://api.pdga.com/services/json/user/login",
         :headers => { "Content-type" => "application.json"},
         :body => { "username" => "kwmcminn","password" =>"Thekev!990" })
         render json: res.body
   end
end
