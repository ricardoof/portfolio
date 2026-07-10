defmodule PortifolioWeb.CustomComponents do
  use Phoenix.Component
  #use Gettext, backend: PortifolioWeb.Gettext

  alias Phoenix.LiveView.JS
  alias PortifolioWeb.Layouts

  import PortifolioWeb.CoreComponents

  @doc """
  Renderiza o header para mobile e desktop
  """
  def header(assigns) do
    ~H"""
    <header class="sticky top-0 z-50">
      <nav class="flex items-center justify-between md:grid md:grid-cols-3 p-4 max-w-7xl mx-auto">
        <!-- 1. Fatia da Esquerda (Logo/Nome) -->
        <div class="font-bold text-2xl text-white-800 md:justify-self-start">
          Ricardo Ferreira
        </div>

        <!-- 2. Fatia do Centro (Menu) -->
        <ul class="hidden gap-8 font-medium border border-gray-200 rounded-full py-2 px-4 md:justify-self-center md:flex">
          <li><a href="#about" phx-click={JS.hide(to: "#mobile-menu")} class="hover:text-blue-600 transition">Sobre</a></li>
          <li><a href="#projects" phx-click={JS.hide(to: "#mobile-menu")} class="hover:text-blue-600 transition">Projetos</a></li>
          <li><a href="#research" phx-click={JS.hide(to: "#mobile-menu")} class="hover:text-blue-600 transition">Pesquisa</a></li>
          <li><a href="#technologies" phx-click={JS.hide(to: "#mobile-menu")} class="hover:text-blue-600 transition">Tecnologias</a></li>
          <li><a href="#certificates" phx-click={JS.hide(to: "#mobile-menu")} class="hover:text-blue-600 transition">Certificados</a></li>
          <li><a href="#contacts" phx-click={JS.hide(to: "#mobile-menu")} class="hover:text-blue-600 transition">Contatos</a></li>
        </ul>

        <!-- 3. Fatia da Direita (Dark Mode + Sanduíche) -->
        <div class="flex items-center gap-4 md:justify-self-end">
          <Layouts.theme_toggle />

          <button
            phx-click={JS.toggle(to: "#mobile-menu")}
            class="md:hidden block text-gray-600 focus:outline-none"
            aria-label="Abrir menu"
          >
            <.icon name="hero-bars-3" class="w-8 h-8" />
          </button>
        </div>
      </nav>

      <!-- Menu Mobile -->
      <div
        id="mobile-menu"
        class="hidden absolute top-full left-0 w-full md:hidden bg-black border-gray-200 shadow-lg"
      >
        <ul class="flex flex-col p-4 gap-8 text-center font-medium text-white-700">
          <li><a href="#about" class="block hover:text-blue-600">Sobre</a></li>
          <li><a href="#projects" class="block hover:text-blue-600">Projetos</a></li>
          <li><a href="#research" class="block hover:text-blue-600">Pesquisa</a></li>
          <li><a href="#technologies" class="block hover:text-blue-600">Tecnologias</a></li>
          <li><a href="#certificates" class="block hover:text-blue-600">Certificados</a></li>
          <li><a href="#contacts" class="block hover:text-blue-600">Contatos</a></li>
        </ul>
      </div>
    </header>
    """
  end

  @doc """
  Renderiza a seção "Sobre"
  """
  def about(assigns) do
    ~H"""
    <section class="grid grid-cols-1 gap-4 p-4 m-8 text-xl items-center justify-center md:grid-cols-2 md:min-h-[80vh] md:my-16" id="about">
      <div class="flex items-center justify-center mx-auto w-48 h-48 md:w-96 md:h-96">
        <img
          src="https://github.com/ricardoof.png"
          alt="Foto de Ricardo Ferreira"
          class="rounded-full w-full h-full object-cover"
        />
      </div>

      <div class="flex flex-col gap-4 text-center md:text-left">
        <h1 class="text-4xl">Olá, meu nome é Ricardo Ferreira</h1>

        <p>Sou estudante de Ciência da Computação na UFV (8º período) e Desenvolvedor Full Stack, apaixonado por criar softwares eficientes e escaláveis.
        Atualmente, meu grande foco é o ecossistema funcional, utilizando a linguagem de programação funcional <strong>Elixir</strong> e o framework <strong>Phoenix</strong> para escalabilidade e concorrência.</p>
      </div>
    </section>
    """
  end

  @doc """
  Renderiza um projeto.
  """
  def projects(assigns) do
    ~H"""
    <section
      class="flex flex-col gap-4 items-center md:m-8 md:my-16"
      id="projects"
    >
      <h2 class="text-4xl">
        Projetos
      </h2>

      <div class="grid grid-cols-1 gap-8 p-4 md:grid-cols-3 md:m-8">
        <div
          class={["", index >= 3 && "hidden more-projects"]}
          :for={{project, index} <- Enum.with_index(@projects)}
        >
          <div class="flex flex-col h-full gap-4 p-4 rounded-lg shadow-lg hover:scale-105 transition dark:border">
            <img
              src={project.image}
              alt={project.title}
              class="rounded-lg"
            />

            <h3 class="text-2xl"><%= project.title %></h3>

            <p class="text-sm flex-grow"><%= project.description %></p>

            <div class="flex flex-row gap-4 m-2 mt-auto">
              <.link :if={project[:link_deploy] not in [nil, ""]} href={project.link_deploy} target="_blank">
                <.icon name="hero-computer-desktop" class="w-8 h-8" />
              </.link>

              <.link href={project.link_github} target="_blank">
                <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/github/github-original.svg" class="w-8 h-8"/>
              </.link>
            </div>
          </div>
        </div>
      </div>

      <%= if length(@projects) > 3 do %>
        <div>
          <button
            id="show-more-btn"
            phx-click={JS.remove_class("hidden", to: ".more-projects") |> JS.hide()}
            class="btn btn-outline btn-wide rounded-full"
          >
            Mostrar mais
          </button>
        </div>
      <% end %>
    </section>
    """
  end

  @doc """
  Renderiza a seção de pesquisa.
  """
  def research(assigns) do
    ~H"""
      <section class="flex flex-col items-center gap-8 p-4 md:my-16" id="research">
        <h2 class="text-4xl">Pesquisa</h2>

        <div class="flex flex-col gap-4 p-4 rounded-lg shadow-lg hover:scale-105 transition dark:border">
          <h3 class="text-2xl">Iniciação científica</h3>

          <p class="text-sm">Iniciação científica utilizando a linguagem funcional Elixir e o framework Phoenix.</p>
        </div>
      </section>
    """
  end

  @doc """
  Renderiza as tecnologias
  """
  def technologies(assigns) do
    ~H"""
    <section class="flex flex-col items-center gap-8 p-4 md:my-16" id="tecnologies">
      <h2 class="text-4xl">Tecnologias</h2>

      <ul class="flex flex-row items-center gap-6">
        <li class="h-12 w-12">
          <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/phoenix/phoenix-original.svg" class="w-full h-full object-cover" alt="Phoenix" />
        </li>
        <li class="h-12 w-12">
          <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/elixir/elixir-original.svg" class="w-full h-full object-cover" alt="Elixir" />
        </li>
        <li class="h-12 w-12">
            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/react/react-original.svg" class="w-full h-full object-cover" alt="React"/>
        </li>
        <li class="h-12 w-12">
            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/javascript/javascript-original.svg" class="w-full h-full object-cover" alt="JavaScript"/>
          </li>
        <li class="h-12 w-12">
            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/tailwindcss/tailwindcss-original.svg" class="w-full h-full object-cover" alt="Tailwind CSS"/>
        </li>
        <li class="h-12 w-12">
            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/html5/html5-original.svg" class="w-full h-full object-cover" alt="HTML5"/>
        </li>
      </ul>
    </section>
    """
  end

  @doc """
  Renderiza os contatos
  """
  def contacts(assigns) do
    ~H"""
    <section class="flex flex-col items-center gap-8 p-4" id="contacts">
      <h2 class="text-4xl">Contatos</h2>

      <ul class="flex flex-row items-center gap-6">
        <li class="h-12 w-12">
          <.link href="https://www.linkedin.com/in/ricardoof/" target="_blank" alt="LinkedIn">
            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/linkedin/linkedin-plain.svg" class="w-full h-full object-cover" />
          </.link>
        </li>

        <li class="h-12 w-12">
          <.link href="mailto:ricardoferreira4496@gmail.com" target="_blank">
            <.icon name="hero-envelope" class="h-12 w-12 text-gray-700 dark:text-gray-300" />
          </.link>
        </li>

        <li class="h-12 w-12">
          <.link href="https://x.com/rricardoof" target="_blank" alt="Twitter">
            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/twitter/twitter-original.svg" class="w-full h-full object-cover"/>
          </.link>
        </li>
      </ul>
    </section>
    """
  end

  def footer(assigns) do
    ~H"""
    <footer>
      <%= Date.utc_today().year %> © Ricardo Ferreira
    </footer>
    """
  end
end
