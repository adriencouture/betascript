UNDER _NEW.HTML.ERB > SCRIPT

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

UNDER _SCENE.HTML.ERB
<% if @project.user == current_user %>
  <div class="edit-scene">
     <%= link_to "Edit Scene", edit_project_scene_path(params[:id], scene.id), class: "scene-edit", remote: true %>
  </div>
<% end %>

UNDER INDEX.HTML.ERB > Search
  <%= submit_tag "Search" %>

UNDER _TYPOGRAPHY.SCSS

.navbar a {
  color: $medium-gray;
  text-decoration: none;
  transition: color $base-duration $base-timing;

  &:active,
  &:focus,
  &:hover {
    color: shade($action-color, 25%);
  }
}
