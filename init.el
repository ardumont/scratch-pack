(install-packs '(;; some playtime with graphviz
                 graphviz-dot-mode
                 htmlize))

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
