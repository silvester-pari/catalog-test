{
  "title": "git-clerk",
  "type": "object",
  "properties": {
    "Story": {
      "type": "string",
      "format": "markdown",
      "options": {
        "simplemde": {
          "toolbar": [
            "bold",
            "italic",
            "strikethrough",
            "heading",
            "|",
            "unordered-list",
            "ordered-list",
            "link"
          ],
          "spellChecker": false
        }
      },
      "default": "# Hello there!"
    }
  },
  "preview": "/storytelling.html"
}