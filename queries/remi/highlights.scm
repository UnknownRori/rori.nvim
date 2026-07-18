;; Keywords
((identifier) @keyword
  (#eq? @keyword "invite"))
((identifier) @keyword
  (#eq? @keyword "spellcard"))
((identifier) @keyword
  (#eq? @keyword "eternal"))
((identifier) @keyword
  (#eq? @keyword "until"))
((identifier) @keyword
  (#eq? @keyword "offer"))

;; Types
(type) @type

;; Function names
(function_definition name: (identifier) @function)

;; Literals
(string) @string
(number) @number

;; Comments
(comment) @comment
