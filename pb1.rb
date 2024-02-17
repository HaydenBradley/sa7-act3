def parse_csv(file_path)
    data = []
    lines = File.read(file_path).split("\n")
  
    headers = lines.first.split(',')
  
    lines[1..-1].each do |line|
      values = line.split(',')
      row_hash = Hash[headers.zip(values)]
      data << row_hash
    end
  
    data
  end
  
  file_path = 'data.csv'
  csv_data = parse_csv(file_path)
  
  puts csv_data.inspect