defmodule Portfolio.Experience do

  @doc """
  List of experiences.
  """
  def list_experiences do
    [
      %{
        period: "Sep/2025 - Aug/2026",
        location: "Viçosa, MG (Hybrid)",
        role: "Researcher / Full Stack Developer",
        company: "LABD2M - Federal University of Viçosa (UFV)",
        company_link: "https://labd2m.github.io/index.html",
        description: "Analysis and reimplementation of a home care system from a JavaScript ecosystem (Vue/Node) to a functional ecosystem (Elixir/Phoenix), developed with the Software Engineering and Mobile Devices Laboratory (LABD2M) at UFV.",
        technologies: ["Elixir", "Phoenix", "TailwindCSS", "MySQL", "Playwright", "K6"]
      }
    ]
  end
end
