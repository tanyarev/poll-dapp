# Stacks Poll DApp

Simple on-chain poll DApp with 3 voting options on Stacks blockchain.

## Repository Structure


## Contract

- `poll.clar` — on-chain poll contract
- Public functions:
  - `vote-a` / `vote-b` / `vote-c` → cast your vote
  - `get-results()` → view current results
  - `has-voted(user)` → check if user has voted

## Frontend

- Uses `@stacks/connect` for wallet connection
- Uses `@stacks/transactions` to call contract functions
- UI allows voting A/B/C after connecting wallet

## Running Locally

1. Go to frontend folder:
2. Install dependencies:
3. Start the project:
> Browser opens localhost with the Poll DApp
2026-02-14 21:03:27 - adjusted validation
2026-02-14 21:04:07 - adjusted validation
2026-02-14 21:04:21 - added comment
2026-02-14 21:51:06 - added comment
2026-02-14 21:51:25 - added comment
2026-02-14 21:51:31 - adjusted validation
