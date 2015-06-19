require 'active_record'
require 'sqlite3'
require 'yaml'
require 'faker'
require_relative '../app/models/task'
require_relative '../app/models/user'
require_relative '../app/views/tasks_view'
require_relative '../app/views/users_view'
require_relative '../app/controllers/tasks_controller'
require_relative '../app/controllers/users_controller'

configuration = YAML::load_file(File.join(__dir__, 'database.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])
