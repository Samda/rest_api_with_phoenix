defmodule RestApi.PageView do 
	use RestApi.Web, :view

	def render("index.json", %{posts: posts}) do
	end
end
