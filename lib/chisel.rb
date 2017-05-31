class Chisel
  attr_reader :markdown

  def initialize(markdown)
    @markdown = markdown
  end

  def convert_to_html
    markdown_chunks = string_to_chunks(@markdown)
    html_chunks = markdown_chunks.map do |markdown_chunk|
      chuunk_to_html(markdown_chunk)
    end
    chunks_to_string html_chunks
  end

  def string_to_chunks(string)
    string.split("\n")
  end

  def chunk_to_html(markdown_chunk)
    char = 1 + markdown_chunk.index(" ")
    last_char = -1
    header_txt = markdown_chunk[char..last_char]

    level = char - 1
    "<h#{level}>#{header_txt}</h#{level}>"

  end

im_running_the_program = ($PROGRAM_NAME == __FILE__)

if im_running_the_program
  markdown_file = ARGV[0]
  html_file = ARGV[1]

  markdown = File.read(markdown_file)

  html = Chisel.new(markdown).convert_to_html

  File.write(html_file, html)


end
end
