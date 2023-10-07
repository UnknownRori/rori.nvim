; ((html) @injection.content
;     (#set! injection.language html)
;     (#set! injection.combined))

((php) @injection.content
    (#set! injection.combined))
    (#set! injection.language php)
((parameter) @injection.content
    (#set! injection.language php))
