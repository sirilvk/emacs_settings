(setq load-path
        (append (list nil "~/.emacs.d")
                   load-path))

(require 'etags-select)
(require 'etags-table)

(setq tag-table-alist
      '(("~/.emacs.d/" . "~/.emacs.d/TAGS")
        ("~/projects/source/" . "~/.TAGS/projects.tags")))
(setq etags-table-alist tag-table-alist)
(setq etags-table-search-up-depth 10)
(global-set-key "\M-." 'etags-select-find-tag)
(global-set-key "\C-l" 'goto-line)
(global-set-key "\M-s" 'replace-string)
(global-set-key "\C-d" 'delete-backward-char)
(global-set-key "\C-f" 'find-name-dired)
 
(add-hook 'c++-mode-hook' (lambda () (c-set-style "K&R") (setq c-basic-offset 4)))
(setq show-trailing-whitespace t)
 
(custom-set-variables
'(python-guess-indent nil)
'(python-indent 2))

