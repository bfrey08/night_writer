class Library
  #stores 2 hashes. One that is keys: braille char in string format : Value = associated english char
  #second hash is key = english char (string)| value = braille char (string)
  attr_reader :braille_key, :english_key
  def initialize
    @braille_key = {a:     ".00000",
                    b:     ".0.000",
                    c:     "..0000",
                    d:     "..0.00",
                    e:     ".00.00",
                    f:     "...000",
                    g:     "....00",
                    h:     ".0..00",
                    i:     "0..000",
                    j:     "0...00",
                    k:     ".000.0",
                    l:     ".0.0.0",
                    m:     "..00.0",
                    n:     "..0..0",
                    o:     ".00..0",
                    p:     "...0.0",
                    q:     ".....0",
                    r:     ".0...0",
                    s:     "0..0.0",
                    t:     "0....0",
                    u:     ".000..",
                    v:     ".0.0..",
                    w:     "0...0.",
                    x:     "..00..",
                    y:     "..0...",
                    z:     ".00...",
                    " " => "      "}
    @english_key = {}
  end

end
