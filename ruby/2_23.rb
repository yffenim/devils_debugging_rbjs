# Lesson 2, Exercise 23
# Hello Assert
# require './assertion_error.rb'

require 'solid_assert'


def remove_html_markups(s)
  tag = false
  quote = false 
  out = ""

  s.each_char do |c|
# raise error if at any point in loop we have !tag
    assert !tag
    if c == '<' && !quote
      tag = true 
    elsif c == '>' && !quote 
      tag = false
    elsif c == "" || c == "'" && tag
      quote = !quote
    elsif !tag 
      out += c
    end 
  end
  out
end

p remove_html_markups("<b>foo</b>")
p remove_html_markups('"foo"')
