;;----------------------------------------------------------------------------
;; https://github.com/snosov1/toc-org
;; toc-org helps you to have an up-to-date table of contents in org files without exporting (useful primarily for readme files on GitHub).
;; NOTE: Previous name of the package is org-toc. It was changed because of a name conflict with one of the org contrib modules.
;;----------------------------------------------------------------------------
(require-package 'toc-org)

(if (require 'toc-org nil t)
    (add-hook 'org-mode-hook 'toc-org-mode)

    ;; enable in markdown, too
    (add-hook 'markdown-mode-hook 'toc-org-mode)
    (define-key markdown-mode-map (kbd "\C-c\C-o") 'toc-org-markdown-follow-thing-at-point)
  (warn "toc-org not found"))


;;----------------------------------------------------------------------------
;; Shortcut for TOC tag
;; In your emacs’ setup, you can bind a tag :TOC: to a binding T:
;; (add-to-list 'org-tag-alist '("TOC" . ?T))
;; Now C-c C-q T RET and you are done putting the :TOC: entry.
;;----------------------------------------------------------------------------
;;(add-to-list 'org-tag-alist '("TOC" . ?T))
(add-to-list 'org-tag-alist '("TOC_5:QUOTE" . ?T))

(provide 'init-toc-org-mode)
;;; init-toc-org-mode.el ends here
