;;; yellowbeans-theme.el --- Yellowbeans color theme created by 'gremble0' ported to Emacs -*- lexical-binding: t; -*-
;;
;; Copyright (c) 2023-2026 Herman Stornes
;; Copyright (C) 2026 bvtuhan
;;
;; Author: bvtuhan <jjackson.stormm@gmail.com>
;; Maintainer: bvtuhan <jjackson.stormm@gmail.com>
;; Version: 0.0.2
;; Keywords: theme, dark, yellow, simple
;; Homepage: https://github.com/bvtuhan/yellowbeans-theme-emacs
;; Package-Requires: ((emacs "29.1"))
;; SPDX-License-Identifier: MIT
;;
;; This file is not part of GNU Emacs.
;;
;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.
;;
;;; Commentary:
;;
;;  Simple color theme featuring a dark background with yellow accents.
;;  Originally created by 'gremble0' as a Neovim color scheme, adapted
;;  for Emacs. Currently includes core Emacs faces, syntax highlighting,
;;  org-mode, markdown-mode (more in future hopefully). Contributions
;;  are welcome.
;;
;;; Code:

(deftheme yellowbeans
  "An Emacs port of gramble0's Yellowbeans theme.")

;; define color palette
(let ((yellowbeans-bg "#151515")
      (yellowbeans-fg "#cccccc")
      (yellowbeans-black-1 "#101010")
      (yellowbeans-black-2 "#1c1c1c")
      (yellowbeans-black-4 "#282828")
      (yellowbeans-black-5 "#303030")
      (yellowbeans-gray-1 "#333333")
      (yellowbeans-gray-2 "#606060")
      (yellowbeans-gray-3 "#777777")
      (yellowbeans-white-1 "#aaaaaa")
      (yellowbeans-white-2 "#888888")
      (yellowbeans-gold-yellow "#e1b655")
      (yellowbeans-dark-yellow "#d4aa55")
      (yellowbeans-olive-green "#9aae6b")
      (yellowbeans-moss-green "#7c9081")
      (yellowbeans-morningglory-blue "#8fbfdc")
      (yellowbeans-shipcove-blue "#8197bf")
      (yellowbeans-sky-blue "#7187bf")
      (yellowbeans-perano-blue "#b0d0f0")
      (yellowbeans-hoki-blue "#526779")
      (yellowbeans-dove-blue "#a9b1d6")
      (yellowbeans-lavender-purple "#b6a6ff")
      (yellowbeans-bad "#f22b2b")
      (yellowbeans-bad-bg "#503030")
      (yellowbeans-neutral "#ffa500")
      (yellowbeans-neutral-bg "#6B572A")
      (yellowbeans-good "#b3e27c")
      (yellowbeans-good-bg "#2e3127"))

  ;; background hard code
  (custom-theme-set-variables 'yellowbeans '(frame-background-mode 'dark))

  ;; styling
  (custom-theme-set-faces
   'yellowbeans

   ;; core faces
   `(default ((t (:foreground ,yellowbeans-fg :background ,yellowbeans-bg)))) ;; normal text and the background
   `(cursor ((t (:background ,yellowbeans-fg :foreground ,yellowbeans-bg)))) ;; cursor color opposite to default
   `(region ((t (:background ,yellowbeans-gray-1)))) ;; visual mode and selection
   `(line-number ((t (:foreground ,yellowbeans-gray-2))))
   `(line-number-current-line ((t (:foreground ,yellowbeans-fg :weight bold))))
   `(show-paren-match ((t (:foreground ,yellowbeans-gold-yellow :weight bold))))
   `(show-paren-mismatch ((t (:foreground ,yellowbeans-bad :weight bold))))
   `(isearch ((t (:background ,yellowbeans-gray-1 :foreground ,yellowbeans-fg :weight bold))))
   `(lazy-highlight ((t (:background ,yellowbeans-black-4))))
   `(hl-line ((t (:background ,yellowbeans-black-2 :extend t))))
   `(mode-line ((t (:background ,yellowbeans-black-2 :foreground ,yellowbeans-fg :box nil))))
   `(mode-line-inactive ((t (:background ,yellowbeans-black-2 :foreground ,yellowbeans-white-1 :box nil))))
   `(fringe ((t (:background ,yellowbeans-bg :foreground ,yellowbeans-gray-2))))

   ;; syntax highlighting
   `(font-lock-builtin-face ((t (:foreground ,yellowbeans-fg :weight bold))))
   `(font-lock-comment-face ((t (:foreground ,yellowbeans-gray-2 :slant italic))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,yellowbeans-gray-2 :slant italic))))
   `(font-lock-string-face ((t (:foreground ,yellowbeans-olive-green))))
   `(font-lock-doc-face ((t (:foreground ,yellowbeans-gray-2 :slant italic))))
   `(font-lock-doc-markup-face ((t (:foreground ,yellowbeans-gray-2 :slant italic))))
   `(font-lock-keyword-face ((t (:foreground ,yellowbeans-gold-yellow :weight bold))))
   `(font-lock-function-name-face ((t (:foreground ,yellowbeans-perano-blue))))
   `(font-lock-variable-name-face ((t (:foreground ,yellowbeans-lavender-purple))))
   `(font-lock-type-face ((t (:foreground ,yellowbeans-shipcove-blue))))
   `(font-lock-constant-face ((t (:foreground ,yellowbeans-moss-green))))
   `(font-lock-builtin-face ((t (:foreground ,yellowbeans-sky-blue))))
   `(font-lock-preprocessor-face ((t (:foreground ,yellowbeans-moss-green))))
   `(font-lock-preprocessor-face ((t (:foreground ,yellowbeans-moss-green))))
   `(font-lock-warning-face ((t (:foreground ,yellowbeans-neutral))))
   `(font-lock-negation-char-face ((t (:foreground ,yellowbeans-gold-yellow :weight bold))))

   ;; flymake copied from https://github.com/rexim/gruber-darker-theme/blob/master/gruber-darker-theme.el
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,yellowbeans-bad)
        :foreground unspecified
        :background unspecified
        :inherit unspecified))
      (t (:foreground ,yellowbeans-bad :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,yellowbeans-neutral)
        :foreground unspecified
        :background unspecified
        :inherit unspecified))
      (t (:foreground ,yellowbeans-neutral :weight bold :underline t))))
   `(flymake-infoline ;; does not exist ? See https://github.com/search?q=repo%3Aflymake%2Femacs-flymake+defface&type=code
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,yellowbeans-good)
        :foreground unspecified
        :background unspecified
        :inherit unspecified))
      (t (:foreground ,yellowbeans-good :weight bold :underline t))))

   ;; flyspell copied from https://github.com/rexim/gruber-darker-theme/blob/master/gruber-darker-theme.el
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,yellowbeans-bad) :inherit unspecified))
      (t (:foreground ,yellowbeans-bad :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,yellowbeans-neutral) :inherit unspecified))
      (t (:foreground ,yellowbeans-neutral :weight bold :underline t))))

   ;; org
   `(org-document-title ((t (:foreground ,yellowbeans-gold-yellow :weight bold :height 1.4))))
   `(org-level-1 ((t (:foreground ,yellowbeans-gold-yellow :weight bold :height 1.2))))
   `(org-level-2 ((t (:foreground ,yellowbeans-gold-yellow :weight bold :height 1.1))))
   `(org-level-3 ((t (:foreground ,yellowbeans-gold-yellow :weight bold))))
   `(org-level-4 ((t (:foreground ,yellowbeans-gold-yellow :weight bold))))
   `(org-level-5 ((t (:foreground ,yellowbeans-gold-yellow :weight bold))))
   `(org-level-6 ((t (:foreground ,yellowbeans-gold-yellow :weight bold))))
   `(org-level-7 ((t (:foreground ,yellowbeans-gold-yellow :weight bold))))
   `(org-level-8 ((t (:foreground ,yellowbeans-gold-yellow :weight bold))))
   `(org-code ((t (:foreground ,yellowbeans-shipcove-blue))))
   `(org-verbatim ((t (:foreground ,yellowbeans-shipcove-blue))))
   `(org-block ((t (:background ,yellowbeans-black-2))))
   `(org-block-begin-line ((t (:foreground ,yellowbeans-gray-2 :slant italic))))
   `(org-block-end-line ((t (:foreground ,yellowbeans-gray-2 :slant italic))))
   `(org-link ((t (:foreground ,yellowbeans-olive-green :underline t))))
   `(org-scheduled ((t (:foreground ,yellowbeans-moss-green))))
   `(org-special-keyword ((t (:inherit font-lock-comment-face))))
   `(org-table ((t (:foreground ,yellowbeans-olive-green))))
   `(org-tag ((t (:weight bold :weight bold))))
   `(org-time-grid ((t (:foreground ,yellowbeans-moss-green))))
   `(org-upcoming-deadline ((t (:inherit font-lock-keyword-face))))
   
   ;; markdown
   `(markdown-header-face ((t (:foreground ,yellowbeans-gold-yellow :weight bold))))
   `(markdown-header-face-1 ((t (:inherit markdown-header-face :height 1.2))))
   `(markdown-header-face-2 ((t (:inherit markdown-header-face :height 1.1))))
   `(markdown-header-face-3 ((t (:inherit markdown-header-face))))
   `(markdown-header-face-4 ((t (:inherit markdown-header-face))))
   `(markdown-header-face-5 ((t (:inherit markdown-header-face))))
   `(markdown-header-face-6 ((t (:inherit markdown-header-face))))
   `(markdown-bold-face ((t (:weight bold))))
   `(markdown-italic-face ((t (:slant italic))))
   `(markdown-inline-code-face ((t (:foreground ,yellowbeans-shipcove-blue))))
   `(markdown-code-face ((t (:background ,yellowbeans-black-2))))
   `(markdown-pre-face ((t (:inherit markdown-code-face))))
   `(markdown-link-face ((t (:foreground ,yellowbeans-olive-green))))
   `(markdown-url-face ((t (:foreground ,yellowbeans-shipcove-blue))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-directory load-file-name)))

(provide-theme 'yellowbeans)
;;; yellowbeans-theme.el ends here
