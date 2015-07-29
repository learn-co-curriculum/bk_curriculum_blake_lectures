require 'sinatra'
require 'json'

get "/" do

  "hello world"

end

get "/strings" do
  [{:name => "Blake", :height => 6, :dance_moves => "on point"},
    {:name => "Steven", :height => 6, :dance_moves => "N/A"},
    {:name => "Katie", :height => 6, :dance_moves => "N/A"}
  ].to_s
end

get "/jsonified" do
  response = [{:name => "Blake", :height => 6, :dance_moves => "on point"},
    {:name => "Steven", :height => 6, :dance_moves => "N/A"},
    {:name => "Katie", :height => 6, :dance_moves => "N/A"}
  ]
  response.to_json
end