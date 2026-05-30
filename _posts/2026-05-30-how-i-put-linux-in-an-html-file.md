---
layout: post
title: "How I put Linux in an HTML file`"
date: 2026-05-30
---

Recently, I built something that sounds impossible at first: Linux running from a single HTML file.

The trick is that Linux itself is not running directly as a webpage. Instead, I compiled [**mini-rv32ima**](https://github.com/cnlohr/mini-rv32ima) (cnlohr's is awesome, you should go check his work out!) to [**WebAssembly**](https://developer.mozilla.org/en-US/docs/WebAssembly) and then ran it in an HTML file using **JavaScript**.

**mini-rv32ima** is a 32-bit RISC-V emulator that is written single-file C header for use. It wouldn't compile to WebAssembly natively, so I had to make some modifications to the source code.

I had never used Emscripten before, but I managed to get the grasp of it using some AI assistance, and I was able to compile **mini-rv32ima** to WebAssembly successfully.

Normally, WebAssembly wouldn't fit without packaging it into the HTML file. However, I wrote a Python script to encode the WebAssembly module into a base64 string and embed it directly in the HTML file. I then embedded the remaining components into the HTML file through another Python script.

The frontend is a simple XTerm.js terminal emulator that allows the user to interact with the Linux kernel running in the WebAssembly module. It is rather slow, I am working on fixing that.

# Demo

If you would like to try it out, you can visit the [demo page](https://lgrachov.github.io/linux-wasm/). The username is root` and there is no password.

If you would like to learn more about the project, you can visit the [GitHub repository](https://github.com/lgrachov/linux-wasm).

# Credits & glossary

- [**mini-rv32ima**](https://github.com/cnlohr/mini-rv32ima) by [cnlohr](https://github.com/cnlohr)
- [**WebAssembly**](https://developer.mozilla.org/en-US/docs/WebAssembly)
- [**XTerm.js**](https://xtermjs.org/)
