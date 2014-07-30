(require 'package)
(setq package-user-dir "~/.emacs.d/elpa/")
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)


;;(setq org-src-fontify-natively t)
;; Include the latex-exporter

 (set-frame-parameter (selected-frame) 'alpha '(95 50))
 (add-to-list 'default-frame-alist '(alpha 95 50))

(require 'use-package)
(add-to-list 'load-path "/home/twebb/.emacs.d/anchored-transpose")
(require 'anchored-transpose)
(global-set-key (kbd "C-x t") 'anchored-transpose)

(use-package smex
   :commands (smex smex-major-mode-commands)
   :init
   (progn
     (smex-initialize)
     (global-set-key (kbd "M-x") 'smex)
     (global-set-key (kbd "M-X") 'smex-major-mode-commands)
      ;; This is your old M-x.
     (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)))

(use-package fastnav
  :init
  (progn
    (global-set-key (kbd "M-p") 'fastnav-sprint-forward)
    (global-set-key (kbd "M-P") 'fastnav-sprint-backward)))

(use-package multiple-cursors
  :init
  (progn
    (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
    (global-set-key (kbd "C-,") 'mc/mark-next-like-this)
    (global-set-key (kbd "C-.") 'mc/mark-previous-like-this)
    (global-set-key (kbd "C-c C-,") 'mc/mark-all-like-this)))
(use-package expand-region
  :init
  (progn
    (global-set-key (kbd "C-'") 'er/expand-region)))

(use-package god-mode
  :init
  (progn
    (global-set-key (kbd "C-h") 'god-local-mode)))

(use-package ace-jump-mode
  :commands ace-jump-mode
  :init
  (progn
    (global-set-key (kbd "C-SPC") 'ace-jump-word-mode)))
(require 'ido)

(add-to-list 'load-path "/home/twebb/.emacs.d/structured-haskell-mode/elisp")
(require 'shm)

(use-package haskell-mode
  :commands haskell-mode
  :init (progn (add-to-list 'auto-mode-alist '("\\.l?hs$" . haskell-mode))
               (add-to-list 'exec-path "/home/twebb/.cabal/bin")
               (add-hook 'haskell-mode-hook 'structured-haskell-mode))
  :config
  (progn
    (define-key haskell-mode-map (kbd "C-x C-d") nil)
    (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
    (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-file)
    (define-key haskell-mode-map (kbd "C-c C-b") 'haskell-interactive-switch)
    (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
    (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
    (define-key haskell-mode-map (kbd "C-c M-.") nil)
    (define-key haskell-mode-map (kbd "C-c C-d") nil)
    ;; (setq newline-and-indent 'f)
    (global-set-key (kbd "C-i") 'previous-line)))



(use-package flycheck
  :init
  (progn
    (add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))
  :config
  (progn
    (global-flycheck-mode)))

(use-package tramp
  :init
  (progn
    (setq tramp-default-method "ssh")))

(use-package projectile
  :init
  (progn
    (projectile-global-mode)))

(use-package powerline
  :init
  (progn
    (powerline-default-theme)))

(use-package linum
  :init
  (progn
    (global-linum-mode)
    (require 'linum-relative)))

(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(require 'auto-complete-config)
(ac-config-default)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-term-color-vector
   [unspecified "#282a2e" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#81a2be" "#e0e0e0"] t)
 '(custom-enabled-themes (quote (cyberpunk)))
 '(custom-safe-themes
   (quote
    ("f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "d8a4e35ee1b219ccb8a8c15cdfed687fcc9d467c9c8b9b93bd25229b026e4703" "5ace361b4ed7f0d1b0b7d72934446e1c61cded099db9f52125036f0a0bdea498" "7ed6913f96c43796aa524e9ae506b0a3a50bfca061eed73b66766d14adfa86d1" "e53cc4144192bb4e4ed10a3fa3e7442cae4c3d231df8822f6c02f1220a0d259a" "f41fd682a3cd1e16796068a2ca96e82cfd274e58b978156da0acce4d56f2b0d5" "8b231ba3e5f61c2bb1bc3a2d84cbd16ea17ca13395653566d4dfbb11feaf8567" "9bac44c2b4dfbb723906b8c491ec06801feb57aa60448d047dbfdbd1a8650897" default)))
 '(delete-selection-mode t)
 '(global-linum-mode t)
 '(haskell-process-type (quote cabal-repl))
 '(inhibit-startup-screen t)
 '(linum-relative-current-symbol "->")
 '(shm-auto-insert-skeletons nil)
 '(shm-type-info-fallback-to-ghci t)
 '(shm-use-hdevtools t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#231f20" :foreground "#d9d8d8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "unknown" :family "Droid Sans Mono"))))
 '(shm-current-face ((t (:background "blue" :foreground "white"))))
 '(variable-pitch ((t (:family "Droid Sans Mono")))))
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq-default indent-tabs-mode nil)


;; Key Bindings!
(setq local-function-key-map (delq'(kp-tab . [9]) local-function-key-map))
(global-set-key (kbd "C-e") 'next-line)
(global-set-key (kbd "C-i") 'previous-line)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-c ,") 'ido-find-file-in-dir)
(global-set-key (kbd "C-?") 'help-command)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((haskell .t)
   (R . t)))
(global-set-key (kbd "C-$") 'end-of-line)
;; (global-set-key (kbd "C-b") 'beginning-of-line-text)
(global-set-key (kbd "C-h") 'god-local-mode)

(global-set-key (kbd "M-h") 'backward-kill-word)

(put 'kill-ring-save 'interactive-form
  '(interactive
     (if (use-region-p)
         (list (region-beginning) (region-end))
       (list (line-beginning-position) (line-beginning-position 2)))))

(put 'kill-region 'interactive-form
  '(interactive
     (if (use-region-p)
         (list (region-beginning) (region-end))
       (list (line-beginning-position) (line-beginning-position 2)))))
;; Behave like vi's o command
(defun open-next-line (arg)
  "Move to the next line and then opens a line.
    See also `newline-and-indent'."
  (interactive "p")
  (end-of-line)
  (open-line arg)
  (next-line 1)
  ;; (when newline-and-indent
  ;;   (indent-according-to-mode))
  )
(global-set-key (kbd "C-o") 'open-next-line)

;; Behave like vi's O command
(defun open-previous-line (arg)
  "Open a new line before the current one.
     See also `newline-and-indent'."
  (interactive "p")
  (beginning-of-line)
  (open-line arg)
  ;; (when newline-and-indent
  ;;     (indent-according-to-mode))
  )

(global-set-key (kbd "M-o") 'open-previous-line)

;; Autoindent open-*-lines
;; (defvar newline-and-indent 0
  ;"Modify the behavior of the open-*-line functions to cause them to autoindent.")
(require 'ox-latex)
(require 'ox-beamer)
(add-to-list 'org-latex-packages-alist '("" "minted"))
;; Tell the latex export to use the minted package for source
;; code coloration.

(setq org-latex-listings 'minted)


(setq org-latex-pdf-process
      '("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
