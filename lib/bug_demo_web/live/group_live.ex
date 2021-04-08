defmodule BugDemoWeb.GroupLive do
  use Phoenix.LiveComponent
  use Phoenix.HTML

  def mount(socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <h1>Group</h1>
    """
  end
end
