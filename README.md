# Practice CRUD 

### what is CRUD?
    - In computer programming, <b>create, read, update, and delete</b>
    - [1] (as an acronym CRUD) are the four <b>basic functions of persistent storage.</b>
    - [2] Alternate words are sometimes used when defining the four basic functions of CRUD, 
    such as retrieve instead of read, modify instead of update, or destroy instead of delete.
    CRUD is also sometimes used to describe user interface conventions that facilitate viewing, 
    searching, and changing information; often using computer-based forms and reports.

### Routes    
<table class="responsive">
    <thead>
        <tr>
            <th>HTTP method</th>
            <th>Routes</th>
            <th>Controller#Action</th>
            <th>Routes helper</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>GET</td>
            <td>/admin/posts</td>
            <td>posts#index</td>
            <td>posts_path</td>
        </tr>
        <tr>
            <td>GET</td>
            <td>/admin/posts/new</td>
            <td>posts#new</td>
            <td>new_post_path</td>
        </tr>
        <tr>
            <td>POST</td>
            <td>/admin/posts</td>
            <td>posts#create</td>
            <td>posts_path</td>
        </tr>
        <tr>
            <td>GET</td>
            <td>/admin/posts/:id</td>
            <td>posts#show</td>
            <td>post_path(:id)</td>
        </tr>
        <tr>
            <td>GET</td>
            <td>/admin/posts/:id/edit</td>
            <td>posts#edit</td>
            <td>edit_post_path(:id)</td>
        </tr>
        <tr>
            <td>PATCH/PUT</td>
            <td>/admin/posts/:id</td>
            <td>posts#update</td>
            <td>post_path(:id)</td>
        </tr>
        <tr>
            <td>DELETE</td>
            <td>/admin/posts/:id</td>
            <td>posts#destroy</td>
            <td>post_path(:id)</td>
        </tr>
    </tbody>
</table>

--- 

- routing is basic so check routes.rb frequently

- rails g controller post

- rails g model post

- rake db:migrate
then you can see updated schema

- To check DataBase by GUI webpage <br>
gem 'rails_db'

- you can chekc /rails/db

- practice create then delete

- practice read in rails console <br>
Post.all <br>
Post.create(title: "test in command", content: "test in command content") <br>
reference : http://guides.rorlab.org/active_record_basics.html

- set destroy

- set update


- basic of http is stateless!! so create new and show Separately

- curl!! : is a computer software project providing a library and command-line tool for transferring data using various protocols. The cURL project produces two products, libcurl and cURL. 

- ruby grammar <br>
unless <br>
while / until <br>
one line condition <br>
All thing(include 0) is 'True' except false/nil <br>
for each <br>

- function : method == Outer class : Inner class  <br>
in programming languages almostly except ruby

- ruby just have method in outer/inner not function <br>
num.methods display all available methods <br>
even '=' is method. All thing is Object in ruby <br>
that is so easily when testing

- practice in rails console <br>
gem install pry <br>
gem install awesome_print <br>
pry

def add(one, two) <br>
  return one + two <br>
end 

def subtract(one, two) <br>
  one - two # that is not wrong when you miss return  <br>
end

[].respond_to?(:each) # that is check sentence whether [] can use 'respond_to'

str = "hello world" <br>
str.gsub!("hello","hi") <br>

def can_divide_by?(number) <br>
  return false if number.zero? <br>
  true <br>
end <br>
3.zero? <br>
Of course can use default argument in method <br>
http://ruby-doc.org/

- ruby blocks, just code collection

def hack <br>
  puts "Hack " <br>
  yield <br>
end <br>
hack { puts "your life" } # Pass code as if passing arguments.. <br>
class Array <br>
  def each <br>
   yield # It will have this 'yield' on each method. because can write black {}


- but be careful <br>
you can edit origin method in ruby [ex)numeric] <br>
class Numeric <br>
  def bitcoin <br>
    self * 8380000 <br>
  end <br>
end <br>
20.bitcoin <br>


In other words, You need to know that there is always yield in a method that writes to a block.<br>

you can check 'yield' in layouts/application.html.erb<br>

check bootstrap a little <br>


- TDD : Test first and start developing! <br>
Test Driven Development

- attribute_accessor, You can make class setter and getter easily<br>
attr_accessor<br>
attr_reader

- ruby have unit test but it is rarely spended.<br>
rspec is used a lot when test in Ruby on rails project<br>
'test_helper' use 'rspec'

- rubykoans.com <br>
you can study about TDD in koan


---
---


- etc..

practice_crud # ruby on rails 기분 만듦

routing이 기본이다! routes.rb 파일!!!

rails g controller post

view 파일 만들지, 당근

rails g model post

rake db:migrate

schema 업데이터 된거 보이지!!

GUI 형태 DB보는 거
gem 'rails_db'

/rails/db를 들어갈 수 있다

create 이후 delete 만들기!!

rails console에서 read 연습함
Post.all
Post.create(title: "test in command", content: "test in command content")

reference : http://guides.rorlab.org/active_record_basics.html

destroy 구성함!!

update 만듦

http는 기본적으로 stateless 하다!!

curl!! 정리해!!!!
curl : 다양한 통신 프로토콜을 이용하여 데이터를 전송하기 위한 라이브러리와
명령 줄 도구를 제공하는 컴퓨터 스프트웨어 프로젝트이다. 이 cURL 이라는 2개의
제품을 만든다. 


rails MVC 도식도 봄


=================
ruby 지금까지 한 거 간단히 정리
unless 많이 쓴다.
while until
one line condition
false / nil 빼고는 다 true이다. 0도 true 이다.
for each

function / method는 다르다 = 클래스 밖에서 정의됨 / 클래스 내에서 정의됨
거의 모든 프로그래밍 언어에서,
하지만 ruby에서는 다 method로 사용된다. 밖 안 구분 안한다.
num.methods 라고 하면 모든 methods 보여주네..
= 도 method 인거다. 모든것이 객체인 거다!!!
testing에 가면 빛을 바란다!!

rails console에서 연습함!!
gem install pry
gem install awesome_print
pry


def add(one, two)
  return one + two
end

def subtract(one, two)
  one - two # return이 없어도 되네...
end

[].respond_to?(:each) # respond_to를 쓸 수 있는지 없는지..

str = "hello world"
str.gsub!("hello","hi")

def can_divide_by?(number)
  return false if number.zero?
  true
end
3.zero?

default argument 가능하지 당근
http://ruby-doc.org/

## ruby blocks
- 코드 모음

def hack
  puts "Hack "
  yield
end
hack { puts "your life" } # 인자를 넘기듯이 코드를 넘기네..
class Array
  def each
   yield # 이 yield가 있겠지 each method에!! black{}을 이거 쓸 수 있으니

단 주의해야 한다.
ruby는 원시 method도 수정이 가능하다.(ex)numeric)
class Numeric
  def bitcoin
    self * 8380000
  end
end
20.bitcoin
이렇게 사용할 수 있다.

즉, block을 쓰는 method에는 yield가 항상 있다는 것을 알아야 한다.

파일읽기 등 했었다.

ruby string api 활용 본다.


yield 가 layouts/application.html.erb에 있지!!!!

bootstrap 조금 봄!


TDD/BDD : 테스트를 먼저 짜고 개발을 시작하는 것!!
테스트 주도 개발, 개념 블로그에 정리해놔!!
test driven development

attr_accessor
attr_reader

unit test 거의 안쓴다.
rspec 쓴다!! 이 test framework를 가장 많이 쓴다!!

test_helper가 rspec을 쓴다!!


rubykoans.com
이거 kroan 뜸. test에 대해서 공부해라. tdd관련
test를 하며 하나씩 고쳐나가는 과정이다!!

