;; this file contains all bindings of customization
(global-set-key [(meta left)] 'backward-sexp) ;;match the left brace
(global-set-key [(meta right)] 'forward-sexp) ;; match the right brace
(global-set-key [(meta g)] 'goto-line)        ;;move to a line specified by a number

;;(global-set-key [(control kp-add)] 'other-window)
;;(global-set-key [(control kp-subtract)] 'sams-other-window-backwards) ;;use C-x o with a negative prefix argument, Ctrl-+ Ctrl-[ms]


;;(global-set-key [(meta kp-subtract)] 'sams-other-frame-backwards) ;; switch frame with Meta-[ms]
;;(global-set-key [(meta kp-add)] 'other-frame)
(global-set-key [(control shift s)] 'word-search-forward) ;; word-search-forward
(global-set-key [(control shift r)] 'word-search-backward) ;;word-search-backward

;;(global-set-key [(control h) (control c)] 'sams-list-all-bindings) ;; list all places where the function that's bound to this key is bound elsewhere

(global-set-key [(control x) (c)] 'ispell-complete-word)
;;(read-abbrev-file) ;;enable abbreviations from one session to another session               ;; ding modified 2012/05/19
;;(sams-write-abbrev-at-once) ;;enable abbreviastions to save as soon as the are defined.     ;; ding modified 2012/05/19
(global-set-key "\M- " 'hippie-expand) ;; enable hippie-expand

;;(global-set-key [(control T)] 'sams-transpose-prev-char) ;;only transpose the previous two key before point



;;(global-set-key [(meta q)] 'sams-fill) ;; enable fill-region when region is active in the transient-mark-mode; when region is inactive, this command is fill-pagraph.

(setq outline-minor-mode-prefix [(control o)]) ;; binding the outline-minor-mode-prefix to C-o instead of C-c @
;;(add-hook 'outline-minor-mode 'outl-mouse-minor-mode) ;;mouse support for outline
(global-set-key [(meta o)] 'open-line)   ;; binding the open-line function to M-o instead of c-o

(setq enable-local-eval t) ;; ask emacs to skip this security check if you never edit other people's file.

;;(global-set-key [(control meta left)] (sams-definteractive (scroll-right 10))) ;; scroll to right with binding C-M-

(global-set-key [(home)] 'beginning-of-defun)
(global-set-key [(end)] 'end-of-defun)

;;(global-set-key [(control next)] 'end-of-buffer)
;;(global-set-key [(control prior)] 'beginning-of-buffer)

;;(global-set-key [(control \1)] 'set-mark-command)
(global-set-key (kbd "C-1") 'set-mark-command)
(global-set-key (kbd "C-x w") 'kill-ring-save)
