(set-keyboard-coding-system nil)
(global-set-key [delete] 'delete-char)
(setq require-final-newline t)
(display-time)
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key (kbd "C-0") 'delete-window)
(global-set-key (kbd "M-S-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-S-<down>") 'enlarge-window)
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
(defun copy-current-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (move-beginning-of-line 1)
)
(global-set-key (kbd "C-p") 'copy-current-line)
(global-set-key (kbd "C-z") 'undo)

;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
;(setq require-final-newline 'query)

;; I hate tabs!
(setq-default indent-tabs-mode nil)
(defun duplicate-line()
  (interactive)
  (move-to-left-margin)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
(global-set-key (kbd "C-x C-d") 'duplicate-line)

(global-set-key (kbd "C-t") 'indent-relative)

(setq x-select-enable-clipboard t)

(global-set-key (kbd "<C-tab>") 'other-window)
(global-set-key (kbd "C-n") 'other-window)

; this already works 
; (global-set-key (kbd "<C-home>") 'beginning-of-buffer)

;; Maximum colors
(setq font-lock-maximum-decoration t)

(setq frame-background-mode 'dark)

(setq auto-mode-alist '(("\\.ad[bs]\\'"   . ada-mode)
                        ("\\.awk\\'"      . awk-mode)
                        ("\\.lex\\'"      . c-mode)
                        ("\\.[cy]\\'"     . c++-mode)
                        ("\\.h\\'"        . c++-mode)
                        ("\\.hxx\\'"      . c++-mode)
                        ("\\.[CH]\\'"     . c++-mode)
                        ("\\.java\\'"     . java-mode)
                        ("\\.cc\\'"       . c++-mode)
                        ("\\.hh\\'"       . c++-mode)
                        ("\\.cxx\\'"      . c++-mode)
                        ("\\.cpp\\'"      . c++-mode)
                        ("\\.rc\\'"       . c++-mode) ;; resource files
                        ("\\.rcv\\'"      . c++-mode)
                        ("\\.m\\'"        . matlab-mode)
                        ("\\.p[lm]\\'"    . perl-mode)
                        ("\\.cgi\\'"      . perl-mode)
                        ("\\.f\\'"      . fortran-mode)
                        ("\\.F\\'"      . fortran-mode)
                        ("\\.f90\\'"      . f90-mode)
                        ("\\.F90\\'"      . f90-mode)
                        ("\\.el\\'"       . emacs-lisp-mode)
                        ("\\.emacs\\'"    . emacs-lisp-mode)
                        ("\\.tex\\'"      . LaTeX-mode)
                        ("\\.bib\\'"      . bibtex-mode)
                        ("[Mm]akefile\\'" . makefile-mode)
                        ("\\.mak\\'"      . makefile-mode)
                        ("\\[Mm]akefile.\\'" . makefile-mode)
                        ("\\.bat\\'"      . shell-script-mode)
                        ("\\.tar\\'"      . tar-mode)
                        ("\\.php\\'"     . php-mode)
                        ("\\.html\\'"     . html-mode)
                        ("\\.rb\\'"     . ruby-mode)
                        ("\\.jnlp\\'"     . html-mode)
                        ("\\.xml\\'"     . html-mode)
                        ("\\.pddl\\'"     . lisp-mode)
                        ("\\.css\\'"      . css-mode)
                        ("\\.py\\'"       . python-mode)
                        ("\\.sql\\'"       . sql-mode)
                        ("\\.yml\\'"      . yaml-mode)
                        ("\\.lisp\\'"     . lisp-mode)))


(global-set-key (kbd "C-0") 'delete-window)

(add-hook 'html-mode-hook
              (lambda ()
                (setq indent-line-function 'indent-relative)))

(add-hook 'html-mode-hook
        (lambda ()
          ;; Default indentation is usually 2 spaces, changing to 4.
          (set (make-local-variable 'sgml-basic-offset) 2)))

(defun indent-from-beginning ()
  (interactive)
  (back-to-indentation)
  (indent-for-tab-command)
  (next-line 1)
)

(global-set-key (kbd "C-S-t") 'indent-from-beginning)

(global-set-key (kbd "C-z") 'undo)
(setq truncate-partial-width-windows nil)
;;to set foreground color to white
(set-foreground-color "white")

;;to set background color to black
(set-background-color "black")


