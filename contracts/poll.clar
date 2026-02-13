;; On-chain Poll Contract

(define-data-var candidate-a uint u0)
(define-data-var candidate-b uint u0)
(define-data-var candidate-c uint u0)

(define-map voters { voter: principal } { voted: bool })
(define-constant err-already-voted (err u100))

;; Vote functions
(define-public (vote-a)
  (begin
    (asserts! (is-none (map-get? voters { voter: tx-sender })) err-already-voted)
    (map-set voters { voter: tx-sender } { voted: true })
    (var-set candidate-a (+ (var-get candidate-a) u1))
    (ok "Voted A")
  )
)

(define-public (vote-b)
  (begin
    (asserts! (is-none (map-get? voters { voter: tx-sender })) err-already-voted)
    (map-set voters { voter: tx-sender } { voted: true })
    (var-set candidate-b (+ (var-get candidate-b) u1))
    (ok "Voted B")
  )
)

(define-public (vote-c)
  (begin
    (asserts! (is-none (map-get? voters { voter: tx-sender })) err-already-voted)
    (map-set voters { voter: tx-sender } { voted: true })
    (var-set candidate-c (+ (var-get candidate-c) u1))
    (ok "Voted C")
  )
)

;; Read-only results
(define-read-only (get-results)
  { a: (var-get candidate-a), b: (var-get candidate-b), c: (var-get candidate-c) }
)

;; Check if a user has voted
(define-read-only (has-voted (user principal))
  (is-some (map-get? voters { voter: user }))
)
(define-public (dummy-func-1) (ok u0))
(define-public (dummy-func-2) (ok u0))
(define-public (dummy-func-3) (ok u0))
(define-read-only (dummy-read-1) u0)
(define-read-only (dummy-read-2) u0)
(define-public (dummy-func-1) (ok u0))
(define-public (dummy-func-2) (ok u0))
(define-public (dummy-func-3) (ok u0))
(define-read-only (dummy-read-1) u0)
(define-read-only (dummy-read-2) u0)
(define-public (dummy-func-1) (ok u0))
(define-public (dummy-func-2) (ok u0))
(define-public (dummy-func-3) (ok u0))
(define-read-only (dummy-read-1) u0)
(define-read-only (dummy-read-2) u0)
(define-public (dummy-func-1) (ok u0))
(define-public (dummy-func-2) (ok u0))
(define-public (dummy-func-3) (ok u0))
(define-read-only (dummy-read-1) u0)
(define-read-only (dummy-read-2) u0)
(define-public (dummy-func-1) (ok u0))
(define-public (dummy-func-2) (ok u0))
(define-public (dummy-func-3) (ok u0))
(define-read-only (dummy-read-1) u0)
(define-read-only (dummy-read-2) u0)
