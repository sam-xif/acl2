; A utility to filter lambda formals that are not bound to themselves.
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2024 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

;(local (include-book "kestrel/typed-lists-light/symbol-listp" :dir :system))

;; Returns the members of FORMALS that don't correspond to themselves in the ARGS.
(defund non-trivial-formals (formals args)
  (declare (xargs :guard (and (symbol-listp formals)
                              (true-listp args) ; often, but not necessarily, pseudo-terms
                              ;; todo: require formals and args to have the same length?
                              )))
  (if (endp formals)
      nil
    (let* ((formal (first formals))
           (arg (first args)))
      (if (equal formal arg)
          ;; skip since trivial:
          (non-trivial-formals (rest formals) (rest args))
        (cons formal (non-trivial-formals (rest formals) (rest args)))))))

(defthm symbol-listp-of-non-trivial-formals
  (implies (symbol-listp formals)
           (symbol-listp (non-trivial-formals formals args)))
  :hints (("Goal" :in-theory (enable non-trivial-formals))))

(defthm non-trivial-formals-of-cons-and-cons
  (equal (non-trivial-formals (cons formal formals) (cons arg args))
         (if (equal formal arg)
             (non-trivial-formals formals args)
           (cons formal (non-trivial-formals formals args))))
  :hints (("Goal" :in-theory (enable non-trivial-formals))))

(defthm non-trivial-formals-same
  (equal (non-trivial-formals formals formals)
         nil)
  :hints (("Goal" :induct t :in-theory (enable non-trivial-formals))))

(defthm not-member-equal-of-non-trivial-formals
  (implies (not (member-equal formal formals))
           (not (member-equal formal (non-trivial-formals formals args))))
  :hints (("Goal" :in-theory (enable non-trivial-formals))))

(defthm non-trivial-formals-of-append-and-append
  (implies (equal (len formals1) (len args1))
           (equal (non-trivial-formals (append formals1 formals2)
                                       (append args1 args2))
                  (append (non-trivial-formals formals1 args1)
                          (non-trivial-formals formals2 args2))))
  :hints (("Goal" :in-theory (enable non-trivial-formals))))

(defthm non-trivial-formals-of-nil
  (equal (non-trivial-formals nil args)
         nil)
  :hints (("Goal" :in-theory (enable non-trivial-formals))))

(defthm <=-of-len-of-non-trivial-formals-linear
  (<= (len (non-trivial-formals formals args))
      (len formals))
  :rule-classes :linear
  :hints (("Goal" :in-theory (enable non-trivial-formals))))

(defthm subsetp-equal-of-non-trivial-formals
  (subsetp-equal (non-trivial-formals formals args) formals)
  :hints (("Goal" :in-theory (enable non-trivial-formals))))

(defthm no-duplicatesp-equal-of-non-trivial-formals
  (implies (no-duplicatesp-equal formals)
           (no-duplicatesp-equal (non-trivial-formals formals args)))
  :hints (("Goal" :in-theory (enable non-trivial-formals))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; This avoids` consing up the list of non-trivial formals
(defun non-trivial-formalp (formal formals args)
  (declare (xargs :guard (and (symbolp formal)
                              (symbol-listp formals)
                              (member-eq formal formals)
                              (true-listp args)
                              (equal (len formals) (len args)))))
  (if (endp formals) ; can't happen since FORMAL is a member of FORMALS
      (er hard? 'non-trivial-formalp "No more formals.")
    (let ((first-formal (first formals)))
      (if (eq formal first-formal)
          ;; this is the formal we are looking for.  it's a non-trivial formal
          ;; iff the first arg is different from it:
          (not (eq formal (first args)))
        ;; Keep looking:
        (non-trivial-formalp formal (rest formals) (rest args))))))

;; Sanity check:
(defthmd non-trivial-formalp-correct
  (implies (no-duplicatesp-equal formals)
           (iff (non-trivial-formalp formal formals args)
                (member-equal formal (non-trivial-formals formals args))))
  :hints (("Goal" :in-theory (enable non-trivial-formals non-trivial-formalp))))
