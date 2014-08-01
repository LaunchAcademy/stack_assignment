require_relative '../lib/stack'

describe Stack do
  subject(:stack) { Stack.new }

  it 'allows us to push in objects' do
    stack.push(:plate)
    stack.push("Fortune Cookie")
    stack.push(Time.now)
    stack.push(3.14159)
  end

  it 'lets us see the topmost item' do
    stack.push(128)
    expect(stack.peek).to eq(128)
    expect(stack.empty?).to eq(false)
  end

  it 'removes and returns the topmost item' do
    stack.push(42)
    expect(stack.pop).to eq(42)
    expect(stack.empty?).to eq(true)
  end

  it 'raises exception if stack is empty' do
    expect { stack.pop }.to raise_error(StackUnderflow)
  end
end
