def head
    "<html lang='en'>\n
    <head>\n
        <meta charset='UTF-8'>\n
        <meta name='viewport' content='width=device-width, initial-scale=1.0'>\n
        <meta http-equiv='X-UA-Compatible' content='ie=edge'>\n
        <title>Prueba II</title>\n
        <link rel='stylesheet' href='styles_prueba_II.css'>
        <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' integrity='sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh' crossorigin='anonymous'>
    <script src='https://code.jquery.com/jquery-3.4.1.slim.min.js' integrity='sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n' crossorigin='anonymous'></script>
<script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js' integrity='sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo' crossorigin='anonymous'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js' integrity='sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6' crossorigin='anonymous'></script>

    </head>\n
    <body>\n"
end

def footer
    "\t</body>\n
    </html>"
end

def css_new
    File.open('styles_prueba_II.css','w') do |f|
        f.puts "img {
            width: 500px;
            height: auto;
            border-radius: 5%;
          }"
    end
end

