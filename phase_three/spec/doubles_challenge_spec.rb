RSpec.describe "doubles challenge" do
  it "creates a sophisticated double" do
    task_list = double :double, add: nil
    task = double :task

    task_list.add(task)
    
    expect(task_list).to receive(:list).and_return [task]
    expect(task_list).to receive(:count).and_return 1
    expect(task_list).to receive(:clear).and_return :success

    expect(task_list.list).to eq [task]
    expect(task_list.count).to eq 1
    expect(task_list.clear).to eq :success
  end
end