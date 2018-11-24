from htmlgen import nil 

const html = (
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
                  htmlgen.a(href="https://www.netlify.com/", "Netlify"))))))
writefile "public/index.html", html
