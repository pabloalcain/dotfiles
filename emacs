(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; shift+arrow to cycle through windows
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; moe-theme
(require 'moe-theme)
(moe-dark)

;; ipython as interpreter
(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython"))

;; powerline
(require 'powerline)
(powerline-default-theme)

;; flycheck
(require 'flycheck)
(defun flycheck-c-std-99 ()
  (setq flycheck-gcc-language-standard "gnu99"))
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'c-mode-hook #'flycheck-c-std-99)

;; jedi
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)

;; markdown
(require 'markdown-mode)

;; auctex
(require 'tex)

;; python configurations
(setq python-indent-offset 2)
