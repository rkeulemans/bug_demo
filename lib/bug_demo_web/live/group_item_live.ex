defmodule BugDemoWeb.GroupItemLive do
  use Phoenix.LiveComponent
  use Phoenix.HTML

  def mount(socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <h3>Group Item</h3>
    """
  end
end
