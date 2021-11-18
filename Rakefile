require "digest/md5"

require_relative "features/support/libs/mongo"

def to_md5(pass)
    return Digest::MD5.hexdigest(pass)
end

task :test do
  puts "Executando uma tarefa de teste"
end

task :local_seeds do
  CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/local.yml"))

  users = [
    { name: "jamesbond", email: "bond@gmail.com", password: to_md5("123") },
    { name: "juca", email: "juca@gmail.com", password: to_md5("1234") },
    { name: "spiderman", email: "spider@gmail.com", password: to_md5("1234") },
  ]

  MongoDB.new.drop_danger
  MongoDB.new.insert_users(users)

  # sh "cucumber"
end

task :hmg_seeds do
  CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/hmg.yml"))

  users = [
    { name: "jamesbond", email: "bond@gmail.com", password: to_md5("123") },
    { name: "juca", email: "juca@gmail.com", password: to_md5("1234") },
  ]

  MongoDB.new.drop_danger
  MongoDB.new.insert_users(users)
end
