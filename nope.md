# testing a change

# used to be the contents of /home/_header.html.erb

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

  <%= link_to "Friends App", root_path, class:"navbar-brand" %>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">

      <li class="nav-item">
        <%= link_to "About Us", home_about_path, class:"nav-link" %>
      </li>

      
      <% if user_signed_in? %>

        <li class="nav-item">
          <%= link_to "My Friends", friends_path, class:"nav-link" %>
        </li>

        <li class="nav-item">
          <%= link_to "My Links", link_groups_path, class:"nav-link" %>
        </li>

        <li class="nav-item">
          <%= link_to "My Account", edit_user_registration_path, class:"nav-link" %>
        </li>

        <li class="nav-item">
          <%= button_to "Logout", destroy_user_session_path, method: :delete, class:"btn btn-outline-light" %>
        </li>

        
      <% else %>

        <li class="nav-item">
          <%= link_to "Sign Up", new_user_registration_path, class:"nav-link" %>
        </li>
        
        <li class="nav-item">
          <%= link_to "Login", new_user_session_path, class:"nav-link" %>
        </li>

      <% end %>

    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

# used to be /links/show.html.erb

<div class="card">
  <div class="card-header">
   <%= link_to "Back to Links", link_group_links_path %>
  </div>
  <div class="card-body">
    <h1 class="card-title"><%= "#{@link.title}'s Website" %></h1>

    <strong>Title:</strong>
    <%= @link.title %>
    <br/>

    <strong>URL:</strong>
    <%= link_to "#{@link.url}", "#{@link.url}", target:"_blank" %>
    <br/>

    <strong>Description:</strong>
    <%= @link.description %>
    <br/>

    <br/>

    <%= link_to "Edit #{@link.title}'s Info", edit_link_path(@link), class:"btn btn-outline-secondary btn-sm" %>
    <%= button_to "Delete #{@link.title}", 
        @link, method: :delete, 
        class: "btn btn-outline-danger btn-sm",
        data: {
                turbo_method: :delete,
                turbo_confirm: "Are you sure?"
        }%>
  </div>
</div>