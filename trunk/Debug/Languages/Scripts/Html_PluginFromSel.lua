(defvar Context,(call WALib(WAMiscAllocMem),WAContext_Size))
(if !Context,(end))
(call WALib(WAMMGetContext),Context)
(defvar Word,(call WALib(WAMMSelectCurrentWord),*Context#WAContext_hCurrentChild))
(if !(call WALib(WAStringLen),Word),(end))
(defvar WordPaste,(call WALib(WAStringCat),"<embed src=\"",Word))
(setvar WordPaste,(call WALib(WAStringCat),WordPaste,"\" width=\"32\" height=\"32\">\r\n</embed>"))
(call WALib(WAMMInsertText),*Context#WAContext_hCurrentChild,WordPaste)
(call WALib(WAMiscFreeMem),Context)