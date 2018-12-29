defmodule FakerTest.Task do
  def work do
    File.write("/tmp/faker_test.txt", "#{Timex.now}", [:append])
  end
end
