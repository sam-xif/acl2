(UNIT-PROPAGATION-IMPLIES-UNSAT
 (52 1 (:DEFINITION EVALUATE-CLAUSE))
 (39 1 (:DEFINITION EVALUATE-LITERAL))
 (29 29 (:REWRITE DEFAULT-CAR))
 (26 26 (:REWRITE DEFAULT-CDR))
 (24 2 (:DEFINITION FORMULA-FAL-MAX))
 (21 2 (:DEFINITION MEMBER-EQUAL))
 (16 4 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (16 2 (:DEFINITION HONS-ASSOC-EQUAL))
 (12 9 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (11 9 (:REWRITE DEFAULT-<-1))
 (10 2 (:DEFINITION MAX))
 (9 9 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (9 3 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (7 7 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (6 1 (:DEFINITION POS-LISTP))
 (5 5 (:TYPE-PRESCRIPTION LITERALP))
 (5 5 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (4 1 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (3 3 (:TYPE-PRESCRIPTION EVALUATE-CLAUSE))
 (3 3 (:REWRITE UNIT-PROPAGATION-CORRECT))
 (3 3 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (2 2 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (2 2 (:REWRITE TRUTH-MONOTONE))
 (2 2 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (2 2 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (2 2 (:DEFINITION UNDEFP$INLINE))
 (2 2 (:DEFINITION HONS-EQUAL))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE UNIT-PROPAGATION-T-MONOTONE))
 (1 1 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR-HONS-ASSOC-EQUAL))
 )
(UNIT-PROPAGATION-MONOTONE
 (715 1 (:DEFINITION UNIT-PROPAGATION))
 (547 8 (:DEFINITION EVALUATE-CLAUSE))
 (518 5 (:DEFINITION EVALUATE-FORMULA))
 (499 9 (:DEFINITION EVALUATE-LITERAL))
 (498 5 (:DEFINITION EVALUATE-FORMULA-FAL))
 (440 4 (:REWRITE UNIT-PROPAGATION-IDENTITY))
 (315 28 (:DEFINITION MEMBER-EQUAL))
 (251 1 (:DEFINITION IS-UNIT-CLAUSE))
 (217 40 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (170 2 (:REWRITE EVALUATE-CLAUSE-NIL-IMPLIES-IS-UNIT-CLAUSE-T))
 (144 1 (:REWRITE UNIT-PROPAGATION-IMPLIES-UNSAT))
 (127 127 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (98 18 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (93 93 (:REWRITE DEFAULT-CAR))
 (88 88 (:REWRITE DEFAULT-CDR))
 (65 65 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (65 13 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-FORWARD))
 (54 18 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (54 6 (:DEFINITION HONS-GET))
 (53 53 (:TYPE-PRESCRIPTION LITERALP))
 (53 23 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (52 49 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (48 6 (:DEFINITION HONS-ASSOC-EQUAL))
 (36 3 (:DEFINITION FORMULA-FAL-MAX))
 (29 29 (:TYPE-PRESCRIPTION EVALUATE-CLAUSE))
 (25 25 (:TYPE-PRESCRIPTION EVALUATE-FORMULA-FAL))
 (22 16 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (20 20 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (20 5 (:REWRITE ZP-OPEN))
 (19 14 (:REWRITE DEFAULT-<-2))
 (18 9 (:REWRITE DEFAULT-UNARY-MINUS))
 (17 17 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (17 14 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE UNIT-PROPAGATION-CORRECT))
 (16 16 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (15 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-+-1))
 (15 3 (:DEFINITION MAX))
 (15 1 (:DEFINITION SUBSETP-EQUAL))
 (14 14 (:TYPE-PRESCRIPTION TRUE-LISTP-LOOKUP-FORMULA-INDEX))
 (14 14 (:DEFINITION UNDEFP$INLINE))
 (13 13 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 (12 2 (:REWRITE EVALUATE-CLAUSE-T-IMPLIES-NOT-IS-UNIT-CLAUSE))
 (12 1 (:DEFINITION ADD-TO-SET-EQUAL))
 (6 6 (:DEFINITION HONS-EQUAL))
 (5 5 (:TYPE-PRESCRIPTION EVALUATE-FORMULA))
 (5 5 (:REWRITE TRUTH-MONOTONE))
 (5 5 (:REWRITE EVALUATE-FORMULA-FAL-T-IMPLIES-EVALUATE-CLAUSE-T))
 (4 4 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR-HONS-ASSOC-EQUAL))
 (4 2 (:DEFINITION NULL))
 (3 3 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 (2 2 (:TYPE-PRESCRIPTION NULL))
 (2 2 (:REWRITE SUBSETP-TRANSITIVE))
 (2 2 (:REWRITE IS-UNIT-CLAUSE-T-MONOTONE))
 (2 1 (:TYPE-PRESCRIPTION LITERALP-IS-UNIT-CLAUSE))
 (1 1 (:REWRITE IS-UNIT-CLAUSE-SUPERSET))
 )
(FLIP-LITERAL)
(MEMBER-REMOVE-LITERAL
 (856 96 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (420 420 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (359 78 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (253 44 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-REMOVE-LITERAL))
 (209 209 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (135 130 (:REWRITE DEFAULT-CAR))
 (102 98 (:REWRITE DEFAULT-CDR))
 (96 96 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (60 5 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CONS))
 (4 4 (:TYPE-PRESCRIPTION LITERALP))
 )
(CLAUSE-OR-ASSIGNMENT-P-FLIP-LITERAL
 (12 2 (:DEFINITION REMOVE-LITERAL))
 (4 4 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 (2 2 (:TYPE-PRESCRIPTION REMOVE-LITERAL))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-IS-NOT-CONTRADICTORY))
 )
(MEMBER-FLIP-LITERAL
 (16 1 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (12 2 (:DEFINITION REMOVE-LITERAL))
 (12 1 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CONS))
 (8 8 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (8 2 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-REMOVE-LITERAL))
 (6 5 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (4 4 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE MEMBER-EQUAL-MONOTONE))
 )
(FIND-UNSAT-INDEX)
(FIND-UNSAT-INDEX-IS-BADGUY-1
 (510 34 (:DEFINITION MEMBER-EQUAL))
 (408 68 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (274 274 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (187 187 (:REWRITE DEFAULT-CAR))
 (176 88 (:TYPE-PRESCRIPTION TRUE-LISTP-LOOKUP-FORMULA-INDEX))
 (145 145 (:REWRITE DEFAULT-CDR))
 (141 36 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (137 137 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (136 34 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (102 34 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (85 85 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (36 36 (:REWRITE UNIT-PROPAGATION-CORRECT))
 (34 34 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (34 34 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (34 17 (:REWRITE DEFAULT-UNARY-MINUS))
 (30 30 (:REWRITE DEFAULT-+-2))
 (30 30 (:REWRITE DEFAULT-+-1))
 (28 28 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (23 19 (:REWRITE EVALUATE-FORMULA-FAL-T-IMPLIES-EVALUATE-CLAUSE-T))
 (17 17 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (15 15 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(FIND-UNSAT-INDEX-IS-BADGUY-1-FORMULA
 (198 2 (:DEFINITION FIND-UNSAT-INDEX))
 (189 3 (:DEFINITION EVALUATE-CLAUSE))
 (141 3 (:DEFINITION EVALUATE-LITERAL))
 (104 1 (:DEFINITION EVALUATE-FORMULA-FAL))
 (90 6 (:DEFINITION MEMBER-EQUAL))
 (72 12 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (48 48 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (27 27 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (27 3 (:DEFINITION HONS-GET))
 (24 24 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (24 6 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (24 6 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (24 3 (:DEFINITION HONS-ASSOC-EQUAL))
 (23 23 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE DEFAULT-CDR))
 (18 6 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (15 15 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (12 6 (:TYPE-PRESCRIPTION TRUE-LISTP-LOOKUP-FORMULA-INDEX))
 (12 3 (:REWRITE ZP-OPEN))
 (11 11 (:TYPE-PRESCRIPTION EVALUATE-CLAUSE))
 (9 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (6 6 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION FORMULA-FAL-P))
 (6 6 (:REWRITE UNIT-PROPAGATION-CORRECT))
 (6 6 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (6 6 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (6 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (4 4 (:DEFINITION UNDEFP$INLINE))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE EVALUATE-FORMULA-FAL-T-IMPLIES-EVALUATE-CLAUSE-T))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:DEFINITION HONS-EQUAL))
 (1 1 (:REWRITE TRUTH-MONOTONE))
 )
(FIND-UNSAT-INDEX-IS-BADGUY-2
 (720 48 (:DEFINITION MEMBER-EQUAL))
 (576 96 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (384 384 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (236 236 (:REWRITE DEFAULT-CAR))
 (210 102 (:TYPE-PRESCRIPTION TRUE-LISTP-LOOKUP-FORMULA-INDEX))
 (192 192 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (192 48 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (192 48 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (189 183 (:REWRITE DEFAULT-CDR))
 (144 48 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (120 120 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (48 48 (:REWRITE UNIT-PROPAGATION-CORRECT))
 (48 48 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (48 48 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (48 24 (:REWRITE DEFAULT-UNARY-MINUS))
 (27 27 (:REWRITE DEFAULT-+-2))
 (27 27 (:REWRITE DEFAULT-+-1))
 (24 24 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (24 24 (:REWRITE EVALUATE-FORMULA-FAL-T-IMPLIES-EVALUATE-CLAUSE-T))
 (14 14 (:REWRITE ZP-OPEN))
 )
(EVALUATE-FORMULA-FAL-IS-EVALUATE-CLAUSE-BADGUY
 (1380 92 (:DEFINITION MEMBER-EQUAL))
 (1104 184 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (784 784 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (758 758 (:REWRITE DEFAULT-CAR))
 (565 559 (:REWRITE DEFAULT-CDR))
 (465 117 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (392 392 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (368 92 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (276 92 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (230 230 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (186 186 (:REWRITE DEFAULT-+-2))
 (186 186 (:REWRITE DEFAULT-+-1))
 (117 117 (:REWRITE UNIT-PROPAGATION-CORRECT))
 (92 92 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (92 92 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (92 46 (:REWRITE DEFAULT-UNARY-MINUS))
 (67 64 (:REWRITE DEFAULT-<-1))
 (64 64 (:REWRITE DEFAULT-<-2))
 (52 52 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (49 49 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:DEFINITION NATP))
 )
(EVALUATE-FORMULA-IS-EVALUATE-CLAUSE-BADGUY
 (315 5 (:DEFINITION EVALUATE-CLAUSE))
 (235 5 (:DEFINITION EVALUATE-LITERAL))
 (198 2 (:DEFINITION FIND-UNSAT-INDEX))
 (150 10 (:DEFINITION MEMBER-EQUAL))
 (120 20 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (104 1 (:DEFINITION EVALUATE-FORMULA-FAL))
 (80 80 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (72 9 (:DEFINITION HONS-ASSOC-EQUAL))
 (54 54 (:REWRITE DEFAULT-CAR))
 (45 45 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (45 45 (:REWRITE DEFAULT-CDR))
 (42 28 (:TYPE-PRESCRIPTION TRUE-LISTP-LOOKUP-FORMULA-INDEX))
 (40 40 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (40 10 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (40 10 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (30 10 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (25 25 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (14 14 (:TYPE-PRESCRIPTION FORMULA-FAL-P))
 (12 3 (:REWRITE ZP-OPEN))
 (10 10 (:REWRITE UNIT-PROPAGATION-CORRECT))
 (10 10 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (10 10 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (10 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (9 9 (:DEFINITION HONS-EQUAL))
 (7 7 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 5 (:REWRITE DEFAULT-<-1))
 (6 6 (:DEFINITION UNDEFP$INLINE))
 (5 5 (:REWRITE EVALUATE-FORMULA-FAL-T-IMPLIES-EVALUATE-CLAUSE-T))
 (5 5 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (1 1 (:REWRITE TRUTH-MONOTONE))
 )
(EVALUATE-FORMULA-FAL-IS-EVALUATE-CLAUSE-BADGUY-ALT
 (510 34 (:DEFINITION MEMBER-EQUAL))
 (408 68 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (274 274 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (187 187 (:REWRITE DEFAULT-CAR))
 (176 88 (:TYPE-PRESCRIPTION TRUE-LISTP-LOOKUP-FORMULA-INDEX))
 (145 145 (:REWRITE DEFAULT-CDR))
 (141 36 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (137 137 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (136 34 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (102 34 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (85 85 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (36 36 (:REWRITE UNIT-PROPAGATION-CORRECT))
 (34 34 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (34 34 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (34 17 (:REWRITE DEFAULT-UNARY-MINUS))
 (30 30 (:REWRITE DEFAULT-+-2))
 (30 30 (:REWRITE DEFAULT-+-1))
 (28 28 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (23 19 (:REWRITE EVALUATE-FORMULA-FAL-T-IMPLIES-EVALUATE-CLAUSE-T))
 (17 17 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (15 15 (:REWRITE ZP-OPEN))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(EVALUATE-FORMULA-IS-EVALUATE-CLAUSE-BADGUY-ALT
 (198 2 (:DEFINITION FIND-UNSAT-INDEX))
 (189 3 (:DEFINITION EVALUATE-CLAUSE))
 (141 3 (:DEFINITION EVALUATE-LITERAL))
 (104 1 (:DEFINITION EVALUATE-FORMULA-FAL))
 (90 6 (:DEFINITION MEMBER-EQUAL))
 (72 12 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-HAS-LITERALS))
 (48 48 (:TYPE-PRESCRIPTION CLAUSE-OR-ASSIGNMENT-P))
 (27 27 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (27 3 (:DEFINITION HONS-GET))
 (24 24 (:REWRITE UNIT-PROPAGATION-MONOTONICITY))
 (24 6 (:REWRITE SUBSETP-PRESERVES-EVALUATE-CLAUSE-NIL))
 (24 6 (:REWRITE CLAUSE-OR-ASSIGNMENT-P-CDR))
 (24 3 (:DEFINITION HONS-ASSOC-EQUAL))
 (23 23 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE DEFAULT-CDR))
 (18 6 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER))
 (15 15 (:REWRITE MEMBER-EQUAL-MONOTONE))
 (12 6 (:TYPE-PRESCRIPTION TRUE-LISTP-LOOKUP-FORMULA-INDEX))
 (12 3 (:REWRITE ZP-OPEN))
 (11 11 (:TYPE-PRESCRIPTION EVALUATE-CLAUSE))
 (9 9 (:REWRITE DEFAULT-+-2))
 (9 9 (:REWRITE DEFAULT-+-1))
 (6 6 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION FORMULA-FAL-P))
 (6 6 (:REWRITE UNIT-PROPAGATION-CORRECT))
 (6 6 (:REWRITE TRUTH-MONOTONE-CLAUSE))
 (6 6 (:REWRITE NOT-CONFLICTING-LITERALSP-IMPLIES-NEGATE-IS-NOT-MEMBER-SUBSET))
 (6 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE TRUTH-MONOTONE-FORMULA-FAL))
 (4 4 (:DEFINITION UNDEFP$INLINE))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE EVALUATE-FORMULA-FAL-T-IMPLIES-EVALUATE-CLAUSE-T))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:DEFINITION HONS-EQUAL))
 (1 1 (:REWRITE TRUTH-MONOTONE))
 )
