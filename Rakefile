require 'rake'

desc "upload your pubilc ssh key to server"
task :upload_ssh_key do
  print "Enter username: "
  user = $stdin.gets.chomp
  print "Enter server ip: "
  server_ip = $stdin.gets.chomp
  puts "uploading your public ssh key..."
  system %Q{cat ~/.ssh/id_rsa.pub | ssh #{user}@#{server_ip} 'mkdir -p .ssh && cat - >> ~/.ssh/authorized_keys'}
  puts "uploaded!"
end
