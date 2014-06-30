;set up package repos
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)
;auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
;yasnippet
(require 'yasnippet)
(yas-global-mode 1) 
;cedet
(semantic-mode 1)
;keybindings for semantic
(defun my-cedet-hook ()
  (local-set-key [(control ?c) (control ?a)] 'semantic-ia-complete-symbol)
  (local-set-key [(control ?c) (control ?c)] 'semantic-complete-analyze-inline))
(add-hook 'c-mode-common-hook 'my-cedet-hook)
(add-hook 'c++-mode-hook 'my-cedet-hook)

