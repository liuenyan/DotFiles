;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;关闭emacs启动时的画面
(setq inhibit-startup-message t)
;;隐藏工具栏
;;(tool-bar-mode -1)
;;主题设置
(load-theme 'tsdh-dark t)
;;关闭备份文件#xxx#
(setq auto-save-default nil)
;;默认显示 80列就换行
(setq default-fill-column 80)
;;显示括号匹配
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;显示行列号
(setq column-number-mode t)
(setq line-number-mode t)
;;在左边显示行号
(global-linum-mode t)
;; 语法高亮
(global-font-lock-mode t)
;;一打开就起用 text 模式
(setq default-major-mode 'text-mode)
;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)
;; 显示时间，格式如下
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
;;把fill-column设置为80便于阅读
(setq default-fill-column 80)
;;默认风格
(setq c-default-style "bsd")
;;tab缩进
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode nil)
(setq c-basic-offset 4)
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list (number-sequence 4 200 4))
;;添加 epla 更新镜像
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
