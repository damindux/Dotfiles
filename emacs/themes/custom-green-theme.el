(deftheme custom-green
  "A custom theme based on the specified colors.")

(let ((background "#2E6357")
      (foreground "#FFFFFF")
      (highlight  "#6BB56C"))

  (custom-theme-set-faces
   'custom-green

   ;; Basic faces
   `(default ((t (:background ,background :foreground ,foreground))))
   `(cursor ((t (:background ,highlight))))
   `(fringe ((t (:background ,background))))
   `(region ((t (:background ,highlight :foreground ,foreground))))
   `(highlight ((t (:background ,highlight :foreground ,foreground))))
   `(success ((t (:foreground ,highlight))))
   `(warning ((t (:foreground ,highlight))))
   `(error ((t (:foreground ,highlight))))
   
   ;; Font lock faces
   `(font-lock-builtin-face ((t (:foreground ,highlight))))
   `(font-lock-comment-face ((t (:foreground ,highlight))))
   `(font-lock-constant-face ((t (:foreground ,highlight))))
   `(font-lock-function-name-face ((t (:foreground ,highlight))))
   `(font-lock-keyword-face ((t (:foreground ,highlight))))
   `(font-lock-string-face ((t (:foreground ,highlight))))
   `(font-lock-type-face ((t (:foreground ,highlight))))
   `(font-lock-variable-name-face ((t (:foreground ,highlight))))
   `(font-lock-warning-face ((t (:foreground ,highlight))))
   
   ;; Mode line faces
   `(mode-line ((t (:background ,highlight :foreground ,foreground))))
   `(mode-line-inactive ((t (:background ,background :foreground ,highlight))))
   
   ;; Minibuffer and prompt
   `(minibuffer-prompt ((t (:foreground ,highlight))))
   
   ;; Link faces
   `(link ((t (:foreground ,highlight :underline t))))
   `(link-visited ((t (:foreground ,highlight :underline t))))
   
   ;; Additional custom faces can be added here
   ))

(provide-theme 'custom-green)
