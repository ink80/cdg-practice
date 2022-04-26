
DB_FILE = 'db_task2.txt'
RESULT_FILE = 'result.txt'

def index(file)
  File.foreach(file) { |line| puts line }
end

def file_list(file)
    list = []
    File.foreach(file) { |line|  list << line }
    list
end

def find(file)
  lines = []
  age = gets.chomp
  File.foreach(file) do |line|
    lines.push(line) if line.include?(age)
  end
  lines
end

def write_result(result_file, line)
  file = File.open(result_file, 'a')
  file.puts(line)
end

def proccess_file
  index(DB_FILE)
  list = file_list(DB_FILE)
  
  print('Введите возраст: ')
  lines = find(DB_FILE)
  result_list = []
  if list.length > 0 && !results_array.include?(line) 
    lines.each do |line|
      result_list << line
      write_result(RESULT_FILE, line)
    end
  end
  puts index(RESULT_FILE)
end

proccess_file
