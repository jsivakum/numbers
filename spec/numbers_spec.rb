require('rspec')
require('numbers')
require('pry')

describe('Fixnum#numbers') do
  it("returns one when input ") do
    expect(5.numbers()).to(eq("five"))
  end

  it("returns sixty two when input 60") do
    expect(60.numbers()).to(eq("sixty"))
  end

  it("returns twenty two when input 22") do
    expect(22.numbers()).to(eq("twentytwo"))
  end

  it("returns twelve when input 12") do
    expect(12.numbers()).to(eq("twelve"))
  end


  it("returns twenty two when input 22") do
      expect(322.numbers()).to(eq("threetwentytwo"))
  end
end
