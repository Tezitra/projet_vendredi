require 'launchy'
def check_input_user
  abort("Ajout mot aprés la commande") if ARGV.empty?
end
def create_letter
	entry = ARGV
	urlone = "https://www.google.com/search?q="
	entry = entry.join(',')
	url = urlone + entry
	Launchy.open("#{url}")
end
create_letter	
check_input_user