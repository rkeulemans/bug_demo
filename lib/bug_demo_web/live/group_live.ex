defmodule BugDemoWeb.GroupLive do
  use Phoenix.LiveComponent
  use Phoenix.HTML

  def mount(socket) do
    {:ok, assign(socket, selected_id: get_id(socket.assigns, 1))}
  end

  def render(assigns) do
    ~L"""
    <h3>Group <%= @id %></h3>
    <%= for i <- 1..3 do %>
    <button phx-click="toggle-group-item" phx-value-id="<%= i %>" phx-target="<%= @myself %>">Show <%= i %></button>
    <% end %>
    <%= for i <- 1..3 do %>
      <%= live_component @socket, BugDemoWeb.GroupItemLive, show: @selected_id == get_id(assigns, i), id: get_id(assigns, i)  %>
    <% end %>
    """
  end

  def get_id(assigns, item_id) do
    "#{assigns.myself.cid}-#{item_id}"
  end

  def handle_event("toggle-group-item", %{"id" => id}, socket) do
    {:noreply, assign(socket, selected_id: get_id(socket.assigns, id))}
  end
end
