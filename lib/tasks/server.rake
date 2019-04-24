namespace :server do
  desc "Start Rails Server (port 4000)"
  task start: :environment do
    sh %{rails s -p 4000}
  end

end
