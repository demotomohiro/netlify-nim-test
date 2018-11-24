from htmlgen import nil 

const commentWidget = """
<script src="https://utteranc.es/client.js"
        repo="demotomohiro/netlify-nim-test"
        issue-term="url"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
"""
  ## A lightweight comments widget built on GitHub issues
  ## https://utteranc.es/

const html = (
          "<!DOCTYPE html>\n" &
          htmlgen.html(
            htmlgen.head(
              htmlgen.meta(charset="utf-8"),
              htmlgen.title("Use Nim on Netlify")),
            htmlgen.body(
              htmlgen.h1("Use Nim on Netlify"),
              htmlgen.div("This is minimum example web site created with Nim language on Netlify."),
              htmlgen.ul(
                htmlgen.li(
                  htmlgen.a(
                    href="https://github.com/demotomohiro/netlify-nim-test",
                    "Repository of this page")),
                htmlgen.li(
                  htmlgen.a(href="https://nim-lang.org/", "Nim")),
                htmlgen.li(
                  htmlgen.a(href="https://www.netlify.com/", "Netlify"))),
                commentWidget)))

writefile "public/index.html", html
