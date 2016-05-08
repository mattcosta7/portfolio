class HomeController < ApplicationController
  def show
    @projects = Project.visible.last(5)
    @albums = [
      {
        href: "https://www.flickr.com/photos/matthewcostabile/albums/72157667442125290",
        title: "Faces",
        src: "https://farm8.staticflickr.com/7304/26809186401_672e5e875b_c.jpg",
        data_sizes: "{'240':'6d00fae88c_m','320':'6d00fae88c_n','500':'6d00fae88c','640':'6d00fae88c_z','800':'6d00fae88c_c','1024':'6d00fae88c_b','1600':'6d00fae88c_h','2000':'6d00fae88c_o'}"
      },
      {
        href: 'https://www.flickr.com/photos/matthewcostabile/albums/72157667442125510',
        title: "Argentina",
        src: "https://farm8.staticflickr.com/7449/26272477563_7827d701bf_c.jpg",
        data_sizes: "{'240':'6d00fae88c_m','320':'6d00fae88c_n','500':'6d00fae88c','640':'6d00fae88c_z','800':'6d00fae88c_c','1024':'6d00fae88c_b','1600':'6d00fae88c_h','2000':'6d00fae88c_o'}"
      },
      {
        href: 'https://www.flickr.com/photos/matthewcostabile/albums/72157667442125500',
        title: "Brazil",
        src: 'https://farm8.staticflickr.com/7645/26783395952_a1259102a6_c.jpg',
        data_sizes: "{'240':'6d00fae88c_m','320':'6d00fae88c_n','500':'6d00fae88c','640':'6d00fae88c_z','800':'6d00fae88c_c','1024':'6d00fae88c_b','1600':'6d00fae88c_h','2000':'6d00fae88c_o'}"
      },
      {
        href: 'https://www.flickr.com/photos/matthewcostabile/albums/72157667442125470',
        title: "Cambodia",
        src: 'https://farm8.staticflickr.com/7390/26876758255_56e02a719f_c.jpg',
        data_sizes: "{'240':'6d00fae88c_m','320':'6d00fae88c_n','500':'6d00fae88c','640':'6d00fae88c_z','800':'6d00fae88c_c','1024':'6d00fae88c_b','1600':'6d00fae88c_h','2000':'6d00fae88c_o'}"
      },
      {
        href: 'https://www.flickr.com/photos/matthewcostabile/albums/72157667442125440',
        title: "Czech Republic",
        src: 'https://farm8.staticflickr.com/7104/26271325974_96e5dd351b_c.jpg',
        data_sizes: "{'240':'6d00fae88c_m','320':'6d00fae88c_n','500':'6d00fae88c','640':'6d00fae88c_z','800':'6d00fae88c_c','1024':'6d00fae88c_b','1600':'6d00fae88c_h','2000':'6d00fae88c_o'}"
      },
      {
        href: 'https://www.flickr.com/photos/matthewcostabile/albums/72157667442125430',
        title: "France",
        src: "https://farm8.staticflickr.com/7156/26876752665_f637b73f27_c.jpg",
        data_sizes: "{'240':'6d00fae88c_m','320':'6d00fae88c_n','500':'6d00fae88c','640':'6d00fae88c_z','800':'6d00fae88c_c','1024':'6d00fae88c_b','1600':'6d00fae88c_h','2000':'6d00fae88c_o'}"
      },
      {
        href: "https://www.flickr.com/photos/matthewcostabile/albums/72157668097815245",
        title: "Italy",
        src: "https://farm8.staticflickr.com/7643/26603753090_74826fed65_c.jpg",
        data_sizes: "{'240':'6d00fae88c_m','320':'6d00fae88c_n','500':'6d00fae88c','640':'6d00fae88c_z','800':'6d00fae88c_c','1024':'6d00fae88c_b','1600':'6d00fae88c_h','2000':'6d00fae88c_o'}"
      },
      {
        href: 'https://www.flickr.com/photos/matthewcostabile/albums/72157667442125370',
        title: "Malaysia",
        src: 'https://farm8.staticflickr.com/7611/26272499983_b7f7f31f67_c.jpg',
        data_sizes: "{'240':'6d00fae88c_m','320':'6d00fae88c_n','500':'6d00fae88c','640':'6d00fae88c_z','800':'6d00fae88c_c','1024':'6d00fae88c_b','1600':'6d00fae88c_h','2000':'6d00fae88c_o'}"
      },
      {
        href: "https://www.flickr.com/photos/matthewcostabile/albums/72157667442125350",
        title: "New York",
        src: "https://farm8.staticflickr.com/7046/26271343694_e626667fd9_c.jpg",
        data_sizes: "{'240':'6d00fae88c_m','320':'6d00fae88c_n','500':'6d00fae88c','640':'6d00fae88c_z','800':'6d00fae88c_c','1024':'6d00fae88c_b','1600':'6d00fae88c_h','2000':'6d00fae88c_o'}"
      },
      {
        href: "https://www.flickr.com/photos/matthewcostabile/albums/72157667442125340",
        title: "Spain",
        src: "https://farm8.staticflickr.com/7170/26783439762_b3b805b894_c.jpg",
        data_sizes: "{'240':'6d00fae88c_m','320':'6d00fae88c_n','500':'6d00fae88c','640':'6d00fae88c_z','800':'6d00fae88c_c','1024':'6d00fae88c_b','1600':'6d00fae88c_h','2000':'6d00fae88c_o'}"
      },
      {
        href: "https://www.flickr.com/photos/matthewcostabile/albums/72157667442125330",
        title: "Switzerland",
        src: "https://farm8.staticflickr.com/7558/26783434102_39d58f781a_c.jpg",
        data_sizes: "{'240':'6d00fae88c_m','320':'6d00fae88c_n','500':'6d00fae88c','640':'6d00fae88c_z','800':'6d00fae88c_c','1024':'6d00fae88c_b','1600':'6d00fae88c_h','2000':'6d00fae88c_o'}"
      },
      {
        href: "https://www.flickr.com/photos/matthewcostabile/albums/72157667442125320",
        title: "Vietnam",
        src: "https://farm8.staticflickr.com/7286/26272540973_6d00fae88c_c.jpg"
      },
      ]
    @blogs = Blog.visible.last(5)
  end
end
