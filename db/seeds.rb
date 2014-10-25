calen_legaspi_description = %Q{Calen co-founded O&B to provide a venue where the Filipino engineer’s true skills are showcased. He is currently on his 7th term as a board member of the Philippine Software Industry Association. 

He has initiated programs that support the Philippine academe: by providing training to teachers through the Philippine Society of Information Technology Educators, authoring technology modules for TESDA, developing responsive IT education curricula for the Commission on Higher Education, and contributing to programs aimed at enhancing the skills of IT educators.

Calen is a Sun Certified Enterprise Architect, Certified Web Component Developer, and a Certified Java Programmer. He co-founded the Association of Philippine Java Developers and served as the organization's president for six years.}
calen_legaspi = Speaker.create(first_name: 'Calen', last_name: 'Legaspi', position: 'Chief Executive Officer', company: 'Orange and Bronze Software Labs, Inc.', twitter_handle: 'calenlegaspi', website: 'http://orangeandbronze.com', photo_url: 'https://drive.google.com/file/d/0B7L9-KKs9fouQVpVaFR1eGloOVU/view?usp=sharing', description: calen_legaspi_description)

jv_cuevas = Speaker.create(first_name: 'JV', last_name: 'Cuevas', position: 'Manager', company: 'Deltek Systems (Philippines) Ltd.', twitter_handle: 'jancuevasdeltek')

sim_domingo_description = %Q{Sim currently works at GitHub, as an engineer in the Enterprise support team. A former physicist, he sometimes dabbles in iOS development and has previously worked on system software for SMS services. He enjoys bad movies, baking, and cats.}
sim_domingo = Speaker.create(first_name: 'Sim', last_name: 'Domingo', position: 'Engineer, Enterprise Support Team', company: 'GitHub, Inc.', twitter_handle: 'meatcoder', website: 'http://github.com/meatcoder', photo_url: 'https://drive.google.com/file/d/0B7L9-KKs9fouVlZveFRac01lWm8/view?usp=sharing', description: sim_domingo_description)

jason_torres = Speaker.create(first_name: 'Jason', last_name: 'Torres', position: 'Chief Technology Officer', company: 'Proudcloud', twitter_handle: 'jasontorres', website: 'http://proudcloud.net', photo_url: 'https://drive.google.com/file/d/0B7L9-KKs9fouSUhTbjRFYVNWZzA/view?usp=sharing')

allen_tan_description = %Q{Allen Tan is the Managing Director of White Widget, a startup software development company based in the Philippines. He graduated with a Computer Science degree in 2008, and has been working on software projects ever since. Allen specialises in iOS development and has helped create various interactive apps and games. He writes tutorials and e-books on his spare time and is also a regular contributor at the popular iOS tutorial website, RayWenderlich.com.

He co-founded White Widget together with Andrea Levinge, and officially started operations last January 2013. Since then, the company has been growing steadily as they work on their soon-to-be-released first game title, Face Mountain.}
allen_tan = Speaker.create(first_name: 'Allen', last_name: 'Tan', position: 'Managing Director', company: 'White Widget', twitter_handle: 'abgtan', website: 'http://whitewidget.com', photo_url: 'https://drive.google.com/file/d/0B7L9-KKs9fouak5rTTR6Y2d5dnc/view?usp=sharing', description: allen_tan_description)

matias_cascallares_description = %Q{Matias is Solutions Architect at MongoDB Inc. He has more than 10 years of experience in software development across America, Europe and Asia-Pacific. He has heavy experience in .com companies like e-commerce sites and social networks with millions of users. Based in Singapore, he helps customers from different industries to be successful using MongoDB database dealing with big and heterogenous data where flexibility and time to market are key factors for success. He is also a reference in MongoDB open source community in Asia.}
matias_cascallares = Speaker.create(first_name: 'Matias', last_name: 'Cascallares', position: 'Solutions Architect', company: 'MongoDB', twitter_handle: 'mcascallares', website: 'http://github.com/mcascallares', photo_url: 'https://drive.google.com/file/d/0B7L9-KKs9fouN0p2aldTNFQtU2M/view?usp=sharing', description: matias_cascallares_description)

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

Sponsor.create(name: 'Deltek', photo_url: 'https://lh3.googleusercontent.com/OuU0fLF3f8L4RXm9bOusQKn2cls-53B4iQOAyrKpsz4LfI0p6JeRsR0yNIqoign-YqcLUQ=w1026-h637', category: co_presenter)
Sponsor.create(name: 'Accenture', category: co_presenter)
Sponsor.create(name: 'SMART', photo_url: 'https://lh5.googleusercontent.com/DwMAE6rQ7VD04ds2gMeyaOOnNGR6DnyJA__xc7_LKRVYlUv5kBbxj2UsFFWVr_QBJQQT8A=w1026-h637', category: co_presenter)
Sponsor.create(name: 'Canva', photo_url: 'https://lh5.googleusercontent.com/uDSS4szxunBnFeAdJM2zIauIah_ueHM1QD8YgKsascQfWo9K59BPFow5gwiwkGIM77BxvA=w1026-h637', category: gold)
Sponsor.create(name: 'Microsoft', photo_url: 'https://lh4.googleusercontent.com/HpGCkinN8j7xQLKRiNLQxoi8257vr7BKa_vzbznfWlibrNU_X6XZggwU2zQaEBldy_hASg=w1026-h637', category: gold)
Sponsor.create(name: 'Microsourcing', photo_url: 'https://lh3.googleusercontent.com/UvKo7VhEYeV4AMqUzTFvvZa9MeNEzqM5Lzoldok4BybJzIF-pyZ9vhFwIO-Gy1a8QZzBeg=w1026-h637', category: gold)
Sponsor.create(name: 'Chikka', photo_url: 'https://lh4.googleusercontent.com/Lz6RG6cVO7oVMAzMU3he9nCZD0ErBiZ57ufwm4zqbMln7_uSvsvOSd49F30fHnh9pmczNA=w1026-h637', category: silver)
Sponsor.create(name: 'Novare Technologies', photo_url: 'https://lh3.googleusercontent.com/aIaAlGEbvgUKrk3G4TnH0gpDJMg-eqmwP7SyyGFUjHWM3mJf6_Q4dmCMUPX0Hv4rsT8pTw=w1026-h637', category: silver)
Sponsor.create(name: 'Mozilla Philippines', photo_url: 'https://lh5.googleusercontent.com/4Qqg4knlbgKN1pQCqjkv_Z7J9DILbHvrNKzxxi-guoj87uRtPabW3bC_5LDeVeBEiaZT9g=w1026-h637', category: silver)
Sponsor.create(name: 'Colab.ph', photo_url: 'https://lh6.googleusercontent.com/LtozlHJrYIYBU1HZB9w2KBqXyT2alpnNsKyu2nwxuaLgloOvU8yyOJOB8meYxE0sxA7M3w=w1026-h637', category: silver)
Sponsor.create(name: 'GitHub', photo_url: 'https://lh4.googleusercontent.com/88usNlCpQLAf2E3RlLw0XpOzk8VspR7apyiCDIHqdN082inDSTtuy3FjkLnFeLIdFDUz4A=w1026-h637', category: contributing_partner)
Sponsor.create(name: 'StackOverflow', photo_url: 'https://lh4.googleusercontent.com/0UU-yp2xcGnK5OtaJ8UW3ZvosB4SqC4R0RKKPc-0aNbeWnKNEem7durcJrbN9abIOi5Mcw=w1026-h637', category: contributing_partner)
Sponsor.create(name: 'Uber', photo_url: 'https://lh6.googleusercontent.com/g1z6EAnQI0AMSW_wHRCGFp4bEJf8akWLwG1eAeosrGj9TVHPQWROTIcn5g_FsteWU8mo0w=w1026-h637', category: contributing_partner)
Sponsor.create(name: 'Globe Labs', photo_url: 'https://lh4.googleusercontent.com/yZNBu1gjdGqv72YGKF6VsVHohg6OQuTACxK5xGZmgQOLxImJG6cbddXhlZ9Y_-vZaSP31w=w1026-h637', category: contributing_partner)

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
