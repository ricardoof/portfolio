defmodule Portifolio.Experiences do

  def list_experiences do
    [
      %{
        period: "Set/2025 - Ago/2026",
        location: "Viçosa, MG (Híbrido)",
        role: "Pesquisador / Desenvolvedor FullStack",
        company: "LABD2M - Universidade Federal de Viçosa (UFV)",
        company_link: "https://labd2m.github.io/index.html",
        description: "Análise e reimplementação de um sistema de cuidados domésticos de um ecossistema JavaScript (Vue/Node) para o ecossistema funcional (Elixir/Phoenix), desenvolvido com o Laboratório de Engenharia de Software e Dispositivos Móveis (LABD2M) da UFV.",
        technologies: ["Elixir", "Phoenix", "TailwindCSS", "MySQL", "Playwright", "K6"]
      }
    ]
  end
end
