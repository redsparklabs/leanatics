# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Source.create(:id => 1, :name => "Startup Lessons Learned", :url => "http://www.startuplessonslearned.com/feeds/posts/default", :author => "Eric Ries", :clarity => "ericries", :bio => "Eric Ries is the creator of the Lean Startup methodology and the author of the popular entrepreneurship blog Startup Lessons Learned. He previously co-founded and served as Chief Technology Officer of IMVU. In 2007, BusinessWeek named Ries one of the Best Young Entrepreneurs of Tech and in 2009 he was honored with a TechFellow award in the category of Engineering Leadership. He serves on the advisory board of a number of technology startups, and has worked as a consultant to a number of startups, companies, and venture capital firms. In 2010, he became an Entrepreneur-in-Residence at Harvard Business School.\r\n\r\nHe is the co-author of several books including The Black Art of Java Game Programming (Waite Group Press, 1996). While an undergraduate at Yale Unviersity, he co-founded Catalyst Recruiting. Although Catalyst folded with the dot-com crash, Ries continued his entrepreneurial career as a Senior Software Engineer at There.com, leading efforts in agile software development and user-generated content. ", :twitter => "ericries", :blog => "http://www.startuplessonslearned.com", :slug => "ericries", :active => true, :categories => "lean,startup")
Source.create(:id => 2, :name => "Ash Maurya", :url => "http://feeds.feedburner.com/AshMaurya", :author => "Ash Maurya", :clarity => "ashmaurya", :bio => "I am the author of Running Lean and the Founder of Spark59.\r\nMy mission is helping entrepreneurs succeed.", :twitter => "ashmaurya", :blog => "http://www.ashmaurya.com/blog/", :slug => "ashmaurya", :active => true, :categories => "lean,startup, mentor")
Source.create(:id => 3, :name => "Dan Martell", :url => "http://www.danmartell.com/feed/rss/", :author => "Dan Martell", :clarity => "danmartell", :bio => "I'm a Canadian entrepreneur living in San Francisco. I'm the CEO/Founder of Clarity. Previously I co-founded Flowtown (Acquired '11), Spheric Technologies (Acquired '08), and I'm a mentor @ 500Startup & GrowLabs. Angel investor in 15 others.", :twitter => "danmartell", :blog => "http://www.danmartell.com/", :slug => "danmartell", :active => true)
Source.create(:id => 4, :name => "Market By Numbers", :url => "http://feeds2.feedburner.com/MarketByNumbers-BrantCooper", :author => "Brant Cooper", :clarity => "brantcooper", :bio => "I help startups get started!\r\n\r\nLean as in Lean Manufacturing is about eliminating waste in the production and delivery of a known value to a known customer. Lean Startup is about eliminating waste in discovering what\r\nvalue you are creating, how you deliver it, and to whom.\r\n\r\nThis is the primary theme of my book, \r\nThe Lean Entrepreneur.   Co-author Patrick Vlaskovits and I break down why lean, why now, how to, and provide extraordinary examples of extraordinary entrepreneurs applying these principles inside and outside tech, in big companies and startups.\r\n\r\nI am a happy Papa, loyal brother, and\r\nappreciative son. I play a little guitar and\r\nsing loudly in the car. I strive to enjoy life\r\nand not take myself too seriously.", :twitter => "brantcooper", :blog => "http://market-by-numbers.com/", :active => true)
Source.create(:id => 5, :name => "Patrick Vlaskovits", :url => "http://feeds.feedburner.com/Vlaskovits", :author => "Patrick Vlaskovits", :clarity => "vlaskovits", :bio => "Entrepreneur + author. Founded two startups.  Both dead-pooled. Wrote a book called The Entrepreneur's Guide to Customer Development. Working on a few startup projects right now, and am also a co-organizer of the Los Angeles Lean Startup Circle.  Contact me or view my LinkedIn profile or Twitter stream.", :twitter => "pv", :blog => "http://vlaskovits.com/blog", :slug => "patrickvlaskovits", :active => true)
Source.create(:id => 6, :name => "500 Hats", :url => "http://500hats.com/feed", :author => "Dave McClure", :clarity => "davemcclure", :bio => "Geeks. Founders. Startups. The Internet Revolution.", :twitter => "davemcclure", :blog => "http://500hats.com", :slug => "davemcclure", :active => true)
Source.create(:id => 7, :name => "Steve Blank", :url => "http://steveblank.com/feed/", :author => "Steve Blank", :bio => "Put to a vote, I might have been chosen \"least likely to succeed\" in my New York City high school class.  My path has taken me from repairing fighter planes in Thailand during the Vietnam War, to spook stuff in undisclosed location(s), and I was lucky enough to arrive at the beginning of the boom times of Silicon Valley in 1978.\r\nAfter 21 years in 8 high technology companies, I retired in 1999. I co-founded my last company, E.piphany, in my living room in 1996. My other startups include two semiconductor companies, Zilog and MIPS Computers, a workstation company Convergent Technologies, a consulting stint for a graphics hardware/software spinout Pixar, a supercomputer firm, Ardent, a computer peripheral supplier, SuperMac, a military intelligence systems supplier, ESL and a video game company, Rocket Science Games.\r\nTotal score: two large craters (Rocket Science and Ardent), one dot.com bubble home run (E.piphany) and several base hits.\r\nAfter I retired, I took some time to reflect on my experience and wrote a book (actually my class text) about building early stage companies called Four Steps to the Epiphany. It's been called the book that launched the Lean Startup movement. My latest book, co-authored with Bob Dorf, The Startup Owners Manual integrates 10 years of new knowledge (and fixes lots of typos.)\r\nI moved from being an entrepreneur to teaching entrepreneurship to both undergraduate and graduate students at U.C. Berkeley, Stanford University, Columbia University, Caltech and the Joint Berkeley/Columbia Executive MBA program. The \"Customer Development\" model that I developed in my book is one of the core themes in these classes.  In 2009, I was awarded the Stanford University Undergraduate Teaching Award in the department of Management Science and Engineering. The same year, the San Jose Mercury News listed me as one of the 10 Influencers in Silicon Valley. In 2010, I was awarded the Earl F. Cheit Outstanding Teaching Award at U.C. Berkeley Haas School of Business.\r\nIn 2011 at the request of the National Science Foundation I modified my Lean Launchpad class and it became the curriculum for the NSF I-Corps. Science wrote an article about the I-Corps and so did Nature, the Economist, and Forbes. National Public Radio did a story on the class here and so did the San Jose Mercury. I testified in front of Congress about the success and future of the program.\r\nIn 2012 the Harvard Business Review listed me as one of the \"Masters of Innovation\" and I was the keynote at the National Governors Conference. My talk was on C-Span here, slides are here.  I write weekly for the Wall Street Journal Accelerators blog and occasionally for Forbes, the Huffington Post and in Japan for NikkeiBP.  In 2013 Forbes listed me as one of the 30 most influential people in Tech.\r\nAll my coursework, syllabuses, and presentations can be found here. In 2012 I put my Lean LaunchPad class on-line and over 75,000 students are taking it. In 2012, in partnership with Stanford University, U.C. Berkeley and NCIIA, Jerry Engel and I offered the Lean LaunchPad Educators Class, now taught quarterly. In 2013 I partnered with Startup Weekend to bring the class to a worldwide audience in as a 5-week course offered in hundreds of locations.\r\nThe NY Times had a few things to say about my work here,  here and here.\r\nI also followed my curiosity about why entrepreneurship blossomed in Silicon Valley and was stillborn elsewhere.  It has led to several talks on The Secret History of Silicon Valley.\r\nIn 2007 the Governor of California appointed me to serve on the California Coastal Commission, the public body which regulates land use and public access on the California coast. (The NY Times described the work of the Commission here.)\r\nI am on the board of the California League of Conservation Voters (CLCV). Recently I served on the Expert Advisory Panel for the California Ocean Protection Council as well as on the boards of Audubon California (and its past chair) and the Audubon National Board as well as the Peninsula Open Space Land Trust (POST) and as a trustee of the U.C. Santa Cruz foundation.\r\n", :twitter => "sgblank", :blog => "http://steveblank.com/", :slug => "steveblank", :active => true)
Source.create(:id => 8, :name => "Lean Analytics Blog", :url => "http://leananalyticsbook.com/feed/", :author => "Lean Analytics", :bio => "The Lean movement has revolutionized how we create products and companies. It focuses on customer development, tackles the risky parts first, and focuses on finding real, unmet needs.\r\n\r\nAt the core of this is iteration-a cycle of learning and adapting that's driven by data. Lean Analytics gives you blunt, practical advice and proven approaches for learning from the abundance of data all around you.\r\n\r\nThis book is about analytics, done right: lean, mean, and iteratively. Filled with behind-the-scenes case studies and day-one tools, it's an essential ingredient for any smart startup.\r\n\r\nIn 2010, Alistair and Ben were two of the co-founders of Year One Labs, an early stage accelerator that provided funding and up to 1-year of hands-on mentorship to 5 startups. Year One Labs followed a Lean Startup program, making it the first accelerator to formalize such a structure. Three of five companies graduated from Year One Labs and went on to raise follow-on financing. A great deal of their experience and thought leadership around Lean Startup and analytics emerged during this time.", :twitter => "leananalytics", :blog => "http://leananalyticsbook.com", :slug => "leananalytics")
Source.create(:id => 9, :name => "OnStartups", :url => "http://feed.onstartups.com/onstartups", :author => "Dharmesh Shah", :bio => "I am a software entrepreneur and currently the co-founder and CTO of HubSpot, a software company building a revolutionary software platform for Internet Marketing .  HubSpot is my third software startup.  To learn more about HubSpot, read the Internet Marketing Blog for Small Business.\r\n\r\nDeep down inside, I'm a technology guy (more specifically, a software development guy).  I've built and shipped about ten commercial software products across my various startups.  I still write code as it keeps me in touch with reality and makes me a better entrepreneur.  Plus, I enjoy it.\r\n\r\nPrior to founding HubSpot, I founded Pyramid Digital Solutions, an enterprise software company in the financial services sector. Bootstrapped with less than $10,000 in capital, Pyramid went on to demonstrate exceptional growth and was a three-time recipient of the Inc. 500 award. If you don't already know what the Inc. 500 is, reading up on it will not likely impress you, so don't worry about it.  After acting as CEO and chief software architect for the company from 1994-2005, I helped the company get acquired in August 2005 by SunGard Business Systems, a large $11 billion technology company.\r\n\r\nSince the sale of Pyramid, I have been an active member of the entrepreneurial community in the Boston area and have made several angel investments in early-stage technology companies. I am also a current member of CommonAngels, a well known angel investment group in the greater Boston area.", :twitter => "dharmesh", :blog => "http://www.onstartups.com", :slug => "dharmeshshah", :active => true)
Source.create(:id => 10, :name => "A Smart Bear", :url => "http://feeds2.feedburner.com/blogspot/smartbear", :author => "Jason Cohen", :clarity => "asmartbear", :bio => "I'm the founder of four companies including Smart Bear and currently WPEngine.\r\n\r\nI took Smart Bear from start to multiple millions in profit, without debt or VC, then sold it for cash.\r\n\r\nI'm also a mentor at Capital Factory (like TechStars or Y-Combinator in Austin) and investor in a few companies.\r\n\r\nI'm the author of Best Kept Secrets of Peer Code Review, the most popular book (50,000 copies) on modern, lightweight methods for doing peer code review effectively without everyone hating life. I'm also the co-host of OnStartups Answers along with Dharmesh Shah.\r\n\r\nI live in Austin, Texas with my wonderful wife, a chef and entrepreneur who blogs about cooking healthy at home, and my precious baby daughter Abigail.", :twitter => "asmartbear", :blog => "http://asmartbear.com", :slug => "jasoncohen", :active => true)
Source.create(:id => 11, :name => "10,000 Startup Hours", :url => "http://davidcummings.org/feed/", :author => "David Cummings", :bio => "David has been an entrepreneur for over a decade. In late 2000, David founded Hannon Hill, which was recognized as the 247th fastest growing company in the U.S. by Inc. magazine as part of the Inc. 500 awards. In late 2006, David co-founded Pardot, which was recognized by the Atlanta Business Chronicle as the fastest growing technology company in 2010 and the third fastest-growing company in all of Atlanta that same year. Pardot was named to the 2012 Inc. 500 fastest growing companies coming in at number 172. ExactTarget acquired Pardot in 2012. David also co-founded Clickscape real estate technology (clickscape.com), Rigor web performance management (rigor.com), and SalesLoft sales intelligence (salesloft.com).\r\n\r\nDavid is a member of YPO, the Atlanta chapter of the Entrepreneur's Organization, and on the board of Venture Atlanta. A native of Tallahassee, Florida, David earned a bachelor of science degree in economics from Duke University and studied at the London School of Economics. David blogs at DavidCummings.org, tweets at  (@davidcummings), and is co-author of the book Think Outside the Inbox as well as a second book, Startup Upstart, published in 2012.", :twitter => "davidcummings", :blog => "http://davidcummings.org", :slug => "davidcummings")
Source.create(:id => 12, :name => "Danielle Morrill", :url => "http://www.daniellemorrill.com/feed/", :author => "Danielle Morrill", :clarity => "danielle", :bio => "I'm the CEO & Cofounder of Referly, where we're building social rewards for referring products you love and generating purchases.  Our company is participating in YCombinator Summer 2012.", :twitter => "DanielleMorrill", :blog => "http://www.daniellemorrill.com", :slug => "daniellemorrill", :active => true)
Source.create(:id => 13, :name => "Leo Startup Up", :url => "http://feeds.feedburner.com/LeoStartsUp", :author => "Leo Widrich", :clarity => "leowidrich", :bio => "Hi, I'm Leo, Co-Founder of Buffer, a new way to Tweet and share Facebook posts smarter and with more impact. On this blog, I share my insights about life, startups and marketing. Subscribe to my Facebook updates or email me. I would love to connect.", :twitter => "leowid", :blog => "http://leostartsup.com/", :slug => "leowidrich", :active => true)
Source.create(:id => 14, :name => "Joel Gascoigne", :url => "http://feeds.feedburner.com/joelis", :author => "Joel Gascoigne", :bio => "Startups, life, learning, happiness", :twitter => "joelgascoigne", :blog => "http://joel.is", :slug => "joelgascoigne", :active => true)
Source.create(:id => 15, :name => "Grasshopper Herder", :url => "http://grasshopperherder.com/feed/", :author => "Tristan Kromer", :clarity => "trikro", :bio => "Tristan Kromer pokes, prods, and questions startups. He's spent 10 years in the music industry, worked 5 years in IT security, lived in 5 different countries, studied philosophy and business (separately), and generally made a nuisance of himself for the past 3 years in Silicon Valley as a lean startup advocate.", :twitter => "trikro", :blog => "http://grasshopperherder.com", :slug => "tristankromer", :active => true, :categories => "lean, ux, startup")
Source.create(:id => 16, :name => "Lean UX with Jeff Gothelf", :url => "http://www.jeffgothelf.com/blog/feed/", :author => "Jeff Gothelf", :bio => "Hey! Thanks for stopping by. My name is Jeff Gothelf and I work as a product strategist, Lean UX advocate, Agile practitioner, interaction designer, user experience team leader, blogger, public speaker , author and design/product thinker. I've worked with companies and agencies big and small but my passion lies in the startup world helping seeds of ideas get off the ground and into the mainstream. I do a lot of thinking about Agile and Lean UX and design issues.\r\n\r\nI also happen to be a dad, husband, musician and all-around funny guy (at least I think so).\r\n\r\nI launched a lean product design and innovation studio called Proof in NYC where we work with companies (big and small) building and designing innovative product ideas while helping those organizations adopt leaner development processes.\r\n\r\nI'm easily found on all the obligatory social networking sites but your best bets to get in touch are Twitter (@jboogie), LinkedIn and email.", :twitter => "jboogie", :blog => "http://www.jeffgothelf.com/blog/", :slug => "jeffgothelf", :active => true)
Source.create(:id => 17, :name => "LUXr", :url => "http://blog.luxr.co/feed/", :author => "LUXr", :clarity => "janicefraser", :bio => "LUXr was founded in 2010 to make these principles accessible to entrepreneurs worldwide through practical and affordable learning tools.\r\n\r\nIn the early 2000's, agile transformed software development through a system of inter-related principles and organizational behaviors. We believe that the same is possible for the whole product team. LUXr products are strongly influenced by the work of Lean Startup, Agile and User Experience design.", :twitter => "luxrco", :blog => "http://blog.luxr.co", :slug => "luxr", :active => true, :categories => "lean,startup,ux")
Source.create(:id => 18, :name => "SKMurphy", :url => "http://www.skmurphy.com/feed/", :author => "Sean Murphy", :bio => "Sean Murphy has worked in a variety of roles in the last twenty-five years: software engineer, engineering manager, project manager, business development, product marketing, and customer support. Companies he has worked directly for include Cisco Systems, 3Com, AMD, MMC Networks, and VLSI Technology. He has a BS in Mathematical Sciences and an MS in Engineering-Economic Systems from Stanford.", :twitter => "skmurphy", :blog => "http://www.skmurphy.com/blog/", :slug => "seanmurphy")
Source.create(:id => 19, :name => "Invalidated Assumptions", :url => "http://trevorowens.tumblr.com/rss", :author => "Trevor Owens", :clarity => "trevor", :bio => "Hi, I'm Trevor. I founded Lean Startup Machine, an intensive workshop that teaches people how to build disruptive products.", :twitter => "to2", :blog => "http://trevorowens.tumblr.com", :slug => "trevorowens", :active => true, :categories => "lean,startup,mentor")
Source.create(:id => 20, :name => "Josh Seiden", :url => "http://www.joshuaseiden.com//blog/feed", :author => "Josh Seiden", :bio => "Josh Seiden is a designer who has spent most of his career working on the design of complex software applications and integrating design into the product development process. Over the course of 20 years working in technology Josh has developed specialities that include Lean UX, interaction design, service design, and user experience design in agile software development environments.\r\n\r\nJosh is currently a Managing Director in the NYC office of Neo, the global product innovation firm. At Neo, he continues the work he began as a founding partner at Proof, the product innovation studio that was acquired by Neo in late 2012.\r\n\r\nJosh worked closely with Jeff Gothelf to produce the forthcoming book, \"Lean UX.\" You should buy it.\r\n\r\nEarlier, Josh was the NYC Program Director for LUXr. Prior to that, Josh was responsible for the Experience Group at Liquidnet, an electronic brokerage firm serving the institutional investment community. The Experience Group was a unique combination of Customer Experience, Marketing and Design teams who worked closely together to design and market Liquidnet's product and service offerings.\r\n\r\nPreviously, he was the founder and President of 36 Partners, a NYC interaction design and user experience consulting firm. In the 90's, Josh served on the leadership team at Cooper Interaction Design-one of the premier user experience consulting firms, and the leader of the interaction design movement. At Cooper, Josh worked on projects for clients such as IBM and 3M, and managed Cooper's SAP account. During that time, he designed a wide range of hardware and software products, producing designs for health care systems, supply chain management tools, marketing automation and CRM systems, and meeting room tools.\r\n\r\nHe has led training seminars in Cooper's goal-directed design methodology, organized the speaker series for IxDA NYC, and presented case studies and papers at a range of conferences.\r\n\r\nJosh was a founding board member and past President of the Interaction Design Association (IxDA), a professional organization that promotes the field of interaction design. He lives in Brooklyn with his wife and two children.", :twitter => "jseiden", :blog => "http://joshuaseiden.com/blog/", :slug => "joshseiden", :active => true, :categories => "lean, ux, startup")
Source.create(:id => 21, :name => "David G Cohen", :url => "http://feeds.feedburner.com/DavidGCohen", :author => "David G Cohen", :bio => "David Cohen is the founder and CEO of TechStars, a mentorship-driven seed stage investment program for Internet startups.\r\n\r\nPreviously, David was a founder of several software and web technology companies. He was the founder and CTO of Pinpoint Technologies which was acquired by ZOLL Medical Corporation (NASDAQ: ZOLL) in 1999. You can read about it in No Vision, All Drive [Amazon]. David was also the founder and CEO of earFeeder.com, a music service which was sold to SonicSwap.com in 2006. He also had what he likes to think of as a \"graceful failure\" in between.\r\n\r\nDavid is a active startup advocate, advisor, board member, and technology advisor who comments on these topics on his blog at DavidGCohen.com. He is also very active at the University of Colorado, serving as a member of the Board of Advisors of the Computer Science Department, the Entrepreneurial Advisory Board at Silicon Flatirons, and the Board of Advisors of the Deming Center Venture Fund. David is also a member of the selection committee for Venture Capital in the Rockies, and runs the Colorado chapter of the Open Angel Forum.\r\n\r\nDavid's hobbies are technology, software/web startups, business history, and tennis. He is married to the coolest girl he's ever met and has three amazing kids who always seem to be teaching him something new.\r\n\r\nYou can find David on Twitter @davidcohen.", :twitter => "davidcohen", :blog => "http://www.davidgcohen.com/", :slug => "davidgcohen", :active => true, :categories => "venture,startup,accelerator")
Source.create(:id => 22, :name => "Keen IO", :url => "http://keenio.tumblr.com/rss", :author => "Keen IO", :bio => "We help app developers build custom analytics & data science features directly into their mobile apps and web dashboards. We provide the infrastructure and APIs to collect data and build analytics into your business.", :twitter => "keen_io", :blog => "https://keen.io/blog", :slug => "keenio", :active => true, :categories => "lean, startup")
Source.create(:id => 23, :name => "David J Bland", :url => "http://www.davidjbland.com/feed/", :author => "David J Bland", :bio => "Startup Advisor, Enterprise Disruptor.", :twitter => "davidjbland", :blog => "http://www.davidjbland.com/", :slug => "davidjbland", :active => false, :categories => "lean,startup,enterprise")
