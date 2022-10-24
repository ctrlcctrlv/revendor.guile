#!/usr/bin/guix repl
!#
(use-modules (guix build cargo-utils))
(define dirs (map (lambda (arg)
                    (string-append "vendor/" arg))
                  (cdr (program-arguments))))
(if (not (null? dirs)) (begin (map (lambda (arg)
                                     (generate-all-checksums arg))
                               dirs)))
; vim: filetype=scheme.guile
