defmodule Portifolio.Projects do

  @doc """
  Lista de projetos.
  """
  def list_projects do
    [
      %{
        title: "Agents",
        description: "Aplicação FullStack de perguntas e respostas (Q&A) para salas de áudio, com opções de criar salas, enviar perguntas e transcrever trechos de áudio para texto utilizando o Google Gemini.",
        technologies: ["Vite", "Fastify", "TypeScript", "Google Gemini", "Docker", "PostgreSQL", "TailwindCSS"],
        image: "https://raw.githubusercontent.com/ricardoof/agents/main/web/public/home.png",
        link_deploy: "https://agents-lake-omega.vercel.app/",
        link_github: "https://github.com/ricardoof/agents"
      },
      %{
        title: "DevStage",
        description: "Aplicação FullStack de evento, com opção de inscrição, ranking e convites.",
        technologies: ["Next.js", "TypeScript", "TailwindCSS", "PostgreSQL", "Fastify"],
        image: "https://raw.githubusercontent.com/ricardoof/devstage/main/web/public/home.png",
        link_deploy: "https://devstage-ten.vercel.app/",
        link_github: "https://github.com/ricardoof/devstage"
      },
      %{
        title: "Inorbit",
        description: "Aplicação FullStack para gerenciar metas diárias, com opção de criar, acompanhar o progresso e visualizar um resumo semanal.",
        technologies: ["Vite", "TypeScript", "TailwindCSS", "Docker", "PostgreSQL"],
        image: "https://raw.githubusercontent.com/ricardoof/inorbit/main/web/public/home.png",
        link_deploy: "",
        link_github: "https://github.com/ricardoof/inorbit"
      },
      %{
        title: "InstaBytes",
        description: "Aplicação FullStack simpes de rede social com criação de posts, a descrição das fotos é feita com o Google Gemini.",
        technologies: ["HTML", "CSS", "JavaScript", "Node", "MongoDB", "Google Gemini"],
        image: "https://raw.githubusercontent.com/ricardoof/instabytes/main/web/assets/images/home.png",
        link_deploy: "",
        link_github: "https://github.com/ricardoof/instabytes"
      },
      %{
        title: "Casa Verde",
        description: "E-commerce de plantas com API de e-mail.",
        technologies: ["Vite", "CSS", "JavaScript"],
        image: "https://raw.githubusercontent.com/ricardoof/casa-verde/main/public/images/casa-verde.png",
        link_deploy: "https://casa-verde-delta-topaz.vercel.app/",
        link_github: "https://github.com/ricardoof/casa-verde"
      },
      %{
        title: "Jogos indies brasileiros",
        description: "Aplicação web que busca jogos brasileiros em uma lista.",
        technologies: ["HTML", "CSS", "JavaScript"],
        image: "https://raw.githubusercontent.com/ricardoof/jogos-indies-br/main/imagens/home.png",
        link_deploy: "https://jogos-indies-br.vercel.app/",
        link_github: "https://github.com/ricardoof/jogos-indies-br"
      },
      %{
        title: "Filmes populares",
        description: "Aplicação web que consome a API do TMDB para exibir filmes, com opções de busca e favoritar filmes.",
        technologies: ["HTML", "CSS", "JavaScript"],
        image: "https://raw.githubusercontent.com/ricardoof/movie-db-api/main/src/image/filmes-populares-desktop.png",
        link_deploy: "https://movie-db-api-xi.vercel.app/",
        link_github: "https://github.com/ricardoof/movie-db-api"
      },
      %{
        title: "Netflix",
        description: "Clone da Netflix feito com HTML e CSS. Ele inclui a página inicial da Netflix para desktop e responsividade para mobile.",
        technologies: ["HTML", "CSS"],
        image: "https://raw.githubusercontent.com/ricardoof/netflix/main/img/netflix-desktop.png",
        link_deploy: "https://netflix-nine-blush.vercel.app/",
        link_github: "https://github.com/ricardoof/netflix"
      },
      %{
        title: "Spotify",
        description: "Clone do Spotify feito com HTML, CSS e JavaScript. Ele inclui a página inicial do Spotify para desktop e responsividade para mobile.",
        technologies: ["HTML", "CSS", "JavaScript"],
        image: "https://raw.githubusercontent.com/ricardoof/spotify-clone/main/src/assets/images/spotify-desktop.png",
        link_deploy: "https://spotify-clone-chi-eight.vercel.app/",
        link_github: "https://github.com/ricardoof/spotify-clone"
      }
    ]
  end
end
