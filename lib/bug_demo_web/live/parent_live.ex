defmodule BugDemoWeb.ParentLive do
  use BugDemoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, query: "", results: %{})}
  end

  def render(assigns) do
    ~L"""
    <h1>Parent</h1>
    <%= for i <- 1..3 do %>
      <%= live_component @socket, BugDemoWeb.GroupLive, id: Integer.to_string(i) %>
    <% end %>
    """
  end
end
