# patch_link.rb

if ARGV.size == 0
  puts <<EOS
<< patch_link.rb >>
usage:
  ruby patch_link.rb <html>
    html: source HTML file.
EOS
  exit 1
end

fn = ARGV[0]
if File.extname(fn).downcase != '.html'
  puts "`#{fn}`is not HTML file."
  exit 2
end

begin
  html = File.read fn
  # puts html

  html.gsub!(/href=\".+\"/) {|href|
    href.gsub!('_', '')
  }

  # puts html

  File.write(ARGV[0], html)
rescue => e
  p e
end
