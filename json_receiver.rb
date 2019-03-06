server = "http://127.0.0.1:5000/api/status"

require 'net/http' #標準ライブラリの呼び出し
require 'uri'
require "json" #jsonを使うためのライブラリ

#指定のURLにJSONデータをリクエストしている
res = Net::HTTP.get(URI.parse(server))
#表示する
# puts res

hash = JSON.parse(res)
l = []
for i in [*1..(hash.length)] do
    l.push(i.to_s)

  end
  puts l


  list = []
  for i in l do
      puts hash[i]
      if hash[i]=="A" then
        list.push(0)
      elsif hash[i]=="T" then
        list.push(1)
      elsif hash[i]=="G" then
        list.push(2)
      elsif hash[i]=="C" then
        list.push(3)
      end
    end

    puts list
    
