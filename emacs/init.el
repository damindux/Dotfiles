(setq inhibit-startup-screen t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

(setq make-backup-files nil)
(setq auto-save-default nil)

(set-frame-font "AnonymicePro Nerd Font 13" nil t)
(setq tab-width 4)

(require 'ido)
    (ido-mode t)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.config/emacs/themes/")
(load-theme 'automata t)

;; set transparency
;;(set-frame-parameter (selected-frame) 'alpha '(95 95))
;;(add-to-list 'default-frame-alist '(alpha 95 95))

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "C-x g") 'magit-status)

(electric-pair-mode 1)

(setq org-superstar-special-todo-items t)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

;; c-mode
(setq-default c-basic-offset 4
              c-default-style '((java-mode . "java")
                                (awk-mode . "awk")
                                (other . "linux")))

(add-hook 'c-mode-hook (lambda ()
                         (interactive)
                         (c-toggle-comment-style -1)))

;; clojure-mode
(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(go-mode cmake-mode smex org-download crystal-mode clojure-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
