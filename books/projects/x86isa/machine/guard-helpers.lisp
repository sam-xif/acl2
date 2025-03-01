; X86ISA Library

; Note: The license below is based on the template at:
; http://opensource.org/licenses/BSD-3-Clause

; Copyright (C) 2015, Regents of the University of Texas
; All rights reserved.

; Redistribution and use in source and binary forms, with or without
; modification, are permitted provided that the following conditions are
; met:

; o Redistributions of source code must retain the above copyright
;   notice, this list of conditions and the following disclaimer.

; o Redistributions in binary form must reproduce the above copyright
;   notice, this list of conditions and the following disclaimer in the
;   documentation and/or other materials provided with the distribution.

; o Neither the name of the copyright holders nor the names of its
;   contributors may be used to endorse or promote products derived
;   from this software without specific prior written permission.

; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
; A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
; HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
; LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
; OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

; Original Author(s):
; Shilpi Goel         <shigoel@cs.utexas.edu>

;; We will always include this book locally.

(in-package "X86ISA")

(include-book "../utils/utilities")
(include-book "../portcullis/utils")
(include-book "../utils/segmentation-structures")
(include-book "tools/rulesets" :dir :system)
(include-book "centaur/bitops/ihs-extensions" :dir :system)
(include-book "centaur/gl/defthm-using-gl" :dir :system)

(local (include-book "centaur/gl/gl" :dir :system))

;; ======================================================================

;; Various lemmas for the guard proofs of rm* functions

(defthm-using-gl rml16-guard-proof-helper
  :hyp (and (n08p a)
            (n08p b))
  :concl (< (logior a (ash b 8)) *2^16*)
  :g-bindings
  (gl::auto-bindings
   (:mix (:nat a 8) (:nat b 8)))
  :rule-classes :linear)

(defthm-using-gl rb-and-rvm32-helper
  :hyp (and (n08p a)
            (n08p b)
            (n16p c))
  :concl (equal (logior a (ash b 8) (ash c 16))
                (logior a (ash (logior b (ash c 8)) 8)))
  :g-bindings
  (gl::auto-bindings
   (:mix (:nat a 8) (:nat b 8)) (:nat c 16))
  :rule-classes :linear)

(defthm-using-gl rml32-guard-proof-helper
  :hyp (and (n08p a)
            (n08p b)
            (n08p c)
            (n08p d))
  :concl (<
          (logior a
                  (ash (logior b
                               (ash (logior c (ash d 8)) 8))
                       8))
          *2^32*)
  :g-bindings
  (gl::auto-bindings
   (:mix (:nat a 8) (:nat b 8) (:nat c 8) (:nat d 8)))
  :rule-classes :linear)

(defthm-using-gl rml48-guard-proof-helper
  :hyp (and (n08p a) (n08p b) (n32p c))
  :concl (equal (logior a (ash b 8) (ash c 16))
                (logior a (ash (logior b (ash c 8)) 8)))
  :g-bindings
  (gl::auto-bindings
   (:mix (:nat a 32) (:nat b 32) (:nat c 32)))
  :rule-classes :linear)

(defthm-using-gl rb-and-rml48-helper-1
  :hyp (and (n08p a) (n08p b) (n08p c) (n08p d)
            (n08p e) (n08p f))
  :concl (equal (logior
                 a
                 (ash (logior
                       b
                       (ash (logior
                             c
                             (ash (logior
                                   d (ash (logior e (ash f 8)) 8)) 8)) 8)) 8))
                (logior
                 a
                 (ash b 8)
                 (ash (logior
                       c
                       (ash (logior d (ash (logior e (ash f 8)) 8))
                            8)) 16)))
  :g-bindings
  (gl::auto-bindings
   (:mix (:nat a 8) (:nat b 8) (:nat c 8) (:nat d 8)
         (:nat e 8) (:nat f 8))))

(defthm-using-gl rb-and-rml48-helper-2
  :hyp (and (n08p a) (n08p b) (n08p c) (n08p d)
            (n08p e) (n08p f))
  :concl (<
          (logior
           a
           (ash b 8)
           (ash (logior
                 c
                 (ash (logior d (ash (logior e (ash f 8)) 8))
                      8)) 16))
          #.*2^48*)
  :g-bindings
  (gl::auto-bindings
   (:mix (:nat a 8) (:nat b 8) (:nat c 8) (:nat d 8)
         (:nat e 8) (:nat f 8))))

(defthm-using-gl rb-and-rvm64-helper
  :hyp (and (n08p a) (n08p b) (n08p c) (n08p d)
            (n08p e) (n08p f) (n08p g) (n08p h))
  :concl (equal
          (logior a (ash b 8)
                  (ash (logior c (ash d 8)) 16)
                  (ash (logior e (ash f 8) (ash (logior g (ash h 8)) 16)) 32))
          (logior a
                  (ash (logior
                        b
                        (ash (logior
                              c
                              (ash (logior
                                    d
                                    (ash (logior
                                          e
                                          (ash (logior f (ash (logior g (ash h 8)) 8)) 8)) 8)) 8))
                             8))
                       8)))
  :g-bindings
  (gl::auto-bindings
   (:mix (:nat a 8) (:nat b 8) (:nat c 8) (:nat d 8)
         (:nat e 8) (:nat f 8) (:nat g 8) (:nat h 8))))

(defthm-using-gl rml64-guard-proof-helper
  :hyp (and (n32p a) (n32p b))
  :concl (< (logior a (ash b 32)) *2^64*)
  :g-bindings
  (gl::auto-bindings
   (:mix (:nat a 32) (:nat b 32)))
  :rule-classes :linear)

(defthm-using-gl rml80-guard-proof-helper
  :hyp (and (n08p a) (n08p b) (n64p c))
  :concl (equal (logior a (ash b 8) (ash c 16))
                (logior a (ash (logior b (ash c 8)) 8)))
  :g-bindings
  (gl::auto-bindings
   (:mix (:nat a 64) (:nat b 64) (:nat c 64)))
  :rule-classes :linear)

(defthm-using-gl rml80-in-sys-view-guard-proof-helper
  :hyp (and (n08p a) (n08p b) (n08p c) (n08p d) (n08p e)
            (n08p f) (n08p g) (n08p h) (n08p i) (n08p j))
  :concl (<
          (logior a
                  (ash b 8)
                  (ash (logior
                        c
                        (ash
                         (logior
                          d
                          (ash
                           (logior
                            e
                            (ash
                             (logior
                              f
                              (ash
                               (logior g
                                       (ash (logior
                                             h (ash
                                                (logior i (ash j 8))
                                                8)) 8)) 8)) 8)) 8)) 8)) 16))
          *2^80*)
  :g-bindings (gl::auto-bindings
               (:mix (:nat a 8)
                     (:nat b 8)
                     (:nat c 8)
                     (:nat d 8)
                     (:nat e 8)
                     (:nat f 8)
                     (:nat g 8)
                     (:nat h 8)
                     (:nat i 8)
                     (:nat j 8))))

(in-theory (e/d ()
                (rml16-guard-proof-helper
                 rml48-guard-proof-helper
                 rb-and-rml48-helper-1
                 rb-and-rml48-helper-2
                 rb-and-rvm32-helper
                 rml32-guard-proof-helper
                 rb-and-rvm64-helper
                 rml64-guard-proof-helper
                 rml80-in-sys-view-guard-proof-helper)))

(defthm-using-gl rml32-rb-sys-view-proof-helper
  :hyp (and (n08p a)
            (n08p b)
            (n08p c)
            (n08p d))
  :concl (equal (logior a (ash b 8) (ash (logior c (ash d 8)) 16))
                (logior a (ash (logior b (ash (logior c (ash d 8)) 8)) 8)))
  :g-bindings
  (gl::auto-bindings
   (:mix (:nat a 8) (:nat b 8) (:nat c 8) (:nat d 8))))

;; (defthm-using-gl rml64-in-sys-view-guard-proof-helper
;;   :hyp (and (n08p a)
;;             (n08p b)
;;             (n08p c)
;;             (n08p d)
;;             (n08p e)
;;             (n08p f)
;;             (n08p g)
;;             (n08p h))
;;   :concl (< (logior a
;;                     (ash b 8)
;;                     (ash (logior c (ash d 8)) 16)
;;                     (ash (logior
;;                           e (ash f 8)
;;                           (ash (logior g (ash h 8)) 16)) 32))
;;             *2^64*)
;;   :g-bindings (gl::auto-bindings
;;                (:mix (:nat a 8)
;;                      (:nat b 8)
;;                      (:nat c 8)
;;                      (:nat d 8)
;;                      (:nat e 8)
;;                      (:nat f 8)
;;                      (:nat g 8)
;;                      (:nat h 8))))

(defthm-using-gl rml64-to-rb-in-sys-view-helper
  :hyp (and (n08p a) (n08p b) (n08p c) (n08p d)
            (n08p e) (n08p f) (n08p g) (n08p h))
  :concl (equal
          (logior a
                  (ash (logior b (ash (logior c (ash d 8)) 8)) 8)
                  (ash (logior e (ash (logior f (ash (logior g (ash h 8)) 8)) 8)) 32))
          (logior
           a
           (ash (logior
                 b
                 (ash (logior
                       c
                       (ash (logior d
                                    (ash
                                     (logior e
                                             (ash
                                              (logior f
                                                      (ash (logior g (ash h 8)) 8)) 8)) 8)) 8)) 8)) 8)))
  :g-bindings
  (gl::auto-bindings
   (:mix (:nat a 8) (:nat b 8) (:nat c 8) (:nat d 8)
         (:nat e 8) (:nat f 8) (:nat g 8) (:nat h 8))))

(defthm-using-gl rml64-in-sys-view-guard-proof-helper
  :hyp (and (n08p a)
            (n08p b)
            (n08p c)
            (n08p d)
            (n08p e)
            (n08p f)
            (n08p g)
            (n08p h))
  :concl (< (logior
             a
             (ash (logior
                   b
                   (ash (logior
                         c
                         (ash (logior d
                                      (ash
                                       (logior e
                                               (ash
                                                (logior f
                                                        (ash (logior g (ash h 8)) 8)) 8)) 8)) 8)) 8)) 8))
            *2^64*)
  :g-bindings (gl::auto-bindings
               (:mix (:nat a 8)
                     (:nat b 8)
                     (:nat c 8)
                     (:nat d 8)
                     (:nat e 8)
                     (:nat f 8)
                     (:nat g 8)
                     (:nat h 8))))

;; ======================================================================

;; The following theorems are used in instructions/*-instructions.lisp
;; books.

;; Far Jump:

(defthm-using-gl far-jmp-conforming-code-segment-guard-helper-1
  :hyp (unsigned-byte-p 16 val16)
  :concl (equal (bitops::logsquash 2 val16)
                (logand 65532 val16))
  :g-bindings (gl::auto-bindings
               (:nat val16 16)))

(defthm-using-gl far-jmp-conforming-code-segment-guard-helper-2
  :hyp (unsigned-byte-p 16 val16)
  :concl (equal (logand -79228162495817593519834398721 (ash val16 96))
                (logand 5192217630372331810936976494821375 (ash val16 96)))
  :g-bindings (gl::auto-bindings
               (:nat val16 16)))


(defthm-using-gl far-jmp-non-conforming-code-segment-guard-helper-3
  :hyp (and (unsigned-byte-p 80 n80)
            (unsigned-byte-p 64 n64)
            (unsigned-byte-p 16 n16))
  :concl (equal
          (logior n64
                  (ash (logtail 64 n80) 64)
                  (logand 5192217630372313364192902785269760 (ash n16 96)))
          (logior
           n64
           (logand 5192296858534809181786422619668480
                   (logior (ash (logtail 64 n80) 64)
                           (logand 5192217630372331810936976494821375 (ash n16 96))))))
  :g-bindings (gl::auto-bindings
               (:mix (:nat n80 80)
                     (:nat n64 80)
                     (:nat n16 80))))


(defthm-using-gl far-jmp-call-gate-guard-helper-4
  :hyp (and (unsigned-byte-p 64 n64)
            (unsigned-byte-p 48 n48)
            (unsigned-byte-p 16 n16))
  :concl (equal
          (logior n64 (ash (loghead 32 n48) 64)
                  (logand 5192217630372313364192902785269760 (ash n16 96)))
          (logior
           n64
           (logand
            5192296858534809181786422619668480
            (logior
             (ash (loghead 32 n48) 64)
             (logand 5192217630372331810936976494821375 (ash n16 96))))))
  :g-bindings (gl::auto-bindings
               (:mix (:nat n48 64)
                     (:nat n64 64)
                     (:nat n16 64))))

(defthm-using-gl far-jmp-call-gate-guard-helper-5
  :hyp (call-gate-descriptorbits-p z)
  :concl (equal
          (logand #xFFFFFFFF00000000 (ash (call-gate-descriptorbits->offset63-32 z) 32))
          (ash (call-gate-descriptorbits->offset63-32 z) 32))
  :g-bindings (gl::auto-bindings (:nat z 128)))

(defthm-using-gl far-jmp-call-gate-guard-helper-6
  :hyp (unsigned-byte-p 16 x)
  :concl (equal (logand #xffff0000 (ash x 16))
                (ash x 16))
  :g-bindings (gl::auto-bindings (:nat x 16)))

(defthm-using-gl far-jmp-call-gate-guard-helper-7
  :hyp (and (unsigned-byte-p 32 call-gate-descriptorbits->offset63-32)
            (unsigned-byte-p 16 call-gate-descriptorbits->offset31-16)
            (unsigned-byte-p 16 call-gate-descriptorbits->offset15-0))
  :concl (equal
          (logior
           (ash
            call-gate-descriptorbits->offset31-16
            16)
           (loghead
            32
            call-gate-descriptorbits->offset15-0)
           (logand
            18446744069414584320
            (ash
             call-gate-descriptorbits->offset63-32
             32)))
          (logior
           call-gate-descriptorbits->offset15-0
           (ash
            call-gate-descriptorbits->offset31-16
            16)
           (ash
            call-gate-descriptorbits->offset63-32
            32)))
  :g-bindings (gl::auto-bindings (:mix (:nat call-gate-descriptorbits->offset15-0 32)
                                       (:nat call-gate-descriptorbits->offset31-16 32)
                                       (:nat call-gate-descriptorbits->offset63-32 32))))

(def-ruleset far-jump-guard-helpers
  '(far-jmp-conforming-code-segment-guard-helper-1
    far-jmp-conforming-code-segment-guard-helper-2
    far-jmp-non-conforming-code-segment-guard-helper-3
    far-jmp-call-gate-guard-helper-4
    far-jmp-call-gate-guard-helper-5))

;; ======================================================================

;; LLDT guard helpers:

(defthm-using-gl x86-lldt-guard-helper-1
  :hyp (unsigned-byte-p 16 y)
  :concl (equal (logand -79228162495817593519834398721 (ash y 96))
                (ash y 96))
  :g-bindings `((y (:g-number ,(increasing-list 0 1 17))))
  :rule-classes (:rewrite :linear))

(defthm-using-gl x86-lldt-guard-helper-2
  :hyp (and (unsigned-byte-p 128 n128)
            (unsigned-byte-p 16 n16))
  :concl (equal
          (logior
           (loghead 16 (logtail 16 n128))
           (ash (loghead 8 (logtail 32 n128)) 16)
           (logand 5192217630372313364192902785269760 (ash n16 96))
           (ash
            (logior (loghead 16 n128)
                    (ash (loghead 4 (logtail 48 n128)) 16))
            64)
           (ash
            (logior (loghead 8 (logtail 56 n128))
                    (ash (loghead 32 (logtail 64 n128)) 8))
            24))
          (logior (loghead 16 (logtail 16 n128))
                  (ash (loghead 8 (logtail 32 n128)) 16)
                  (ash
                   (logior (loghead 8 (logtail 56 n128))
                           (ash (loghead 32 (logtail 64 n128)) 8))
                   24)
                  (logand
                   5192296858534809181786422619668480
                   (logior
                    (logand 5192217630372331810936976494821375 (ash n16 96))
                    (ash (logior (loghead 16 n128)
                                 (ash (loghead 4 (logtail 48 n128))
                                      16)) 64)))))
  :g-bindings (gl::auto-bindings
               (:mix (:nat n128 128)
                     (:nat n16 128))))

(defthm-using-gl x86-lldt-guard-helper-3
  :hyp (and (unsigned-byte-p 128 n128)
            (unsigned-byte-p 16 n16))
  :concl (equal
          (logior
           (ash n16 96)
           (ash
            (logior (loghead 16 n128)
                    (ash (loghead 4 (logtail 48 n128))
                         16))
            64))
          (logior
           (logand
            5192217630372331810936976494821375 (ash n16 96))
           (ash
            (logior (loghead 16 n128)
                    (ash (loghead 4 (logtail 48 n128))
                         16))
            64)))
  :g-bindings (gl::auto-bindings
               (:mix (:nat n128 128)
                     (:nat n16 128))))

(def-ruleset lldt-guard-helpers
  '(x86-lldt-guard-helper-1
    x86-lldt-guard-helper-2
    x86-lldt-guard-helper-3))

;; ======================================================================

;; SYSRET:

(defthm-using-gl x86-sysret-guard-helper-1
  :hyp (unsigned-byte-p 16 seg-visiblei)
  :concl (equal (bitops::logsquash 2 seg-visiblei)
                (logand 65532 seg-visiblei))
  :g-bindings (gl::auto-bindings
               (:nat seg-visiblei    16)))


(defthm-using-gl x86-sysret-guard-helper-2
  :hyp (unsigned-byte-p 64 msri)
  :concl (and
          (equal (logior 3 (+ 16 (logtail 48 msri)))
                 (logior 3
                         (bitops::logsquash
                          2
                          (+ 16 (logtail 48 msri)))))
          (equal (logior 3 (+ 8 (logtail 48 msri)))
                 (logior 3
                         (bitops::logsquash 2 (+ 8 (logtail 48 msri))))))
  :g-bindings (gl::auto-bindings
               (:nat msri    64)))

(def-ruleset sysret-guard-helpers
  '(x86-sysret-guard-helper-1
    x86-sysret-guard-helper-2))

;; ======================================================================

(in-theory (e/d* ()
                 (far-jump-guard-helpers
                  lldt-guard-helpers
                  sysret-guard-helpers)))

;; ======================================================================
