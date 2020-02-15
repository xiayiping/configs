;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
;;                         ("melpa" . "https://melpa.org/packages/")))
;;(package-initialize)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(setq package-check-signature nil) 
(package-initialize) ;; You might already have this line
(require 'evil)
(require 'company)
(require 'helm)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(company-clang-executable "/usr/bin/clang++")
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f"))))
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (magit-find-file magithub spacemacs-theme helm-projectile magit evil company-c-headers company-ctags helm gnu-elpa-keyring-update company ace-window)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#292b2e")))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-minibuffer-prompt ((t (:inherit minibuffer-prompt))))
 '(helm-selection ((t (:background "dark green"))))
 '(helm-selection-line ((t (:background "red"))))
 '(magit-diff-added ((t (:foreground "#22aa22"))))
 '(magit-diff-added-highlight ((t (:background "#cceecc" :foreground "#22aa22"))))
 '(magit-diff-context ((t (:foreground "color-246"))))
 '(magit-dimmed ((t (:foreground "color-249"))))
 '(magit-section-highlight ((t (:background "color-52"))))
 '(minibuffer-prompt ((t (:foreground "red")))))


(setq visible-bell t)
(setq ring-bell-function 'ignore)
(setq company-global-modes '(not gud-mode))

(show-paren-mode t)
;;(global-hl-line-mode t)

(defun my:c-hook()
  (linum-mode t)
  (setq-local linum-format "%d ")
  (setq-local c-basic-offset 4)
  (setq-local tab-width 4)
  (setq-local c-indent-level 4 )
  (setq-local indent-tabs-mode nil)
  (local-set-key (kbd "C-c c c") 'company-complete)
  (local-set-key (kbd "C-c c l") 'company-clang)
  (local-set-key (kbd "C-c c ]") 'company-ctags)
  (local-set-key (kbd "C-c c h") 'company-c-headers)
  (local-set-key (kbd "M-X o"  ) 'ff-find-other-file)
  )

;; 'indent-new-comment-line
(global-unset-key (kbd "M-j"))
;; 'kill-sentence
(global-unset-key (kbd "M-k"))

(scroll-bar-mode -1)

(global-set-key  (kbd "M-j" ) 'scroll-up-line)
(global-set-key  (kbd "M-k" ) 'scroll-down-line)

(global-set-key  (kbd "M-x" )    'helm-M-x)
(global-set-key  (kbd "C-x b")   'helm-buffers-list)

(global-set-key  (kbd "C-x g")   'magit)

(global-set-key  (kbd "C-c h k") 'helm-show-kill-ring)
(global-set-key  (kbd "C-x C-f") 'helm-find-files)
(global-set-key  (kbd "C-c h /") 'helm-find)
(global-set-key  (kbd "C-c h o") 'helm-occur)
(global-set-key  (kbd "C-c h m") 'helm-bookmark)
(global-set-key  (kbd "C-c h r") 'helm-register)
(global-set-key  (kbd "C-c h p") 'helm-projectile)
(global-set-key  (kbd "C-c h g") 'helm-grep-do-git-grep)
(global-set-key  (kbd "C-c h SPC") 'helm-all-mark-rings)

(global-set-key  (kbd "C-c c c") 'company-complete)

(global-set-key  (kbd "M-W H") 'evil-window-move-far-left)
(global-set-key  (kbd "M-W L") 'evil-window-move-far-right)
(global-set-key  (kbd "M-W J") 'evil-window-move-very-bottom)
(global-set-key  (kbd "M-W K") 'evil-window-move-very-top)

(global-set-key  (kbd "M-W h") 'evil-window-left)
(global-set-key  (kbd "M-W l") 'evil-window-right)
(global-set-key  (kbd "M-W j") 'evil-window-down)
(global-set-key  (kbd "M-W k") 'evil-window-up)
(global-set-key  (kbd "M-*") 'evil-search-word-forward)
(global-set-key  (kbd "M-#") 'evil-search-word-backward)

(global-set-key  (kbd "M-W r") 'window-configuration-to-register)

;; inssert-register, another key is C-x r g
(global-unset-key (kbd "C-x r i"))
(global-set-key   (kbd "C-x r i") 'string-insert-rectangle)
(global-set-key   (kbd "C-x ~"  ) 'previous-error)

(add-hook 'c-mode-common-hook 'my:c-hook)
(add-hook 'after-init-hook 'global-company-mode)

(put 'scroll-left 'disabled nil)

(setq my:c-project-setting
      '("-std=c++11"
	)
      )

(setq my:c-system-include
      '("/usr/include/c++/6"
	"/usr/include/x86_64-linux-gnu/c++/6"
	)
      )
(setq my:c-project-include
      '("~/project/cpp/hello"
	)
      )

(defun my:c-project-setting ()
  (let ((systemInclude ()) (clangSetting ()) )
    (dolist (item my:c-system-include systemInclude)
      (setq systemInclude (cons item systemInclude))
      )
    ;;(print systemInclude)
    (setq company-c-headers-path-system systemInclude)

    (dolist (item my:c-project-setting clangSetting)
      (setq clangSetting (cons item clangSetting))
      )    
    (dolist (item my:c-system-include clangSetting)
      (setq clangSetting (cons (concat "-isystem" item) clangSetting))
      )
    (dolist (item my:c-project-include clangSetting)
      (setq clangSetting (cons (concat "-I" item) clangSetting))
      )
    ;;(print clangSetting)
    (setq company-clang-arguments clangSetting)
  )
  )

(my:c-project-setting)
;;
;;(load-theme 'spacemacs-dark)
