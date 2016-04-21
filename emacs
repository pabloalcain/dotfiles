(require 'package)
(add-to-list 'package-archives '("elpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; shift+arrow to cycle through windows
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; line and columns
(setq-default line-number-mode t)
(setq-default column-number-mode t)
(global-linum-mode 1)

;; tab configurations
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 2)
(setq-default python-indent-offset 2)



;; ipython as interpreter
(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython"))

;; powerline
(require 'powerline)

;; moe-theme
(require 'moe-theme)
(moe-dark)
(powerline-moe-theme)

;; flycheck
(require 'flycheck)
(defun flycheck-c-std-99 ()
  (setq flycheck-gcc-language-standard "gnu99"))
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'c-mode-hook #'flycheck-c-std-99)

;; auto-complete
(require 'auto-complete)
(ac-config-default)

;; jedi
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)

;; markdown
(require 'markdown-mode)

;; auctex
(require 'tex)

;; org-mode
(require 'org-bullets)
(require 'org-autolist)

(add-hook 'org-mode-hook (lambda() (org-bullets-mode 1)))
(add-hook 'org-mode-hook (lambda() (org-autolist-mode)))
(setq org-mode-fontify-natively t)
