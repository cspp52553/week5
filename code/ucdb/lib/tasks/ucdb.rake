namespace :ucdb do
  desc "Generate a report"
  task :generate_report => :environment do
    puts "There are #{Movie.count} movies."
  end

  desc "Greeting"
  task :say_hello do
    puts "Wazzzzup"
  end
end
