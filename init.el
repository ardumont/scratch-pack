(install-packs '(;; some playtime with graphviz
                 graphviz-dot-mode
                 htmlize
                 auto-complete))

(require 'auto-complete)

;; delay before displaying the help message
(setq ac-quick-help-delay 0.3)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)

(setq el-get-verbose t)

(el-get-install "goto-last-change")

;; personal recipes
(setq el-get-sources
      '((:name   goto-last-change
         :before (global-set-key (kbd "C-x C-/") 'goto-last-change))))

(el-get 'sync)

(live-load-config-file "bindings.el")
