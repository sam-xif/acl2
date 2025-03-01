; Standard System Library
;
; Copyright (C) 2024 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (www.alessandrocoglio.info)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "macro-namep")

(include-book "std/testing/assert-bang" :dir :system)
(include-book "std/testing/must-succeed-star" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(assert! (macro-namep 'append (w state)))

(assert! (not (macro-namep 'cons (w state))))

(assert! (not (macro-namep 'aaaaaaaaaa (w state))))

(must-succeed*
 (defmacro m (x) `(list ,x))
 (assert! (macro-namep 'm (w state))))

(assert! (not (macro-namep 5/3 (w state))))

(assert! (not (macro-namep "append" (w state))))
