<div>
  <h6><%= comment.author_name %>: </h6>
  <p class="comment"><%= comment.body %></p>
</div>

<!-- This code above is equivalent to: -->
<!--<% @article.comments.each doq comment %> -->
  <!--<p>
    <strong>Commenter:</strong>
    <%= comment.commenter %>
  </p>
 
  <p>
    <strong>Comment:</strong>
    <%= comment.body %>
  </p>
<% endq %> q is added to inert the words-->

<!-- <%= qrender @article.comments %>  this line in show page will render the _comment partial once for each comment in @article.comments collection
As the render method iterates over the @articles.comment collection, it assigns each comment to a local variable that has the same name as the partial name (here it is comment) which is then available in the partial to show-->