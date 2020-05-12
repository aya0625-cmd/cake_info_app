class List < ActiveHash::Base
  self.data = [
    {id: 1, name: '人間関係'}, {id: 2, name: 'キャリア'}, {id: 3, name: 'ジェンダー'},
    {id: 4, name: 'コミュニケーション'}, {id: 5, name: 'ワークスタイル'}, {id: 6, name: 'スキル'},
    {id: 7, name: '起業・フリーランス'}, {id: 8, name: '子育て・結婚'}, {id: 9, name: 'リーダー'},
    {id: 10, name: '昇進'}, {id: 11, name: 'その他'}
  ]
end