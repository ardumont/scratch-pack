(install-packs '(exec-path-from-shell
                 ;; some playtime with graphviz
                 graphviz-dot-mode
                 fold-dwim
                 htmlize))

;; setup the path
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; some text/font/color tweaks

(setq-default fill-column 120)
(set-face-background 'default "black")

(set-language-environment "UTF-8")
(blink-cursor-mode 1)

;; C-x C-l to lower case ; C-x C-u to upper case

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; To dynamically extend emacs via macros

(defun save-macro (name)
  "save a macro. Take a name as argument and save the last
     defined macro under this name at the end of your .emacs"
     (interactive "SName of the macro :")  ; ask for the name of the macro
     (kmacro-name-last-macro name)         ; use this name for the macro
     (find-file init-file)            ; open ~/.emacs or other user init file
     (goto-char (point-max))               ; go to the end of the .emacs
     (newline)                             ; insert a newline
     (insert-kbd-macro name)               ; copy the macro
     (newline)                             ; insert a newline
     (switch-to-buffer nil))               ; return to the initial buffer

;; Load bindings config
(live-load-config-file "bindings.el")
