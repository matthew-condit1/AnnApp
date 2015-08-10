@list = ['https://scontent-lga1-1.xx.fbcdn.net/hphotos-xtp1/v/t1.0-9/11870757_10155941466980529_1245318787592394784_n.jpg?oh=9103c84634c62926ef0723c6c586205a&oe=5651B7E1',
       'https://scontent-lga1-1.xx.fbcdn.net/hphotos-xat1/v/t1.0-9/11742976_10155864720450529_4213957741043053587_n.jpg?oh=8acb677095ef38fba1e0e5a26f1f89c6&oe=5640DD0F']

def get_dinner
return @list[rand(@list.length)]
end
