(defconst centaur-tabs-packages '(centaur-tabs))

(defun centaur-tabs/init-centaur-tabs ()
  "Initialize centaur-tabs layer."
  (use-package centaur-tabs
    :config
    (centaur-tabs-mode t)
    (setq centaur-tabs-set-icons t)
    (setq centaur-tabs-set-modified-marker t)
    (setq centaur-tabs-modified-marker "*")
    (setq centaur-tabs-set-bar 'over)
    (setq centaur-tabs-gray-out-icons 'buffer)
    (setq centaur-tabs-cycle-scope 'tabs)
    ;(centaur-tabs-group-by-projectile-project)
    :bind
    ("C-{" . centaur-tabs-backward)
    ("C-}" . centaur-tabs-forward)) )
