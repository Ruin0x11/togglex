defmodule Togglex.Client do
  @moduledoc false

  defstruct auth: nil, endpoint: nil

  @api_url "api.track.toggl.com"

  @type auth :: %{access_token: binary}
  @type t :: %__MODULE__{auth: auth, endpoint: binary}

  @doc """
  Returns a client instance you'll need to make api calls
  """
  @spec new(auth, atom) :: t
  def new(auth, :api) do
    %__MODULE__{auth: auth, endpoint: "https://#{@api_url}/api/v8"}
  end
  def new(auth, :reports) do
    %__MODULE__{auth: auth, endpoint: "https://#{@api_url}/reports/api/v2"}
  end
end
