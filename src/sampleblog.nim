import nimDeBlog

proc main =
  let articleHead = """
$otherLangLinks

`【
【ja:記事一覧へ】
【en:index】
】 <$indexPageLink>`_

Nim De Blog on Netlify
"""
  let indexPageHead = """
Nim De Blog
======
【
【ja:記事一覧】
【en:Artile list】
】
------
"""

  let indexPageFoot = ""

  makeBlog(
          articlesSrcDir  = "articles",
          articlesDstDir  = "../public",
          execDstDir      = "bin",
          header          = articleHead,
          title           = "Nim De Blog on Netlify",
          description     = """【
                               【ja:Nim De BlogというNim言語を使った静的サイトジェネレータをNetlifyで使うサンプル。】
                               【en:Sample page of Nim De Blog on Netlify that is a static site generater that uses Nim programming language.】
                               】""",
          preIndex        = indexPageHead,
          postIndex       = indexPageFoot)
when isMainModule:
  main()
