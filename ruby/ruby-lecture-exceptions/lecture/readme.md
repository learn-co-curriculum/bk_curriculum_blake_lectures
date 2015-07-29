when your program encounters an error and exception is raised.

you can raise an exception yourself by calling raise
raise [EXCEPTION_CLASS], [MESSAGE], [BACKTRACE]
raise creates a RuntimeError with no message
raise "hello" creates a RuntimeError with the message hello

if you want to raise a custom error you must create a class that subclasses Exception

class AnInformativeError < StandardError
end

raise AnInformativeError

you can rescue an exception with a begin/rescue block

begin
  raise
rescue => e
  puts e
end