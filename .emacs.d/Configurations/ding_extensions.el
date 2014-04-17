;; this file contains all extensions

;; (require 'sams-lib)
;; (load "refcard")

;; (if sams-Gnu-Emacs-p
;;   (progn
;;       (message "Loading customize...")
;;       ;(require 'customize)
;;       (message "Loading customize...Done")
;;  ))
;; (require 'jka-compr) ;;enable emacs to edit a compressed and archives file
;; (jka-compr-install) ;; used by xemacs

;; (require 'template) ;; enable template
;; (template-initialize)

;; (require 'redo) ;;enable redo
;; (global-set-key [(f5)] 'undo) ;;keybing for undo
;; (global-set-key [(shift f5)] 'redo) ;;keybing for redo

;; (require 'backup-dir)  ;;enable lib backup-dir
;; (setq bkup-backup-directory-info
;;       '((t "~/.emacs.d/backup" ok-create full-path))) ;;set the backup directory for emacs

;;(load-library "yic-buffer") ;;function: go to previous buffer or next buffer C-x C-p/C-x C-n and kill this buffer without asking using command C-x C-k(this is confict with C-x C-k(edit-kbd-macro)

(require 'iswitchb)  ;; function: list all buffers in minibuffers. C-s/C-r
;;(iswitchb-default-keybindings)

;;(load "desktop")   ;; enable to save the buffer list on exit and automatically load there file when start
;;(desktop-load-default)  ;; M-x desktop-save when first use
;;(desktop-read)

(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(global-font-lock-mode t nil (font-lock))
 '(kill-whole-line nil nil nil "ding edit that it can kill whole line"))
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
)

;; The following is the customize order of hippie-expand
(setq hippie-expand-try-functions-list
   '(try-complete-file-name-partially
     try-complete-file-name
     try-expand-all-abbrevs
     try-expand-list
     try-expand-line
     try-expand-dabbrev
     try-expand-dabbrev-all-buffers
     try-expand-dabbrev-from-kill
     try-complete-lisp-symbol-partially
     try-complete-lisp-symbol))




;; (load "folding" 'nomessage 'noerror)  ;; install fold
;; (folding-mode-add-find-file-hook)

;; (require 'gnus-load)

;; (require 'bbdb)
;; (bbdb-initialize)
;; (add-hook 'gnus-startup-hook 'bbdb-insinuate-gnus)
;; (add-hook 'gnus-startup-hook 'bbdb-insinuate-message)
;; (add-hook 'message-setup-hook 'bbdb-define-all-aliases)
;; (sams-bind-alias-tabs-in-gnus)

(require 'color-theme)
(color-theme-deep-blue)  ;; use dark bule

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; The following is added after sams 24 hours

;;;;;;;;;;;;;;;;;;;
;;; htmlize
;;; date 2011-12-04
;;;;;;;;;;;;;;;;;;
;;(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t) ;;enable html-helper
;;(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode) auto-mode-alist))

;; (require 'htmlize)
;; (setq htmlize-output-type "css")
;; (setq htmlize-output-type "inline-css")
;; (setq htmlize-output-type "font")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; visual-basic-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
;; (setq auto-mode-alist (append '(("\\.\\(frm\\|bas\\|cls\\)$" .
;;                                 visual-basic-mode)) auto-mode-alist))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; igrep lib
;;; ding added,  2012/05/19
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(require 'igrep)
;;(autoload 'igrep "igrep"
  ;; "*Run `grep` PROGRAM to match REGEX in FILES..." t)
;;(autoload 'igrep-find "igrep"
  ;; "*Run `grep` via `find`..." t)
;;(autoload 'igrep-visited-files "igrep"
  ;; "*Run `grep` ... on all visited files." t)
;;(autoload 'dired-do-igrep "igrep"
  ;; "*Run `grep` on the marked (or next prefix ARG) files." t)
;;(autoload 'dired-do-igrep-find "igrep"
  ;; "*Run `grep` via `find` on the marked (or next prefix ARG) directories." t)
;;(autoload 'Buffer-menu-igrep "igrep"
  ;;"*Run `grep` on the files visited in buffers marked with '>'." t)
;;(autoload 'igrep-insinuate "igrep"
  ;;"Define `grep' aliases for the corresponding `igrep' commands." t)

;;(autoload 'grep "igrep"
  ;; "*Run `grep` PROGRAM to match REGEX in FILES..." t)
;;(autoload 'egrep "igrep"
  ;; "*Run `egrep`..." t)
;;(autoload 'fgrep "igrep"
  ;; "*Run `fgrep`..." t)
;;(autoload 'agrep "igrep"
  ;; "*Run `agrep`..." t)
;;(autoload 'grep-find "igrep"
  ;; "*Run `grep` via `find`..." t)
;;(autoload 'egrep-find "igrep"
  ;; "*Run `egrep` via `find`..." t)
;;(autoload 'fgrep-find "igrep"
  ;; "*Run `fgrep` via `find`..." t)
;;(autoload 'agrep-find "igrep"
  ;; "*Run `agrep` via `find`..." t)

;;; browse-kill-ring
(require 'browse-kill-ring)
;;(browse-kill-ring-default-keybindings)  ;;use M-y to invoke 'browse-kill-ring
(global-set-key (kbd "C-c k") 'browse-kill-ring)


(require 'ido)
(ido-mode t)
(add-hook 'ido-make-buffer-list-hook 'ido-summary-buffers-to-end)
(setq ido-everywhere t)
(setq ido-save-directory-list-file nil)

;;(add-hook 'ido-define-mode-map-hook 'ido-my-keys)
;;(add-hook 'ido-setup-hook 'ido-my-keys)

;; (defun ido-my-keys ()
;;   "Set up the keymap for `ido'."

  ;; common keys
  ;; (define-key ido-completion-map "\C-e" 'ido-edit-input)
  ;; (define-key ido-completion-map "\t" 'ido-complete) ;; complete partial
  ;; (define-key ido-completion-map "\C-j" 'ido-select-text)
  ;; (define-key ido-completion-map "\C-m" 'ido-exit-minibuffer)
  ;; (define-key ido-completion-map "?" 'ido-completion-help) ;; list completions
  ;; (define-key ido-completion-map [(control ? )] 'ido-restrict-to-matches)
  ;; (define-key ido-completion-map [(control ?@)] 'ido-restrict-to-matches)

  ;; ;; cycle through matches
  ;; (define-key ido-completion-map "\C-r" 'ido-prev-match)
  ;; (define-key ido-completion-map "\C-s" 'ido-next-match)
  ;; (define-key ido-completion-map [right] 'ido-next-match)
  ;; (define-key ido-completion-map [left] 'ido-prev-match)

  ;; ;; toggles
  ;; (define-key ido-completion-map "\C-t" 'ido-toggle-regexp) ;; same as in isearch
  ;; (define-key ido-completion-map "\C-p" 'ido-toggle-prefix)
  ;; (define-key ido-completion-map "\C-c" 'ido-toggle-case)
  ;; (define-key ido-completion-map "\C-a" 'ido-toggle-ignore)

  ;; ;; keys used in file and dir environment
  ;; (when (memq ido-cur-item '(file dir))
  ;;   (define-key ido-completion-map "\C-b" 'ido-enter-switch-buffer)
  ;;   (define-key ido-completion-map "\C-d" 'ido-enter-dired)
  ;;   (define-key ido-completion-map "\C-f" 'ido-fallback-command)

  ;;   ;; cycle among directories
  ;;   ;; use [left] and [right] for matching files
  ;;   (define-key ido-completion-map [down] 'ido-next-match-dir)
  ;;   (define-key ido-completion-map [up]   'ido-prev-match-dir)

  ;;   ;; backspace functions
  ;;   (define-key ido-completion-map [backspace] 'ido-delete-backward-updir)
  ;;   (define-key ido-completion-map "\d"        'ido-delete-backward-updir)
  ;;   (define-key ido-completion-map [(meta backspace)] 'ido-delete-backward-word-updir)
  ;;   (define-key ido-completion-map [(control backspace)] 'ido-up-directory)

  ;;   ;; I can't understand this
  ;;   (define-key ido-completion-map [(meta ?d)] 'ido-wide-find-dir)
  ;;   (define-key ido-completion-map [(meta ?f)] 'ido-wide-find-file)
  ;;   (define-key ido-completion-map [(meta ?k)] 'ido-forget-work-directory)
  ;;   (define-key ido-completion-map [(meta ?m)] 'ido-make-directory)

  ;;   (define-key ido-completion-map [(meta down)] 'ido-next-work-directory)
  ;;   (define-key ido-completion-map [(meta up)] 'ido-prev-work-directory)
  ;;   (define-key ido-completion-map [(meta left)] 'ido-prev-work-file)
  ;;   (define-key ido-completion-map [(meta right)] 'ido-next-work-file)

  ;;   ;; search in the directories
  ;;   ;; use C-_ to undo this
  ;;   (define-key ido-completion-map [(meta ?s)] 'ido-merge-work-directories)
  ;;   (define-key ido-completion-map [(control ?\_)] 'ido-undo-merge-work-directory)
  ;;   )

  ;; (when (eq ido-cur-item 'file)
  ;;   (define-key ido-completion-map "\C-k" 'ido-delete-file-at-head)
  ;;   (define-key ido-completion-map "\C-l" 'ido-toggle-literal)
  ;;   (define-key ido-completion-map "\C-o" 'ido-copy-current-word)
  ;;   (define-key ido-completion-map "\C-v" 'ido-toggle-vc)
  ;;   (define-key ido-completion-map "\C-w" 'ido-copy-current-file-name)
  ;;   )

  ;; (when (eq ido-cur-item 'buffer)
  ;;   (define-key ido-completion-map "\C-b" 'ido-fallback-command)
  ;;   (define-key ido-completion-map "\C-f" 'ido-enter-find-file)
  ;;   ;; (define-key ido-completion-map "\C-k" 'ido-kill-buffer-at-head)
  ;;   ))


;;}}}
