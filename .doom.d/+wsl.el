;;; +wsl.el --- description -*- lexical-binding: t; -*-
;;; Code:

;;add copy from Emacs to windows
(defun wsl-copy (start end)
    (interactive "r"
      (shell-command-on-region start end "clip.exe")))

(global-set-key
  (kbd "C-c C-c"
   'wsl-copy))

(provide '+wsl)
;;; +wsl.el ends here
