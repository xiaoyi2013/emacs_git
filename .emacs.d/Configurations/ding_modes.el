;; this file contains all modes


(setq bookmark-save-flag 1) ;;enable save bookmark to a file every time you change

(add-hook 'text-mode-hooks 'auto-fill-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; server-mode
;; date: 2013-01-02
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(linum-mode t) ;; enable line number

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; ruby-mode
;; date: 2012-12-29
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Mac keyboard modifier key
;;(setq mac-command-modifier 'meta)
;;(setq mac-option-modifier 'alt)
;;(setq mac-control-modifier 'alt)

;; ding modified
;; (setq ns-command-modifier 'meta)
;; (setq ns-function-modifier 'super)

;; (setq make-backup-files nil)
;; (setq auto-save-default nil)
;; (setq-default tab-width 2)
;; (setq-default indent-tabs-mode nil)
;; (setq inhibit-startup-message t)
;; (setq visible-bell t)

(fset 'yes-or-no-p 'y-or-n-p)




;; Textmate mode
(add-to-list 'load-path "~/.emacs.d/Extensions/rails/plugins")

;; (require 'textmate)
;;(textmate-mode)
(require 'haml-mode)
(require 'sass-mode)
(require 'coffee-mode)

;; ;;cucumber feature mode
(add-to-list 'load-path "~/.emacs.d/Extensions/rails/plugins/cucumber")
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

; (require 'rvm)
;; (rvm-use-default) ;; use rvm's default ruby for the current Emacs session
;; (require 'rspec-mode)


(add-to-list 'load-path "~/.emacs.d/Extensions/yasnippet")
(require 'yasnippet)

(setq yas/prompt-functions '(yas/dropdown-prompt yas/x-prompt yas/ido-prompt yas/completing-prompt))
(yas-global-mode 1)


;; Files Types

;;coffee
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;;rails
(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))

;; Yaml
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))
;; css
(add-to-list 'auto-mode-alist '("\\.css.scss$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.css.sass$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; auto-complete
;; date 2013-01-01
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/Extensions/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             "~/.emacs.d/Extensions/auto-complete/dict")
(ac-config-default)




;; (setq ac-quick-help-prefer-pos-tip t) ;; default is t
;; (setq ac-use-quick-help t)
;; (setq ac-quick-help-delay 1.0)
;; (setq ac-dwim t)

;; (setq ac-trigger-commands
;;       (cons 'backward-delete-char-untabify ac-trigger-commands))

;; (setq ac-fuzzy-enable t)

;; (define-key ac-complete-mode-map "\t" 'ac-complete)
;; (define-key ac-complete-mode-map "\r" nil)

;; ;; auto-complete key bindings
;; (global-set-key [(control tab)] 'auto-complete)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; rails plugins
;; date: 2013-01-01
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (add-to-list 'load-path "~/.emacs.d/Extensions/rails/rails")
;; (require 'rails)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; git-emacs
;; date: 2013-01-19
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;git-emacs
(add-to-list 'load-path "~/.emacs.d/Extensions/git-emacs/")
(require 'git-emacs)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; ruby-mode
;; support ruby, the latest version
;; 2013-04-23
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/Extensions/rails/ruby")
(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))


(defun ruby-insert-end ()
     (interactive)
     (insert "end")
     (ruby-indent-line t)
     (end-of-line))



; adding ruby electric
;;(require 'ruby-electric)
;; (setq open-paren-in-column-0-is-defun-start nil)
(add-hook 'ruby-electric-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))
(add-hook 'ruby-mode-hook
          (lambda()
            ;; (define-key ruby-mode-map "\C-m" 'newline-and-indent)
            (ruby-electric-mode t)))

(dolist (hook '(
			 haml-mode-hook))
   (add-hook hook (lambda () (ruby-electric-mode t))))


(defun inf-ruby-keys ()
  "Set local key defs for inf-ruby in ruby-mode"
  (define-key ruby-mode-map "\M-\C-x" 'ruby-send-definition)
                                        ;  (define-key ruby-mode-map "\C-x\C-e" 'ruby-send-last-sexp)
  (define-key ruby-mode-map "\C-c\C-b" 'ruby-send-block)
  (define-key ruby-mode-map "\C-c\M-b" 'ruby-send-block-and-go)
  (define-key ruby-mode-map "\C-c\C-x" 'ruby-send-definition)
  (define-key ruby-mode-map "\C-c\M-x" 'ruby-send-definition-and-go)
  (define-key ruby-mode-map "\C-c\C-r" 'ruby-send-region)
  (define-key ruby-mode-map "\C-c\M-r" 'ruby-send-region-and-go)
  (define-key ruby-mode-map "\C-c\C-z" 'switch-to-ruby)
  (define-key ruby-mode-map "\C-c\C-l" 'ruby-load-file)
  (define-key ruby-mode-map "\C-c\C-s" 'run-ruby)
  )


                                               
(autoload 'run-ruby "inf-ruby"
      "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
       "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
          '(lambda ()
             (inf-ruby-setup-keybindings)
))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Rinari
;; find rails file in project
;; 2013-04-22
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Interactively Do Things (highly recommended, but not strictly required)
;; (require 'ido)
;; (ido-mode t)       ;; this is included in ding_extensions

;; Rinari
(add-to-list 'load-path "~/.emacs.d/Extensions/rails/rinari/")
(require 'rinari)
(global-rinari-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; emacs-rails
;; minior mode for editing RuyOnRails code
;; 2013-04-23
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(setq load-path (cons (expand-file-name "~/.emacs.d/Extensions/rails/emacs-rails") load-path))
;;(add-to-list 'load-path "~/.emacs.d/Extensions/rails/emacs-rails")
;;(require 'rails-autoload)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; nXhtml-mode
;; 2013-05-02
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (load "~/.emacs.d/Extensions/rails/nxhtml/autostart.el")

;; (setq
;;  nxhtml-global-minor-mode t
;;  mumamo-chunk-coloring 'submode-colored
;;  nxhtml-skip-welcome t
;;  indent-region-mode t
;;  rng-nxml-auto-validate-flag nil
;;  nxml-degraded t)
;; (add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo))

;; Workaround the annoying warnings:
;; Warning (mumamo-per-buffer-local-vars):
;; Already 'permanent-local t: buffer-file-name
;; (when (and (equal emacs-major-version 24)
;; (equal emacs-minor-version 2))
;; (eval-after-load "mumamo"
;; '(setq mumamo-per-buffer-local-vars
;; (delq 'buffer-file-name mumamo-per-buffer-local-vars))))


;;  edit rhtml files without using multiple major modes
;; (add-to-list 'load-path "~/.emacs.d/Extensions/rails/rhtml")
;; (require 'rhtml-mode)
;; (add-hook 'rhtml-mode-hook
;;  	  (lambda () (rinari-launch)))

;; MuMaMo-Mode for rhtml files
;;(add-to-list 'load-path "~/.emacs.d/Extensions/rails/nxhtml/util")
;; (require 'mumamo-fun)
;; (setq mumamo-chunk-coloring 'submode-colored)
;; (add-to-list 'auto-mode-alist '("\\.rhtml\\'" . eruby-html-mumamo))
;; (add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-html-mumamo))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; rainbow mode
;; 2013-05-02
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/Extensions/rails/rainbow")
(require 'rainbow-mode)
(dolist (hook '(css-mode-hook
			 html-mode-hook))
  (add-hook hook (lambda () (rainbow-mode t))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; slim mode for emacs
;; 2013-05-06
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/Extensions/rails/slim")
(require 'slim-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; 2013-05-23
;; pasted lines are automatically indented
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(dolist (command '(yank yank-pop))
  (eval `(defadvice ,command (after indent-region activate)
           (and (not current-prefix-arg)
                (member major-mode '(emacs-lisp-mode lisp-mode
                                                     clojure-mode    scheme-mode
                                                     haskell-mode    ruby-mode
                                                     rspec-mode      python-mode
                                                     c-mode          c++-mode
                                                     objc-mode       latex-mode
                                                     plain-tex-mode))
                (let ((mark-even-if-inactive transient-mark-mode))
                  (indent-region (region-beginning) (region-end) nil))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; enable electric-pair-mode
;;2013-05-23
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (fboundp 'electric-pair-mode)
  (electric-pair-mode))

;;(electric-pair-mode +1)


(defun electric-pair ()
  "If at end of line, insert character pair without surrounding spaces.
    Otherwise, just insert the typed character."
  (interactive)
  (if (eolp) (let (parens-require-spaces) (insert-pair)) (self-insert-command 1)))

(add-hook 'html-mode-hook
          (lambda ()
            (define-key html-mode-map "\'" 'electric-pair)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;GTD
;;2013-05-31
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; for agenda
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(setq org-agenda-files (list "~/.emacs.d/ding/GTD/gtd.org"
                             "~/.emacs.d/ding/GTD/journal.org" ))
(setq org-log-done t)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/.emacs.d/ding/journal/gtd.org" "沙盒")
         "* TODO %?\n %i\n %a")
        ("j" "Journal" entry (file+datetree "~/.emacs.d/ding/journal/journal.org")
         "*  %?\nEntered on %U\n %i\n %a")))

(setq org-agenda-include-diary t)
(setq org-agenda-ndays 1)

;; used by org-clock-sum-today-by-tags
(defun filter-by-tags ()
  (let ((head-tags (org-get-tags-at)))
    (member current-tag head-tags)))

(defun org-clock-sum-today-by-tags (timerange &optional tstart tend noinsert)
  (interactive "P")
  (let* ((timerange-numeric-value (prefix-numeric-value timerange))
         (files (org-add-archive-files (org-agenda-files)))
         (include-tags '("娱乐" "计算机" "心学" "其它" "公务员"))
         (tags-time-alist (mapcar (lambda (tag) `(,tag . 0)) include-tags))
         (output-string "")
         (tstart (or tstart
                     (and timerange (equal timerange-numeric-value 4) (- (org-time-today) 86400))
                     (and timerange (equal timerange-numeric-value 16) (org-read-date nil nil nil "Start Date/Time:"))
                     (org-time-today)))
         (tend (or tend
                   (and timerange (equal timerange-numeric-value 16) (org-read-date nil nil nil "End Date/Time:"))
                   (+ tstart 86400)))
         h m file item prompt donesomething)
    (while (setq file (pop files))
      (setq org-agenda-buffer (if (file-exists-p file)
                                  (org-get-agenda-file-buffer file)
                                (error "No such file %s" file)))
      (with-current-buffer org-agenda-buffer
        (dolist (current-tag include-tags)
          (org-clock-sum tstart tend 'filter-by-tags)
          (setcdr (assoc current-tag tags-time-alist)
                  (+ org-clock-file-total-minutes (cdr (assoc current-tag tags-time-alist)))))))
    (while (setq item (pop tags-time-alist))
      (unless (equal (cdr item) 0)
        (setq donesomething t)
        (setq h (/ (cdr item) 60)
              m (- (cdr item) (* 60 h)))
        (setq output-string (concat output-string (format "[-%s-] %.2d:%.2d\n" (car item) h m)))))
    (unless donesomething
      (setq output-string (concat output-string "[-Nothing-] Done nothing!!!\n")))
    (unless noinsert
      (insert output-string))
    output-string))

(org-babel-do-load-languages
 'org-babel-load-languages '((emacs-lisp . t)))
