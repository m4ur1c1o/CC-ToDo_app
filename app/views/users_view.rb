class UsersView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario

	def index(array)
    array.each{  |instance|
      print instance.name, " ", instance.email, "\n"
    }
	end

  def add(id)
    User.find(id)
    new_users = []
    puts "Add user's name"
    new_user = $stdin.gets.chomp
    puts "Add user's email"
    new_user_email = $stadin.gets.chomp
    new_users << new_user << new_user_email
  end

  def delete(id)
    puts "se eliminó la tarea #{id}"
  end

  def update(id)
    User.find(id)
  end

	def error
	end
end
