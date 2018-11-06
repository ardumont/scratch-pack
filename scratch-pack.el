;;; scratch-pack.el --- A pack to tinker

;;; Commentary:

;;; Code:

(require 'htmlize)
(require 'google-this)

;; don't use mouse thing ever
(custom-set-variables '(use-dialog-box nil)
                      '(use-file-dialog nil))

(require 'hydra)
(defhydra hydra-zoom (global-map "C-c +")
    "zoom"
    ("g" text-scale-increase "in")
    ("l" text-scale-decrease "out"))

(defhydra hydra-vi (:pre (set-cursor-color "#40e0d0")

		    :post (progn
			    (set-cursor-color "#ffffff")
			    (message
			     "Thank you, come again.")))
  "vi"
  ("l" forward-char)
  ("h" backward-char)
  ("j" next-line)
  ("k" previous-line)
  ("q" nil "quit"))

(defhydra hydra-move
  (:body-pre (next-line))
  "move"
  ("n" next-line)
  ("p" previous-line)
  ("f" forward-char)
  ("b" backward-char)
  ("a" beginning-of-line)
  ("e" move-end-of-line)
  ("v" scroll-up-command)
  ;; Converting M-v to V here by analogy.
  ("V" scroll-down-command)
  ("l" recenter-top-bottom))

(provide 'scratch-pack)
;;; scratch-pack.el ends here
