(defconst centaur-tabs-packages '(centaur-tabs))

(defun centaur-tabs/init-centaur-tabs ()
  "Initialize centaur-tabs layer."
  (use-package centaur-tabs
    :demand
    :config
    (setq centaur-tabs-style "bar")
    (setq centaur-tabs-height 32)
    (setq centaur-tabs-set-icons t)
    (setq centaur-tabs-set-modified-marker t)
    (setq centaur-tabs-modified-marker "*")
    (setq centaur-tabs-set-bar 'over)
    (setq centaur-tabs-gray-out-icons 'buffer)
    (setq centaur-tabs-cycle-scope 'tabs)
    (centaur-tabs-mode t)
    ;; (centaur-tabs-group-by-projectile-project)
    ;; :hook (
    ;;  (dashboard-mode . centaur-tabs-local-mode)
    ;;  (treemacs-mode . centaur-tabs-local-mode)
    ;;  (spacemacs-buffer-mode . centaur-tabs-local-mode)
    ;;  (term-mode . centaur-tabs-local-mode)
    ;;  (calendar-mode . centaur-tabs-local-mode)
    ;;  (org-agenda-mode . centaur-tabs-local-mode)
    ;;  (helpful-mode . centaur-tabs-local-mode)
    ;;  (dired-mode . centaur-tabs-local-mode)
    ;;  (zone-mode . centaur-tabs-local-mode)
    ;;  (helm-mode . centaur-tabs-local-mode))
    :bind
    ("C-<prior>" . centaur-tabs-backward)
    ("C-<next>" . centaur-tabs-forward)
    ("C-c t" . centaur-tabs-counsel-switch-group)
    (:map evil-normal-state-map
	        ("g l" . centaur-tabs-forward)
	        ("g h" . centaur-tabs-backward)
	        ("SPC b n" . centaur-tabs-forward)
	        ("SPC b p" . centaur-tabs-backward))
    )
)
