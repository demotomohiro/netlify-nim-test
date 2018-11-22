const rstText = """
【
【ja:Nim De BlogをNetlifyで使う】
【en:Nim De Blog on Netlify】
】
======
【
【ja:Nim De BlogをNetlifyで使ってみました。】
【en:I tried to use Nim De Blog on Netlify.】
】

"""
let articleA = newTable([
  (Lang("ja"),
  ArticleSrcLocal(
    title:"Nim De BlogをNetlifyで使う",
    description:"Nim De BlogをNetlifyで使ってみました。")),
  (Lang("en"),
  ArticleSrcLocal(
    title:"Nim De Blog on Netlify",
    description:"I tried to use Nim De Blog on Netlify."))])
newArticle(articleA, rstText)
