;; (setq load-path
;;    (cons "~/Emacs/Configurations"
;;       (cons "~/Emacs/Extensions"
;;           (cons (expand-file-name "~/Emacs/Extensions/lisp")
;;              (cons (expand-file-name "~/Emacs/Extensions/ruby")
;;                    (cons (expand-file-name "~/Emacs/Extensions/rails")
;;                          (cons "~/Emacs/Extensions/bbdb_lisp" load-path)))))))
(add-to-list 'load-path "~/.emacs.d/Configurations")
(add-to-list 'load-path "~/.emacs.d/Extensions")
(add-to-list 'load-path "~/.emacs.d/Extensions/lisp")
(add-to-list 'load-path "~/.emacs.d/Extensions/other")

(add-to-list 'load-path "~/.emacs.d/Extensions/rails")

(add-to-list 'load-path "~/.emacs.d/Extensions/gnus")
(add-to-list 'load-path "~/.emacs.d/Extensions/gnus/bbdb_lisp")
(load "ding_emacs-std")
(load "ding_bindings")
(load "ding_macros")
(load "ding_modes")
(load "ding_extensions")
