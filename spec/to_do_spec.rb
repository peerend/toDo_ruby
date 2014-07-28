require ('rspec')
require ('list')
require('task')

describe List do
  it 'initializes the list' do
    test_list = List.new('wash')
    expect(test_list).to be_instance_of List
  end
  it 'adds a list item' do
    test_list = List.new('wash')
    expect(test_list.name).to eq 'wash'
  end

  describe 'add_task' do
    it 'adds a task to the list' do
      test_task = Task.new('do this')
      test_list = List.new('stuff to do')
      test_list.add_task(test_task)
      expect(test_list.tasks).to eq [test_task]
    end
  end
end
describe Task do
  it 'initializes the task as an instance of Task' do
    task_list = Task.new('wash the dog')
    expect(task_list).to be_instance_of Task
  end
end
