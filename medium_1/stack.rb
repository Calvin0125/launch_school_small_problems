def num_to_register(register, stack, num)
  [num.to_i , stack]
end

def push_to_stack(register, stack)
  stack << register
  [register, stack]
end

def add(register, stack)
  result = register + stack.pop
  [result, stack]
end

def subtract(register, stack)
  result = register - stack.pop
  [result, stack]
end

def multiply(register, stack)
  result = register * stack.pop
  [result, stack]
end

def divide(register, stack)
  result = register / stack.pop
  [result, stack]
end

def modulus(register, stack)
  result = register % stack.pop
  [result, stack]
end

def pop_from_stack(register, stack)
  register = stack.pop
  [register, stack]
end

def print_register(register, stack)
  puts register
  [register, stack]
end

def execute_command(register, stack, command)
  case command
  when /[0-9]+/
    num_to_register(register, stack, command)
  when 'PUSH'
    push_to_stack(register, stack)
  when 'ADD'
    add(register, stack)
  when 'SUB'
    subtract(register, stack)
  when 'MULT'
    multiply(register, stack)
  when 'DIV'
    divide(register, stack)
  when 'MOD'
    modulus(register, stack)
  when 'POP'
    pop_from_stack(register, stack)
  when 'PRINT'
    print_register(register, stack)
  end
end

def minilang(commands)
  register = 0
  stack = []
  commands = commands.split
  commands.each { |command| register, stack = execute_command(register, stack, command) }
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

