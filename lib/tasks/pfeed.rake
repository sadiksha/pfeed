namespace :pfeed do

    desc 'Sets up parolkar\'s pfeed plugin '
    task :setup do
       root = "#{Rails.root}"
      raise 'pfeed plugin was only tested on unix & windows' if ! Rake.application.unix? &&  ! Rake.application.windows?

      if ! File.exists?("#{root}/vendor/plugins/inflectionist")
        puts "Inflectionist plugin is required by pfeed, while you dont seem to have it installed \n Attempting to install..."
        system "#{root}/script/rails plugin install git://github.com/parolkar/inflectionist.git "
      end

      raise '...something went wrong please install http://github.com/parolkar/inflectionist first!' if ! File.exists?("#{root}/vendor/plugins/inflectionist")

      welcome_screen

    end

    def welcome_screen

    mesg = <<HERE
Congratulations for setting the plugin!


HERE

    puts mesg
    end

end