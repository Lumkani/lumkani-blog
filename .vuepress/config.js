module.exports = {
  title: 'Lumkani News',
  head: [
    ['link', { rel: 'stylesheet', href: 'https://fonts.googleapis.com/css?family=Poppins&display=swap' }],
    ['link', { rel: 'stylesheet', href: 'https://cdnjs.cloudflare.com/ajax/libs/flexboxgrid/6.3.1/flexboxgrid.min.css' }],
  ],
  themeConfig: {
    logo: 'https://avatars3.githubusercontent.com/u/18303687?s=400&u=cdffc0d3253e9247ed24d5a3e70a712cef71d133&v=4',
    nav: [
      {
        text: 'Articles 📚',
        link: '/stories/'
      },
      {
        text: 'Tutorials 📼',
        link: '/tutorials/'
      },
      {
        text: 'Updates ✨',
        link: '/updates/'
      },
      {
        text: 'Lumkani',
        link: 'https://lumkani.com'
      },
    ],
    // sidebar: [
    //   '/stories/',
    //   '/tutorials/',
    //   '/updates/',
    // ],
    sidebarDepth: 2,
    activeHeaderLinks: true,
  },
};
