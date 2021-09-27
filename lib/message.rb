class Message
  attr_accessor :msg, :translated_msg
  def initialize
    @msg = []
    @translated_msg = []
  end
  def self.english(input_file, instance)
    #converts a txt file containing english to a ruby array of strings. Each string is one character. Line breaks are denoted with ^. this object is stored in a new object msg
    instance = Message.new
    msg_string = File.read(input_file)
    instance.msg = msg_string.split("")
    instance.msg
    instance
  end

  def self.braille(input_file)
    #converts a txt file containing braille into an array of elements where each braille element is equal to one array element. Line breaks are denoted with \. This message is stored in a new object msg.
  end

  def braille_string
    #turns array into a string. Converts line breaks appropriately.
    range1 = 0..234
    s_line_1 = ""
    range1.step(6) {|x| s_line_1 += @translated_msg.join[x..1+x] if @translated_msg.join[x..1+x] != nil}
    s_line_2 = ""
    range1.step(6) {|x| s_line_2 += @translated_msg.join[x+2..3+x] if @translated_msg.join[x+2..3+x] != nil}
    s_line_3 = ""
    range1.step(6) {|x| s_line_3 += @translated_msg.join[x+4..5+x] if @translated_msg.join[x+4..5+x] != nil}

    range2 = 234..474
    s_line_4 = ""
    range2.step(6) {|x| s_line_4 += @translated_msg.join[x..1+x] if @translated_msg.join[x..1+x] != nil}
    s_line_5 = ""
    range2.step(6) {|x| s_line_5 += @translated_msg.join[x+2..3+x] if @translated_msg.join[x+2..3+x] != nil}
    s_line_6 = ""
    range2.step(6) {|x| s_line_6 += @translated_msg.join[x+4..5+x] if @translated_msg.join[x+4..5+x] != nil}

    range3 = 474..714
    s_line_7 = ""
    range3.step(6) {|x| s_line_7 += @translated_msg.join[x..1+x] if @translated_msg.join[x..1+x] != nil}
    s_line_8 = ""
    range3.step(6) {|x| s_line_8 += @translated_msg.join[x+2..3+x] if @translated_msg.join[x+2..3+x] != nil}
    s_line_9 = ""
    range3.step(6) {|x| s_line_9 += @translated_msg.join[x+4..5+x] if @translated_msg.join[x+4..5+x] != nil}

    range4 = 714..954
    s_line_10 = ""
    range4.step(6) {|x| s_line_10 += @translated_msg.join[x..1+x] if @translated_msg.join[x..1+x] != nil}
    s_line_11 = ""
    range4.step(6) {|x| s_line_11 += @translated_msg.join[x+2..3+x] if @translated_msg.join[x+2..3+x] != nil}
    s_line_12 = ""
    range4.step(6) {|x| s_line_12 += @translated_msg.join[x+4..5+x] if @translated_msg.join[x+4..5+x] != nil}


    range5 = 954..1194
    s_line_13 = ""
    range5.step(6) {|x| s_line_13 += @translated_msg.join[x..1+x] if @translated_msg.join[x..1+x] != nil}
    s_line_14 = ""
    range5.step(6) {|x| s_line_14 += @translated_msg.join[x+2..3+x] if @translated_msg.join[x+2..3+x] != nil}
    s_line_15 = ""
    range5.step(6) {|x| s_line_15 += @translated_msg.join[x+4..5+x] if @translated_msg.join[x+4..5+x] != nil}


    range6 = 1194..1434
    s_line_16 = ""
    range6.step(6) {|x| s_line_16 += @translated_msg.join[x..1+x] if @translated_msg.join[x..1+x] != nil}
    s_line_17 = ""
    range6.step(6) {|x| s_line_17 += @translated_msg.join[x+2..3+x] if @translated_msg.join[x+2..3+x] != nil}
    s_line_18 = ""
    range6.step(6) {|x| s_line_18 += @translated_msg.join[x+4..5+x] if @translated_msg.join[x+4..5+x] != nil}

    range7 = 1434..1674
    s_line_19 = ""
    range7.step(6) {|x| s_line_19 += @translated_msg.join[x..1+x] if @translated_msg.join[x..1+x] != nil}
    s_line_20 = ""
    range7.step(6) {|x| s_line_20 += @translated_msg.join[x+2..3+x] if @translated_msg.join[x+2..3+x] != nil}
    s_line_21 = ""
    range7.step(6) {|x| s_line_21 += @translated_msg.join[x+4..5+x] if @translated_msg.join[x+4..5+x] != nil}

    b_line_1 = s_line_1 + "\n" + s_line_2 + "\n" + s_line_3
    b_line_2 = s_line_4 + "\n" + s_line_5 + "\n" + s_line_6
    b_line_3 = s_line_7 + "\n" + s_line_8 + "\n" + s_line_9
    b_line_4 = s_line_10 + "\n" + s_line_11 + "\n" + s_line_12
    b_line_5 = s_line_13 + "\n" + s_line_14 + "\n" + s_line_15
    b_line_6 = s_line_16 + "\n" + s_line_17 + "\n" + s_line_18
    b_line_7 = s_line_19 + "\n" + s_line_20 + "\n" + s_line_21


    if @translated_msg.compact.length <= 40
      b_line_1
    elsif @translated_msg.compact.length > 40 && @translated_msg.compact.length <= 80
      b_line_1 + "\n" + b_line_2
    elsif @translated_msg.compact.length > 80 && @translated_msg.compact.length <= 120
      b_line_1 + "\n" + b_line_2 + "\n" + b_line_3
    elsif @translated_msg.compact.length > 120 && @translated_msg.compact.length <= 160
      b_line_1 + "\n" + b_line_2 + "\n" + b_line_3 + "\n" + b_line_4
    elsif @translated_msg.compact.length > 160 && @translated_msg.compact.length <= 200
      b_line_1 + "\n" + b_line_2 + "\n" + b_line_3 + "\n" + b_line_4 + "\n" + b_line_5
    elsif @translated_msg.compact.length > 200 && @translated_msg.compact.length <= 240
      b_line_1 + "\n" + b_line_2 + "\n" + b_line_3 + "\n" + b_line_4 + "\n" + b_line_5 + "\n" + b_line_6
    elsif @translated_msg.compact.length > 240 && @translated_msg.compact.length <= 256
      b_line_1 + "\n" + b_line_2 + "\n" + b_line_3 + "\n" + b_line_4 + "\n" + b_line_5 + "\n" + b_line_6 + "\n" + b_line_7
    else
      puts "Translation can only accomodate up to 256 characters. Please shorten message"
      exit
    end
  end

  def english_string
    #takes a long braille string and converts it into a nested array where layer 1 is broken up by char and layer 2 is b_element
    range1 = 0..79
    line_1 = []
    range1.step(2) {|x| if @msg[x..x+1] != nil ; line_1 << @msg[x..x+1].split ; else ; line_1 << [1] ; end}
    range2 = 80..159
    line_2 = []
    range2.step(2) {|x| if @msg[x..x+1] != nil ; line_2 << @msg[x..x+1].split ; else ; line_2 << [1] ; end}
    range3 = 160..239
    line_3 = []
    range3.step(2) {|x| if @msg[x..x+1] != nil ; line_3 << @msg[x..x+1].split ; else ; line_3 << [1] ; end}

    range = 0..@msg.length
    range.step(2) {|x| if @msg[x..x+1] != nil ; array << @msg[x..x+1].split ; else ; line_1 << [1] ; end}


     row_1 = []
     row_1 << line_1
     row_1 << line_2
     row_1 << line_3
     b_lines_1 = row_1.transpose
     b_lines_1 = b_lines_1.join(',')
     b_lines_1 = b_lines_1.gsub(',','')
     b_lines_1 = b_lines_1.gsub('1','')
     b_lines_1.scan(/....../)


  end
end
