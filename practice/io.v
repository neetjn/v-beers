import os

// get environmental variables
// const must be defined at module level
const (
  TEMP_PATH = os.getenv('TEMP_PATH')
)

fn main() {
  // read contents from file
  log := os.read_file('log.txt') or {
    // os.read_file returns string?
    // use or { ... } to handle error
    println('Could not read log file')
    return
  }
  assert log.len == 107
  // open file, File struct doesn't have many features available
  file := os.open('log.txt') or {
    println('Could not open file')
    return
  }
  defer {
    file.close()
  }
  // create directory
  os.mkdir_all('test/')
  assert os.is_dir('test/')
  // exists not found for some reason: https://github.com/vlang/v/blob/master/vlib/os/os.v#L529
  /* assert os.exists('test/') */
  // create file
  new_file := os.create('test/foobar.txt') or {
    println('Could not create a new file')
    return
  }
  assert os.file_exists('test/foobar.txt')
  // write to file
  new_file.writeln('hello world!')
  new_file.writeln('foo bar?')
  new_file.close()
  file_contents := os.read_file('test/foobar.txt') or {
    println('Could not find new file to read from')
    return
  }
  assert file_contents.len == 22
  // delete file
  os.rm('test/foobar.txt')
  assert !os.file_exists('test/foobar.txt')
  // delete directory
  os.rmdir('test/')
  assert !os.is_dir('test/')
  // verify environmental variables
  assert TEMP_PATH == '/tmp'
}
