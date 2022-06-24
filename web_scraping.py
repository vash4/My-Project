import requests
from bs4 import BeautifulSoup
url = " https://www.imdb.com/title/tt9637132/mediaviewer/rm4289205761/?ref_=tt_ov_i"
#get HTML
r =requests.get(url)
htmlcontent =r.content
#print(htmlcontent)
#parse HTML
soup = BeautifulSoup(htmlcontent,'html.parser')
#print (soup.prettify)
#html tree traversal
#get title of html page
title =soup.title
print(title)
#print(type(title)) #tag
#print(type(title.string))  # navigate string
print(type(soup)) #beautifulsoup
# comment
Markup ="<p><!--this is comment--></p>"
soup2 =BeautifulSoup(Markup)
print(type(soup2.p.string))
#get all paragraph from the page
parse =soup.find_all('p')
print(parse)
#get all anchor tag from the page
anchores =soup.find_all('a')
#print(anchores)
#get first element in html page....
#print(soup.find('p'))....
#get classes of element in html...
#print(soup.find('p')['class'])...
print (soup.find_all('p,class_="lead'))
#get text from the tags/soup
#print(soup.find('p').get_text())
print(soup.get_text())
#get all achor tags from page
anchors = soup.find_all('a')
print(anchors)
all_links = set() 
# get all link on page
for link in anchors:
     if(link != '#'):
         linkText ="https://www.imdb.com/title/tt9637132/mediaviewer/rm4289205761/?ref_=tt_ov_i +linl.get('href)"
         all_links.add(link)
         #print(linkText)
         navbarSupportContent =soup.find(id ='navbarSupportContent')
         #print(navbarSupportContent)
         #for elem in navbarSupportContent .contents:
           # print(elem)
         #for item in navbarSupportContent .strings:
                # print(item)
     #for item in navbarSupportContent .stripped_strings:
                 #print(item)
         #for item in navbarSupportContent.parent:
               #print(item.name)
    # print(navbarSupportContent.next_sibling.next_sibling)
     #print(navbarSupportContent.previous_sibling.previous_sibling)
     #elem =soup.select('.moddal-footer')
     #print(elem)
     elem =soup.select('#loginModel'[0])
     print(elem)


         