calen_legaspi_description = %Q{Calen co-founded O&B to provide a venue where the Filipino engineer’s true skills are showcased. He is currently on his 7th term as a board member of the Philippine Software Industry Association. 

He has initiated programs that support the Philippine academe: by providing training to teachers through the Philippine Society of Information Technology Educators, authoring technology modules for TESDA, developing responsive IT education curricula for the Commission on Higher Education, and contributing to programs aimed at enhancing the skills of IT educators.

Calen is a Sun Certified Enterprise Architect, Certified Web Component Developer, and a Certified Java Programmer. He co-founded the Association of Philippine Java Developers and served as the organization's president for six years.}
calen_legaspi = Speaker.create(first_name: 'Calen', last_name: 'Legaspi', position: 'Chief Executive Officer', company: 'Orange and Bronze Software Labs, Inc.', twitter_handle: 'calenlegaspi', website: 'http://orangeandbronze.com', photo_url: 'http://api.devcon.ph/summit_photos/speakers/calen-legaspi.jpg', description: calen_legaspi_description)

jv_cuevas = Speaker.create(first_name: 'JV', last_name: 'Cuevas', position: 'Manager', company: 'Deltek Systems (Philippines) Ltd.', twitter_handle: 'jancuevasdeltek')

sim_domingo_description = %Q{Sim currently works at GitHub, as an engineer in the Enterprise support team. A former physicist, he sometimes dabbles in iOS development and has previously worked on system software for SMS services. He enjoys bad movies, baking, and cats.}
sim_domingo = Speaker.create(first_name: 'Sim', last_name: 'Domingo', position: 'Engineer, Enterprise Support Team', company: 'GitHub, Inc.', twitter_handle: 'meatcoder', website: 'http://github.com/meatcoder', photo_url: 'http://api.devcon.ph/summit_photos/speakers/sim-domingo.jpg', description: sim_domingo_description)

jason_torres = Speaker.create(first_name: 'Jason', last_name: 'Torres', position: 'Chief Technology Officer', company: 'Proudcloud', twitter_handle: 'jasontorres', website: 'http://proudcloud.net', photo_url: 'http://api.devcon.ph/summit_photos/speakers/jason-torres.jpg')

allen_tan_description = %Q{Allen Tan is the Managing Director of White Widget, a startup software development company based in the Philippines. He graduated with a Computer Science degree in 2008, and has been working on software projects ever since. Allen specialises in iOS development and has helped create various interactive apps and games. He writes tutorials and e-books on his spare time and is also a regular contributor at the popular iOS tutorial website, RayWenderlich.com.

He co-founded White Widget together with Andrea Levinge, and officially started operations last January 2013. Since then, the company has been growing steadily as they work on their soon-to-be-released first game title, Face Mountain.}
allen_tan = Speaker.create(first_name: 'Allen', last_name: 'Tan', position: 'Managing Director', company: 'White Widget', twitter_handle: 'abgtan', website: 'http://whitewidget.com', photo_url: 'http://api.devcon.ph/summit_photos/speakers/allen-tan.jpg', description: allen_tan_description)

matias_cascallares_description = %Q{Matias is Solutions Architect at MongoDB Inc. He has more than 10 years of experience in software development across America, Europe and Asia-Pacific. He has heavy experience in .com companies like e-commerce sites and social networks with millions of users. Based in Singapore, he helps customers from different industries to be successful using MongoDB database dealing with big and heterogenous data where flexibility and time to market are key factors for success. He is also a reference in MongoDB open source community in Asia.}
matias_cascallares = Speaker.create(first_name: 'Matias', last_name: 'Cascallares', position: 'Solutions Architect', company: 'MongoDB', twitter_handle: 'mcascallares', website: 'http://github.com/mcascallares', photo_url: 'http://api.devcon.ph/summit_photos/speakers/matias-cascallares.jpg', description: matias_cascallares_description)

SPONSOR_CATEGORIES = ['Co-Presenter', 'Gold Sponsor', 'Silver Sponsor', 'Community Partner', 'Media Partner', 'Contributing Partner']
SPONSOR_CATEGORIES.each do |category_name|
  SponsorCategory.create(name: category_name)
end

co_presenter = SponsorCategory.where(name: 'Co-Presenter').first
gold = SponsorCategory.where(name: 'Gold Sponsor').first
silver = SponsorCategory.where(name: 'Silver Sponsor').first
community_partner = SponsorCategory.where(name: 'Community Partner').first
media_partner = SponsorCategory.where(name: 'Media Partner').first
contributing_partner = SponsorCategory.where(name: 'Contributing Partner').first

Sponsor.create(name: 'Deltek', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/Copresenter-Deltek.png', category: co_presenter)
Sponsor.create(name: 'Accenture', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/Copresenter-Accenture.jpg',category: co_presenter)
Sponsor.create(name: 'SMART', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/Copresenter-Smart.png', category: co_presenter)
Sponsor.create(name: 'Canva', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/Gold-Canva.png', category: gold)
Sponsor.create(name: 'Microsoft', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/Gold-Microsoft.png', category: gold)
Sponsor.create(name: 'Microsourcing', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/Gold-Microsourcing.jpg', category: gold)
Sponsor.create(name: 'Chikka', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/Silver-Chikka.jpg', category: silver)
Sponsor.create(name: 'Novare Technologies', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/Silver-Novare.jpg', category: silver)
Sponsor.create(name: 'Mozilla Philippines', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/Silver-Mozilla.png', category: silver)
Sponsor.create(name: 'Colab.ph', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/Silver-Colab.png', category: silver)
Sponsor.create(name: 'GitHub', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/CP-GitHub.png', category: contributing_partner)
Sponsor.create(name: 'StackOverflow', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/CP-StackOverflow.png', category: contributing_partner)
Sponsor.create(name: 'Uber', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/CP-Uber.png', category: contributing_partner)
Sponsor.create(name: 'Globe Labs', photo_url: 'http://api.devcon.ph/summit_photos/sponsors/CP-GlobeLabs.png', category: contributing_partner)

resource_talk = Category.create(name: 'Resource Talk')
panel_discussion = Category.create(name: 'Panel Discussion')

Program.create(title: 'iOS', start_at: DateTime.new(2014, 11, 29, 5, 0, 0), category: resource_talk, speakers: [allen_tan])
Program.create(title: 'The "What" and "Why" of NoSQL', start_at: DateTime.new(2014, 11, 29, 6, 15, 0), category: resource_talk, speakers: [matias_cascallares])
Program.create(title: 'Automated Testing', start_at: DateTime.new(2014, 11, 29, 8, 20, 0), category: resource_talk, speakers: [jv_cuevas])
Program.create(title: 'Git & GitHub Tips for Beginners', start_at: DateTime.new(2014, 11, 29, 8, 20, 0), category: resource_talk, speakers: [sim_domingo])

TECHNOLOGIES = [
  ['Objective-C', 'objective-c'], ['Java', 'java'], ['Javascript', 'javascript'], ['Python', 'python'],
  ['Ruby', 'ruby'], ['PHP', 'php'], ['C#', 'c#'], ['Android', 'android'], ['jQuery', 'jquery'], ['HTML', 'html'],
  ['C++', 'c++'], ['iOS', 'ios'], ['MySQL', 'mysql'], ['CSS', 'css'], ['SQL', 'sql'], ['ASP.NET', 'asp.net'],
  ['.NET', '.net'], ['Ruby on Rails', 'ruby-on-rails'], ['C', 'c'], ['XML', 'xml'], ['Django', 'django'],
  ['VB.NET', 'vb.net'], ['R', 'r'], ['HTML5', 'html5'], ['Wordpress', 'wordpress'], ['Angular JS', 'angular-js'],
  ['Node.js', 'node.js'], ['Spring', 'spring'], ['Oracle', 'oracle'], ['Git', 'git'], ['Apache', 'apache'],
  ['LINQ', 'linq'], ['Entity Framework', 'entity-framework'], ['Perl', 'perl'], ['Hibernate', 'hibernate'],
  ['WCF', 'wcf'], ['Matlab', 'matlab'], ['Qt', 'qt'], ['MongoDB', 'mongodb'], ['Actionscript', 'actionscript'],
  ['SQLite', 'sqlite'], ['PostgreSQL', 'postgresql'], ['CodeIgniter', 'codeigniter'], ['Twitter Bootstrap', 'twitter-bootstrap'],
  ['Cocoa', 'cocoa'], ['Flash', 'flash'], ['JSP', 'jsp'], ['T-SQL', 't-sql'], ['XAML', 'xaml'], ['Silver Light', 'silver-light'],
  ['Magento', 'magento'], ['Symfony', 'symfony'], ['Flex', 'flex'], ['CakePHP', 'cakephp'], ['SVN', 'svn'], ['Mercurial', 'mercurial'],
  ['Cordova', 'cordova'], ['Groovy', 'groovy'], ['Grails', 'grails'], ['Zend Framework', 'zend-framework'],
  ['Backbone.js', 'backbone.js'], ['Go', 'go'], ['Elixir', 'elixir']
]

TECHNOLOGIES.each do |name, slug|
  Technology.create(name: name, slug: slug)
end

['Promos', 'Program', 'Speakers', 'Miscellaneous'].each do |name|
  NewsCategory.create(name: name)
end
