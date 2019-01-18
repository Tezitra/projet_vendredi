def create_projet 

argument = ARGV


Dir.mkdir("#{argument}")
Dir.mkdir("#{argument}/lib")
File.new("#{argument}/README.md", "w+")
File.new("#{argument}/Gemfile", "w+")

File.new("#{argument}/lib/#{argument}rb", "w+")
gemfile = File.open("#{argument}/Gemfile","a")

gemfile.puts("source \"https://rubygems.org\"")
gemfile.puts("ruby '2.5.1'")
gemfile.puts("gem 'rspec'")
gemfile.puts("gem 'pry'")
gemfile.puts("gem 'rubocop', '~> 0.57.2'")
gemfile.close

Dir.chdir("#{argument}")


system("bundle install")
system("rspec --init")
File.new("#{argument}/spec/#{argument}_specrb", "w+")
end
create