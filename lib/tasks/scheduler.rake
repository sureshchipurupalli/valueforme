desc "This task is used for notify uncomplete appraisal"
task :auto_email_when_uncomplete => :environment do
  puts "Sending email......"
  Appraisal.delay.auto_email_when_uncomplete
  puts "Done."
end