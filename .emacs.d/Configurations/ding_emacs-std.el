;; this file is emacs standard elisp file.
 ;; highlighted the active region
(transient-mark-mode t)
 (if (equal window-system nil)
     (menu-bar-mode nil))

(setq inhibit-startup-message t)  ;; close startup message

;;(resize-minibuffer-mode)  ;;resize the minibuffer dynamically to use enough space t show all its content at any give time.

;;(setq special-display-buffer-names '("*Help*" "*Apropos*" "*compilations*" "*grep*" "*igrep*")) ;;enable the buffer "Help" "grep" opened in a dedicated frame
(setq search-whitespace-regexp "[ \t\r\n]+") ;;make space can be interpred as a space,a tabulator or a newline in incremental search

(show-paren-mode t)
(setq show-paren-sytle 'parentheses) ;; show matching parentheses
(setq blink-matching-paren t) ;; showing the text around open parenthese in the minibuffer when your typing the closing parentheses and the open parenthese is outside the visible part of the buffer
(setq visible-bell t) ;; to blink to indicate the error

(setq compilation-scroll-output t) ;; enable to automatically scroll to the end of new output in the *compilation* buffer.
(put 'set-goal-column 'disabled nil)

;;(setq rmail-primary-inbox-list '("po:xsding2015@gmail.com"))

;;(setq epop3-mail-debug t)

;;(setq guns-select-method '(nntp "news.yaako.com")) ;; set the folder for mail

(set-language-environment 'UTF-8)
(setq-default pathname-coding-system 'utf-8)
(setq file-name-coding-system 'utf-8)

(setq default-buffer-file-coding-system 'utf-8)  ;; set the default text coding system

(prefer-coding-system 'cp950)
(prefer-coding-system 'gb2312)
(prefer-coding-system 'cp936)
(prefer-coding-system 'gb18030)
;(prefer-coding-system 'utf-16le-with-signature)
(prefer-coding-system 'utf-16)
(prefer-coding-system 'utf-8) ;;priority order for recognizing coding systems when reading files

(global-linum-mode t) ;; display the line number in the left margin.
;;(global-visual-line-mode 1)  ;; enable line wrap


;; make the long sentence seen in the next line
(setq-default truncate-partial-width-windows nil)
;;(setq-default word-wrap t)

;; line wrap when at the edage of the window
(add-hook 'org-mode-hook
          (lambda () (setq truncate-lines nil)))


;; (custom-set-faces
;; '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 144 :width normal)))))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(column-number-mode t)

(define-key global-map (kbd "RET") 'newline-and-indent)
;; (defun set-newline-and-indent ()
;;   (local-set-key (kbd "RET") 'newline-and-indent))
;; (add-hook 'html-mode-hook 'set-newline-and-indent)
;; (add-hook 'html-mode-hook '(lambda()
;;   (local-set-key (kbd "RET") 'newline-and-indent)))
;; (add-hook 'html-mode-hook
;;   (lambda() (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))

                             
(setq make-backup-files nil)
(setq auto-save-default nil)

  ;; default Latin font (e.g. Consolas)
;;(when (eq system-type 'darwin)

  ;; default Latin font (e.g. Consolas)
  ;;(set-face-attribute 'default nil :family "Courier")

  ;; default font size (point * 10)
  ;;
  ;; WARNING!  Depending on the default font,
  ;; if the size is not supported very well, the frame will be clipped
  ;; so that the beginning of the buffer may not be visible correctly. 
 ;; (set-face-attribute 'default nil :height 165) 

  ;; use specific font for Korean charset.
  ;; if you want to use different font size for specific charset,
  ;; add :size POINT-SIZE in the font-spec.

  ;; Chinese Font

	;; (dolist (charset '(kana han symbol cjk-misc bopomofo))
	;; 	(set-fontset-font (frame-parameter nil 'font)
	;; 										charset
	;; 										(font-spec :family "HiraginoSansGB-W3" :size 14)))

  ;;(set-fontset-font t 'kana han symbol cjk-misc bopomofo (font-spec :name "HiraginoSansGB-W3" :size 14))	
  ;; you may want to add different for other charset in this way.
;;) ;;;;
;;

;;
;; Chinese support
(require 'unicad)

;; set Chinese font, or the when showing Italic Chinese characters, only rectangle block shown
(set-fontset-font
 (frame-parameter nil 'font)
 'han
 (font-spec :family "Hiragino Sans GB" ))

;; (set-default-font
;;  "-apple-Hiragino_Sans_GB-medium-normal-normal-*-14-*-*-*-p-0-iso10646-1")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(global-font-lock-mode t nil (font-lock))
 '(kill-whole-line nil nil nil "ding edit that it can kill whole line")
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans" :foundry "unknown" :slant normal :weight normal :height 144 :width normal)))))

(tool-bar-mode -1)
