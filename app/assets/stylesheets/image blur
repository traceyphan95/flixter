class Image
  attr_accessor :data

  def initialize(argument_1)
    self.data = argument_1
  end

  def output_image
    self.data.each do |row|
      puts row.join ("")
    end
  end

 end

 image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image
puts