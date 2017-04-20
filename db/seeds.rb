# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FileUtils.remove_dir PATH_FILES rescue nil

subject_0 = Category.new name: 'Testes'
subject_0.save
subject_1 = Category.new name: 'Assunto 1'
subject_1.save
subject_2 = Category.new name: 'Assunto 2'
subject_2.save

text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id pellentesque magna, venenatis aliquam nisi. Cras ultricies placerat arcu sit amet dictum. Donec eget tortor eu ex sagittis tempor at vel urna. Nam in nisl blandit, accumsan sem quis, vehicula lacus. Curabitur vitae dapibus leo. Nam ligula dui, venenatis non sollicitudin ac, sagittis in enim. Donec vel mi ullamcorper velit egestas tincidunt. Nam at tristique nisl. Nam eros urna, sagittis iaculis dolor vel, gravida imperdiet purus. Vivamus tempor elit vitae ex lobortis luctus. Interdum et malesuada fames ac ante ipsum primis in faucibus.

Maecenas quis consectetur metus, ac porttitor odio. Donec sodales condimentum ex at suscipit. Proin semper molestie risus at elementum. Duis facilisis faucibus odio, at sollicitudin nisi rutrum vestibulum. Pellentesque pellentesque elementum metus sed laoreet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed volutpat, augue id convallis tincidunt, tellus diam consequat dui, sed finibus risus metus tempus lorem. Ut diam justo, interdum vel pulvinar quis, accumsan a diam. Etiam in fermentum ante, varius molestie urna. Nullam interdum nisi sed ipsum interdum bibendum. Sed nisi ipsum, fermentum eget eros in, blandit posuere tortor. Maecenas id rhoncus felis, vitae euismod ante. In vitae ligula egestas, iaculis justo quis, sodales orci. Nam sit amet orci at eros volutpat sollicitudin efficitur sed risus. Fusce consectetur volutpat libero quis pretium.

Vestibulum a diam a orci lacinia tincidunt. Fusce sagittis tortor at quam sollicitudin facilisis vel et tortor. Quisque in ante arcu. Quisque finibus lacus vitae euismod bibendum. Maecenas dictum, neque ut finibus posuere, ipsum lorem vestibulum metus, et imperdiet urna sem quis purus. Sed ut purus non quam varius pretium. Nulla tempor, leo eu fermentum tincidunt, nunc quam placerat nisl, at auctor ante lacus eget nulla. Morbi lacinia nulla vel orci ornare sodales. Suspendisse et porttitor nibh.

Mauris sed lobortis tellus. Nullam in mattis urna. Fusce tristique tincidunt vestibulum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi faucibus dapibus sollicitudin. Fusce ut rutrum ante, aliquet luctus nulla. Suspendisse auctor felis justo. Nam molestie feugiat dictum. Nullam eu ex blandit, facilisis sem nec, consequat turpis. Vestibulum porta pretium elit ut lacinia. Pellentesque volutpat, tortor vel commodo pulvinar, tellus augue molestie sapien, rutrum dignissim mi quam quis nibh. Integer at malesuada mauris, sed maximus nunc.

In eget tempus eros. Donec quis dui mattis massa ultricies pharetra. Aenean et ligula nisl. Cras cursus libero eu purus commodo mattis. Aliquam erat volutpat. Nulla vitae lorem semper nisi sollicitudin dictum in a ligula. Cras dignissim egestas odio, varius congue elit rhoncus quis. Integer condimentum mauris at aliquam mollis. Sed at viverra est. Praesent lacinia nec elit et pellentesque. Suspendisse orci augue, malesuada mollis risus non, dignissim aliquam mauris.

Suspendisse potenti. Quisque laoreet auctor nibh, ut condimentum lacus scelerisque vitae. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed euismod mi bibendum auctor pharetra. Vestibulum ac sagittis odio, at blandit urna. Donec ultricies accumsan dui ut imperdiet. Nulla hendrerit lectus a ex pellentesque, quis sollicitudin nulla interdum. Sed quis aliquet nisi.

Maecenas laoreet fringilla ultrices. Nunc consectetur nunc sit amet felis laoreet, eu euismod diam egestas. Etiam in sem dui. Proin luctus sagittis velit, a dignissim risus faucibus a. Aenean rhoncus lobortis ligula at aliquam. Praesent auctor orci ut nunc tempor, in vestibulum nisl auctor. Aenean egestas bibendum mauris id fermentum.

Duis ac elit sed mi maximus efficitur. Donec orci sem, tempor quis ligula at, euismod accumsan odio. Nullam sit amet consectetur augue. Maecenas aliquet erat nec purus egestas, non viverra urna ultricies. Sed sagittis elementum nulla in tincidunt. Maecenas ex mi, iaculis non pellentesque sit amet, sollicitudin eget est. Suspendisse dapibus velit eu ipsum laoreet, vel varius nibh faucibus. Maecenas nec ipsum at ipsum consectetur luctus non ut metus. Etiam non viverra risus, id fringilla felis. Cras et iaculis tortor. Sed pulvinar pellentesque nibh rhoncus tincidunt.

Sed quis libero felis. Maecenas id suscipit nisi. Nullam tristique urna leo, vitae imperdiet purus tristique non. Sed molestie faucibus venenatis. Duis ullamcorper sodales consectetur. Sed placerat feugiat nisl et vestibulum. Nunc tempor quam non finibus sagittis. Ut semper tincidunt porttitor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam nec nunc vitae quam scelerisque consectetur. Nunc molestie leo nunc, eu aliquet tellus cursus quis. Curabitur commodo nibh metus, sit amet ultrices nibh congue at. Integer dictum purus sed ante finibus consectetur. Aliquam malesuada auctor nunc in placerat. Praesent luctus, tellus sed auctor aliquam, justo felis posuere sem, sed ornare mauris est a sapien.

Duis ac sem quis erat sollicitudin pulvinar. Aenean lacinia felis id turpis pulvinar, vel mattis lectus fermentum. Maecenas ac libero ac enim varius elementum. Nam ante tellus, pulvinar eu aliquet non, sodales ut orci. Etiam ut elementum est, vitae hendrerit risus. Nunc at tempor quam. Duis aliquam luctus commodo.

Praesent a neque pretium, tempor odio nec, gravida metus. Aenean in arcu risus. Aliquam aliquam, eros eget blandit mattis, nisl quam egestas magna, eu aliquet dui ex sit amet purus. In nec metus luctus erat imperdiet semper. Cras posuere at ex finibus convallis. Nunc sollicitudin risus nec imperdiet volutpat. Aliquam dapibus eros ut dapibus interdum. Integer tincidunt, augue ac pulvinar lobortis, eros lectus aliquet neque, lobortis tristique erat dui tincidunt metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non viverra risus, non maximus nunc. Nunc augue elit, porttitor in feugiat ut, tristique ac arcu. Aenean libero enim, bibendum eu interdum sed, tincidunt vitae eros.

Nam viverra dolor eu elit porttitor, eget aliquet leo mattis. Proin mattis, turpis quis congue sagittis, sem elit placerat nunc, at volutpat leo tellus sit amet leo. Suspendisse efficitur erat vitae mauris efficitur volutpat. Etiam quis ante auctor, sollicitudin risus vitae, facilisis est. Sed vitae eleifend dolor. Etiam laoreet odio magna, vitae sodales orci egestas ac. Donec venenatis tortor eu pulvinar rutrum. Duis vel accumsan justo, eu venenatis urna. Nulla id arcu lacus. Sed et finibus ipsum. Nulla eu pellentesque leo. Duis viverra pulvinar felis non tempus. Duis tincidunt arcu diam, et aliquam lorem sagittis at. Aenean varius nulla eget lacus blandit aliquet.

Proin eu dictum odio. Integer mollis mi non quam interdum, ut venenatis mauris euismod. Vivamus rhoncus ligula at ante aliquet tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id nisi ornare, elementum sapien vel, aliquam diam. Cras sit amet pharetra nulla. Duis pulvinar porttitor porta. Aliquam erat volutpat. Nam purus ante, rhoncus eget metus vel, rhoncus ultrices urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;

Curabitur aliquet ultricies dictum. Pellentesque sit amet erat id purus pulvinar sagittis. Nulla in metus a leo sodales rhoncus eget vitae metus. Praesent quis nisl porta, convallis purus in, vulputate odio. Duis lobortis pulvinar nisl. Donec eleifend nunc ut orci venenatis lacinia. Sed vulputate egestas lacus, eu pellentesque diam imperdiet dignissim.

Morbi id fermentum libero, et posuere mauris. Morbi ipsum odio, ultricies at neque a, laoreet suscipit sapien. Maecenas massa metus, tempus vitae lacinia in, accumsan non nunc. Donec et fermentum eros, vitae finibus dolor. Morbi varius sit amet felis non pharetra. Sed interdum dolor et enim cursus, et finibus ante imperdiet. Nulla ipsum nibh, ornare eu ligula at, tincidunt consectetur turpis. Praesent auctor sem eleifend lacus tincidunt, id commodo urna vehicula. Etiam sed blandit nisl. Nam dictum eros et ipsum commodo, id convallis lectus fermentum. Quisque auctor sagittis nisi, at porta nibh varius ac. Phasellus ac leo neque. Donec at efficitur ipsum."

img = 'http://www.clickgratis.com.br/fotos-imagens/imagems/aHR0cDovL2JyLndlYi5pbWcyLmFjc3RhLm5ldC9yX3hfNjAwL25ld3N2Ny8xNS8wNi8xNS8xNS8zOC8zMzQ3NTEwLmpwZw==.jpg'

User.create! name: 'admin', password: '12345678', password_confirmation: '12345678', role: 'admin', email: 'arlymoura@gmail.com'

(1..10).each do |n|
  User.create! name: "User #{n}", password: '12345678', password_confirmation: '12345678', role: 'comun', email: "comun#{n}@gmail.com"
end

(1..10).each do |n|
   p = Post.create! title: "Post #{n}", body: text, user: User.find(n), image: img, category: subject_0
  (1..5).each do |x|
    Comment.create! body: "Comentario #{x}", post: p, user: User.find(n)
  end
end
