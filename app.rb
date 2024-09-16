# frozen_string_literal: true

require 'csv'
require 'json'
require 'time'

NUMBER = 0

def number?(number)
  number =~ /^0/
end

# 050 CDE F
def csv_parse(file)
  number2carrier = {}

  CSV.foreach(file) do |row|
    number = row[NUMBER]
    next unless number?(number)

    cde = number
    (1..10).each do |column_index|
      f = column_index - 1
      cdef = "#{cde}#{f}"
      number2carrier[cdef] = row[column_index] unless row[column_index].nil?
    end
  end

  number2carrier
end

# https://www.soumu.go.jp/main_sosiki/joho_tsusin/top/tel_number/number_shitei.html
number2carrier = {}
%w[050.csv 0120.csv 0800.csv].each do |file|
  number2carrier.merge!(csv_parse(file))
end
number2carrier['lastUpdated'] = Time.now.iso8601

puts "const number2carrier = #{JSON.pretty_generate(number2carrier)}"
