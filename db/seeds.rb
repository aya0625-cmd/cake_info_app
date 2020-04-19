cake_one = Category.create(:name=>"生菓子")

cake_itigo = cake_one.children.create(:name=>"いちご系ケーキ")
cake_tyoko = cake_one.children.create(:name=>"チョコレートケーキ")
cake_tizu = cake_one.children.create(:name=>"チーズケーキ")
cake_syu = cake_one.children.create(:name=>"シュークリーム")
cake_puri = cake_one.children.create(:name=>"プリン")

cake_two = Category.create(:name=>"焼き菓子")

cake_kuki = cake_two.children.create(:name=>"クッキー")
cake_mado = cake_two.children.create(:name=>"マドレーヌ")
cake_huxina = cake_two.children.create(:name=>"フィナンシェ")
cake_pau = cake_two.children.create(:name=>"パウンドケーキ")
cake_other = cake_two.children.create(:name=>"その他")

cake_three = Category.create(:name=>"誕生日ケーキ")

cake_four = Category.create(:name=>"ウエディングケーキ")