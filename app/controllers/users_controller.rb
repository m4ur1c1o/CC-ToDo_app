class UsersController
  def initialize(args)
    @view = UsersView.new
  end

  def index
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
    @view.index(User.all)
  end

  def add(name, email)
    @view.add
    user = User.new(name: name, email: email)
    user.save
    @view.add(user.id)
  end

  def delete(id)
    User.destroy(id)
    @view.delete(id)
  end

end






















