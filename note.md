<%= form_for ([@project, @scene]) do |f| %>
  <div id="scenes">
    <%= f.fields_for :scenes do |scene_fields| %>
      <%= render "scene_fields", f: scene_fields %>
    <% end %>

    <div class="links">
      <%= link_to_add_association 'add scene', f, :scenes %>
    </div>
  </div>

  <div id="characters">
    <%= f.fields_for :characters do |character_fields| %>
      <%= render "character_fields", f: character_fields %>
    <% end %>

    <div class="links">
      <%= link_to_add_association 'add character', f, :characters %>
    </div>
  </div>

  <div class="action">
    <%= f.submit "Create Script!" %>
  </div>
<% end %>


<% current_scene.characters.each do |character| %>
  <p>
    <%= character.name %>
  </p>
  <p>
    <%= character.parenthetical %>
  </p>
  <p>
    <%= character.dialogue %>
  </p>
<% end %>
