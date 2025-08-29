# FHE Private Decentralized Insurance

A demo insurance dApp built on **Zama's FHEVM**.  
All user claims, risk parameters, and payouts are encrypted end-to-end while keeping settlement auditable.  

## Features
- 🔒 Encrypted claims: accident/health/flight delay data stay private.  
- ⚖️ Fair & transparent: settlement logic runs on FHE, outcomes are verifiable.  
- 🤝 User protection: only aggregated claim stats are visible to DAO members.  
- 🧩 Composable with DeFi: integrate with stablecoins and liquidity pools.  

## How it works
1. User submits an encrypted claim with supporting details.  
2. Smart contract stores ciphertext and triggers encrypted evaluation.  
3. Outcome (approve/reject + payout amount) is computed via FHE without exposing raw data.  
4. DAO treasury executes payout transparently.  

## Contracts
- `contracts/Insurance.sol` — demo contract for encrypted claim submission and settlement.  

## Roadmap
- Frontend demo for policy purchase & encrypted claim submission.  
- Add oracle integration for external encrypted risk data (e.g., weather, flights).  
- Support parametric insurance with encrypted inputs.  

## Disclaimer
This is a non-production demo to showcase **FHEVM** usage in insurance.  
Security audits and full actuarial modeling are out of scope.
