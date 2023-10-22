;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "nope"
      user-mail-address "none@given.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:

;; Warm themes from darker to lighter
;; (setq doom-theme 'doom-manegarm) ;; like a tree
;; (setq doom-theme 'doom-peacock) ;; gruvbox with less colors
;; (setq doom-theme 'doom-solarized-light) ;; creamy bg, bright saturated fg

;; Cold themes from darker to lighter
;; (setq doom-theme 'doom-one) ;; the default, neutral
(setq doom-theme 'doom-one) ;; icy and cold

;; Might delete due to ugly org mode colors...
;; (setq doom-theme 'doom-gruvbox) ;; art cabin in the woods
;; (setq doom-theme 'doom-horizon) ;; alien planet nightscape
;; (setq doom-theme 'doom-moonlight) ;; exe internet @ night

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; Vertical Scroll
(setq scroll-step 1)
(setq scroll-margin 10)
(setq scroll-conservatively 101)
(setq scroll-up-aggressively 0.01)
(setq scroll-down-aggressively 0.01)
;; (setq auto-window-vscroll nil)
;; (setq fast-but-imprecise-scrolling nil)
;; (setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
;; (setq mouse-wheel-progressive-speed nil)
;; Horizontal Scroll
(setq hscroll-step 1)
(setq hscroll-margin 1)

;; Evil Mode Customizations to match my .vimrc!

;; Exit insert mode after creating a new line above or below the current line.
;; Pressing o (lowercase) opens a new line below the cursor, and moves the cursor down.
;; Pressing O (uppercase) opens a new line below the current, and keeps the cursor's position.
(evil-define-key 'normal global-map (kbd "o") (lambda () (interactive) (end-of-line) (open-line 1) (evil-normal-state) (next-line)))
(evil-define-key 'normal global-map (kbd "O") (lambda () (interactive) (beginning-of-line) (open-line 1) (evil-normal-state)))

;; Add pretty symbols for org-mode
(setq
    org-superstar-headline-bullets-list '("⁖" "✿" "◉" "○" "✸")
)

;; Disable company-mode in org-mode, I only need 'intellisense' popups when working with code :)
(setq company-global-modes '(not text-mode org-mode))
