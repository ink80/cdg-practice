FILE_PATH = 'db.txt'
BUFFER = 'buffer.txt'

def index
  File.foreach(FILE_PATH) { |line| puts line }
end

def find(id)
  File.foreach(FILE_PATH).with_index do |line, index|
    puts line if index == id
  end
end

def where(pattern)
  File.foreach(FILE_PATH).with_index do |line, index|
    puts "#{index}  #{line}" if line.include?(pattern)
  end
end

def update(id, text)
  file = File.open(BUFFER, 'a')
  File.foreach(FILE_PATH).with_index do |line, index|
    line = text if index == id
    file.puts(line)
  end
  file.close

  File.write(FILE_PATH, File.read(BUFFER))

  File.delete(BUFFER) if File.exist?(BUFFER)
end

def delete(id)
  file = File.open(BUFFER, 'a')
  File.foreach(FILE_PATH).with_index do |line, index|
    file.puts(line) if index != id
  end
  file.close

  File.write(FILE_PATH, File.read(BUFFER))

  File.delete(BUFFER) if File.exist?(BUFFER)
end
