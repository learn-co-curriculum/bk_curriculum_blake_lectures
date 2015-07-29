namespace :db do
  desc "run script to update apartments in db"
  task :populate => :environment do
    search = Search.new
    search.run
    search.persist
  end
end