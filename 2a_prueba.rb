require "uri"
require "net/http"
require 'openssl'
require 'json'
require_relative 'def_aux'

def nasa_api(dir,api_key)
    url=URI(dir.sub"DEMO_KEY",api_key)
    https = Net::HTTP.new(url.host, url.port);
    request = Net::HTTP::Get.new(url)
    https.use_ssl = true
    https.verify_mode = OpenSSL::SSL::VERIFY_NONE
    response = https.request(request)
    JSON.parse(response.read_body)
end

nasa_data = nasa_api("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY","QfGOKNPL1HZqQhM6BVeshfd68tZbGwHn4YcCHjkm")
nasa_data_without_photos =  nasa_data["photos"] #lo agregué despues, para utilizarlo en la pregunta bonus

css_new #crea un nuevo css para el archivo html

File.open('prueba_rob_navarrete.html','w') do |f|
    f.puts head
    f.puts '<ul>'
    nasa_data["photos"][0..20].each do |hash_info| #sólo mostrando algunas imagenes y no traer las 800 de json
        f.puts "<li><h2>Imagen: #{hash_info['id']}, Fecha de captura: #{hash_info['earth_date']}</h2>
        <img src='#{hash_info['img_src']}' alt=''></li>"
    end
    f.puts '</ul>'
    f.puts footer
end


def photos_count(hash_response)
    camera_names = []
    hash_response.each do |info_hash|
        camera_names << info_hash['camera']['name']
    end
    
    grouped = camera_names.group_by {|x| x}
    grouped.each do |k,v|
        grouped[k] = v.length
        end
        puts grouped
    end

photos_count(nasa_data_without_photos) #el método photos_count con el hash de respuesta (sin ['photos']) como argumento 




# puts 
# photos_ids = []
# result["photos"].each do |info_hash|
#     photos_ids << info_hash['id'].to_s
# end

# new_hash = photos_ids.zip(camera_names)
# #print new_hash.to_h




