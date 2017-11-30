require 'natto'
require "google/cloud/translate"

class Translator
  def initialize
    @gt = Google::Cloud::Translate.new
    @natto = Natto::MeCab.new
  end

  def convert(txt)
    en = @natto.enum_parse(txt)
    is = en.map.with_index { |e, i| e.feature.start_with?('名詞') ? i : nil }.compact
    ix = is.sample
    en.map.with_index do |n, i|
      i == ix ? translate(n.surface) : n.surface
    end.join
  end

  def translate(word)
    tt = @gt.translate word, to: 'en'
    tt.text
  end
end

tr = Translator.new
txt = ARGV[0] || '藪から棒'
puts txt
puts tr.convert(txt)
puts tr.translate(txt)
