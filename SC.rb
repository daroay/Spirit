$:.unshift( File.dirname( __FILE__ ) )
require 'SpiritLexer'
require 'SpiritParser'

input = ANTLR3::FileStream.new(File.open('Operations.sp'))
lexer = Spirit::Lexer.new( input )
source = ANTLR3::CommonTokenStream.new( lexer )
parser = Spirit::Parser.new( source )
parser.goal
