(add-to-list 'load-path "~/.emacs.d/lisb")
(load-file "~/.emacs.d/std_comment.el")
(load-file "~/.emacs.d/php-mode.el")

;;Colorise en rouge les espace
(setq show-trailign-whitespace t)
(setq-default show-trailing-whitespace t)
;Supprime tous les espaces en fin de ligne
(autoload 'nuke-trailing-whitespace "whitespace" nil t)

;Afficher le numéro de colonne
(column-number-mode 1)
(line-number-mode 1)

;Activer la coloration syntaxique
(global-font-lock-mode t)
;Mettre un maximum de couleurs
(setq font-lock-maximum-size nil)

