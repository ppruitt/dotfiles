;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;     emacs initialization file
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(set-default-font "Dejavu Sans Mono-8")

(require 'cc-mode)
(global-font-lock-mode 1)

;; Save screen real-estate
(if (eq window-system 'x)
    (progn
      (tool-bar-mode 'nil)
      (menu-bar-mode 'nil)
      (set-default-font "7x13")))

;; Put backup files in one place
(setq backup-by-copying t)
(setq backup-directory-alist '(("." . "~/bkup")))

(column-number-mode t)
(line-number-mode t)
(setq-default indent-tabs-mode 'nil)

;; Don't put a message in the scratch buffer
(setq initial-scratch-message nil)
(setq inhibit-startup-screen  t)

(defun my-c-mode-common-hook ()
  (c-set-style "bsd")
  ;; 4 space indent, spaces for tabs
  (setq tab-width 4)
  (setq c-basic-offset tab-width)
  (setq indent-tabs-mode 'nil))

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(setq auto-mode-alist (cons '("\\.m$" . octave-mode) auto-mode-alist))

(setq grep-find-command "find . \\( -type d -name .svn  -prune \\) -o \\( -type f -print0 \\) | xargs -0 -e grep -nH -e ")


;; Org-mode settings
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; VHDL mode settings
(setq vhdl-electric-mode nil)
(setq vhdl-basic-offset 4)
