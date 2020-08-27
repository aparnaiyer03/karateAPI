Feature: Testing get for user endpoints 

Scenario: testing get for users 
Given url 'http://localhost:3000/posts'
When method get
And response.length==1
Then print 'total users count: ',response.length


Scenario: update one user
Given url 'http://localhost:3000/posts/22'
When request {author: "A" ,title: "Dallas" }
And method put 
Then print 'updated value: ', response 

Scenario: Create a new user
Given url 'http://localhost:3000/posts'
When request {id: 900,author: "AJ Flynn" ,title: "Gone girl"}
And method post
Then print 'new user is : ', response


Scenario: delete
Given url 'http://localhost:3000/posts/900'
When method delete
Then status 204

