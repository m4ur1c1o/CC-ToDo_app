class TasksController
  def initialize#(args)
    @view = TasksView.new
  end

  def index
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
    @view.index(Task.all)
  end

  def add
    task = @view.add
    add_real(task[0],task[1])
  end

  def add_real(who, desc)
    task = Task.new(user_id: who, name: desc, status: "incomplete")
    task.save
    @view.add_real(task.id)
  end

  def delete
    id = @view.delete
    delete_real(id)
  end

  def delete_real(id)
    Task.destroy(id)
    @view.delete_real(id)
  end

  def update
    id = @view.update
    task = Task.find(id)
    task.update_attributes(status: "complete")
    @view.update_real(id)
  end
end







