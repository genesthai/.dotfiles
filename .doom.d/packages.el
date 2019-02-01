;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))
;; (package! builtin-package :disable t)




;; https://github.com/dacap/keyfreq
;; record key press frequency
(package! keyfreq
  :recipe (:fetcher github :repo "dacap/keyfreq"))



;; github flavoured markdown
;; https://github.com/larstvei/ox-gfm
;; depended on by write-freely.el
;; (package! ox-gfm) -- require'd by writefreely, lets see if it works


;; (use-package writefreely :after org)
(package! writefreely
  :recipe (:fetcher github :repo "dangom/writefreely.el"))
;; auth token
;; Alternatively (setq writefreely-auth-token "00000000-0000-0000-0000-000000000000")
  ;; :config (load-library "writefreely-auth-token.el.gpg"))
