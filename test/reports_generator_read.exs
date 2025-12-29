defmodule RepostsRead do
  def build(filename) do
    """
    case File.read("reports/#{filename}") do
      {:ok, result} -> result
      {:error, reason} -> reason
      _ -> "Any case."
    end
    """
    "reports/#{filename}"
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, file_content}), do: file_content
  defp handle_file({:error, reason}), do: "Error while opening file: #{reason}"
end
