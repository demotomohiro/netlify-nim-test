# netlify-nim-test
Minimum example of using Nim language on Netlify.

[Web page generated from this repository](https://use-nim-on.netlify.com/)

## How to use
* Fork or copy this repository
* Login to Netlify
* Click "New site from Git" botton
* Select the repository you forked or copied.
* Click "Deploy site"

## How it work
Everytime you do git push to your repository, Netlify clone your repository, execute build command and make files under public directory accessible from internet.
``bash build.sh`` is the build command executed by Netlify.
build.sh call ``install_nim_check`` that download Nim source code and build it so that you can use Nim compiler.
Next time you do git push to your repository, Nim compiler built on previous time is used.
When you specify newer version of Nim in build.sh, old Nim compiler will be removed, new Nim source code will be downloaded and built.
