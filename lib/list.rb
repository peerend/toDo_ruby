class List

  def initialize(list_name)
    @name = list_name
    @tasks = []
  end

  def name
    @name
  end

  def add_task(task_to_add)
    @tasks << task_to_add
  end

  def tasks
    @tasks
  end
end

