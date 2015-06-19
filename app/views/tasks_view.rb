class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
  def initialize
    # @task = TasksController.new
  end

	def index(array)
    array.each{  |instance|
      print instance.user_id, " ", instance.name, " ", instance.status, "\n"
    }
	end

  def add
    puts "User ID"
    who = $stdin.gets.chomp
    puts "Task"
    desc = $stdin.gets.chomp
    task = [who, desc]
  end

  def add_real(id)
    puts Task.find(id)
  end

  def delete
    puts "id"
    id = $stdin.gets.chomp
  end

  def delete_real(id)
    puts "se elimino la tarea #{id}"
  end

  def update
    puts "id"
    id = $stdin.gets.chomp
  end

  def update_real(id)
    who = Task.find(id)
    puts who.to_s
  end

	def error
	end
end
