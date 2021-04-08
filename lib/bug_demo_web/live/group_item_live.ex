defmodule BugDemoWeb.GroupItemLive do
  use Phoenix.LiveComponent
  use Phoenix.HTML

  def mount(socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <div <%= unless @show do %> style="display: none;" <% end %>>
    <h5>Group Item <%= @id %></h5>
    </div>
    """
  end
end
