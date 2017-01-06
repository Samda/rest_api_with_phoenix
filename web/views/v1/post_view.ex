defmodule RestApi.V1.PostView do
  use RestApi.Web, :view

  def render("index.json", %{posts: posts}) do
    %{data: render_many(posts, RestApi.V1.PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, RestApi.V1.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      content: post.content}
  end
end
