import { QuartzConfig } from "./quartz/cfg"
import * as Plugin from "./quartz/plugins"

// Docs: https://quartz.jzhao.xyz/configuration
const config: QuartzConfig = {
  configuration: {
    pageTitle: "Sonata",
    pageTitleSuffix: " | SONATA",
    enableSPA: true,
    enablePopovers: true,
    analytics: {
      provider: "plausible",
    },
    locale: "en-US",
    baseUrl: "https://github.com/Hi-kue/sonata",
    ignorePatterns: [
      "**/private",
      "**/hidden",
      "**/draft",
      "**/notes",
      ".obsidian", 
      "tmpl",
    ],
    defaultDateType: "modified",
    theme: {
      fontOrigin: "googleFonts",
      cdnCaching: true,
      typography: {
        header: "Schibsted Grotesk",
        body: "Inter",
        code: "IBM Plex Mono",
      },
      colors: {
        lightMode: {
          light: "#fbf1c7",
          lightgray: "#f2e5bc",
          gray: "#d5c4a1",
          darkgray: "#bdae93",
          dark: "#3c3836",
          secondary: "#d65d0e",
          tertiary: "#fe8019",
          highlight: "rgba(254, 128, 25, 0.15)",
          textHighlight: "#fe801988",
        },
        darkMode: {
          light: "#1d2021",
          lightgray: "#282828",
          gray: "#504945",
          darkgray: "#a89984",
          dark: "#ebdbb2",
          secondary: "#d65d0e",
          tertiary: "#fe8019",
          highlight: "rgba(254, 128, 25, 0.15)",
          textHighlight: "#d65d0e88",
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
