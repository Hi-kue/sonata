import { QuartzConfig } from "./quartz/cfg"
import * as Plugin from "./quartz/plugins"

// Docs: https://quartz.jzhao.xyz/configuration
const config: QuartzConfig = {
  configuration: {
    pageTitle: "Hap Archive Docs",
    pageTitleSuffix: " | HAPA",
    enableSPA: true,
    enablePopovers: true,
    analytics: {
      provider: "plausible",
    },
    locale: "en-US",
    baseUrl: "https://hap-archive.github.io/hap-archive-docs/",
    ignorePatterns: ["private", "templates", ".obsidian", "tmpl", "priv"],
    defaultDateType: "modified",
    theme: {
      fontOrigin: "googleFonts",
      cdnCaching: true,
      typography: {
        header: "Schibsted Grotesk",
        body: "Source Sans Pro",
        code: "IBM Plex Mono",
      },
      colors: {
        lightMode: {
          light: "#FFFFFF",
          lightgray: "#F3F3F3",
          gray: "#D9D8D7",
          darkgray: "#828C99",
          dark: "#5C6773",
          secondary: "#36A3D9",
          tertiary: "#4CBF99",
          highlight: "rgba(240, 238, 228, 0.15)",
          textHighlight: "#F0EEE488",
        },
        darkMode: {
          light: "#14191F",
          lightgray: "#151A1E",
          gray: "#2D3640",
          darkgray: "#3E4B59",
          dark: "#E6E1CF",
          secondary: "#36A3D9",
          tertiary: "#95E6CB",
          highlight: "rgba(37, 51, 64, 0.15)",
          textHighlight: "#25334088",
        },
      },
    },
  },
  plugins: {
    transformers: [
      Plugin.FrontMatter(),
      Plugin.CreatedModifiedDate({
        priority: ["frontmatter", "git", "filesystem"],
      }),
      Plugin.SyntaxHighlighting({
        theme: {
          light: "github-light",
          dark: "github-dark",
        },
        keepBackground: false,
      }),
      Plugin.ExplicitPublish(),
      Plugin.ObsidianFlavoredMarkdown({ enableInHtmlEmbed: false }),
      Plugin.GitHubFlavoredMarkdown(),
      Plugin.TableOfContents(),
      Plugin.CrawlLinks({ markdownLinkResolution: "shortest" }),
      Plugin.Description(),
      Plugin.Latex({ renderEngine: "katex" }),
    ],
    filters: [Plugin.RemoveDrafts()],
    emitters: [
      Plugin.AliasRedirects(),
      Plugin.ComponentResources(),
      Plugin.ContentPage(),
      Plugin.FolderPage(),
      Plugin.TagPage(),
      Plugin.ContentIndex({
        enableSiteMap: true,
        enableRSS: true,
      }),
      Plugin.Assets(),
      Plugin.Static(),
      Plugin.Favicon(),
      Plugin.NotFoundPage(),
      Plugin.CustomOgImages(),
    ],
  },
}

export default config
