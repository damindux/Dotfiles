;; Disable the welcome screen
(setq inhibit-startup-screen t)

;; Disable sounds
;; (set-message-beep 'silent)

;; Turn off some UI elements
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Set type of line numbering (global variable)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

;; Stop creating ~ files and #files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Set font
(set-frame-font "Iosevka NF 14" nil t)

;; Ido mode for command completion
(require 'ido)
    (ido-mode t)

;; Install Melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; List of packages you want to ensure are installed
(defvar my/packages
  '(org-download magit beacon org-superstar smex kanagawa-theme doom-modeline)
  "List of packages to ensure are installed at launch.")

;; Refresh package contents if needed and install missing packages
(unless package-archive-contents
  (package-refresh-contents))
(dolist (package my/packages)
  (unless (package-installed-p package)
    (package-install package)))

;; Load the theme
;;(add-to-list 'custom-theme-load-path "~/.config/emacs/everforest-theme")
;;(load-theme 'everforest-hard-dark t)
(load-theme 'monokai t)

;; Configure smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Set some modes
(electric-pair-mode 1)
(beacon-mode 1)
(doom-modeline-mode 1)

;; 2 pane layout default
(split-window-right)

;; Configure org superstar
(setq org-superstar-special-todo-items t)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

;; c-mode
(setq-default c-basic-offset 4
              c-default-style '((java-mode . "java")
                                (awk-mode . "awk")
                                (other . "bsd")))

(add-hook 'c-mode-hook (lambda ()
                         (interactive)
                         (c-toggle-comment-style -1)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(monokai-theme all-the-icons doom-modeline kanagawa-theme smex org-superstar beacon magit org-download)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
