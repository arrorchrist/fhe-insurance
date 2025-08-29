// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title FHE Insurance Demo
 * @notice Minimal demo showing how encrypted claims could be stored
 *         and evaluated using Zama's FHEVM.
 */
contract Insurance {
    struct EncryptedClaim {
        address claimant;
        bytes encryptedData; // claim details encrypted
        uint256 timestamp;
        bool settled;
    }

    EncryptedClaim[] public claims;

    event ClaimSubmitted(address indexed claimant, uint256 claimId);
    event ClaimSettled(uint256 claimId, bool approved, uint256 payout);

    function submitClaim(bytes calldata encryptedData) external {
        claims.push(EncryptedClaim({
            claimant: msg.sender,
            encryptedData: encryptedData,
            timestamp: block.timestamp,
            settled: false
        }));
        emit ClaimSubmitted(msg.sender, claims.length - 1);
    }

    /// @notice In real FHEVM, settlement would compute on encrypted data.
    function settleClaim(uint256 claimId, bool approved, uint256 payout) external {
        require(claimId < claims.length, "Invalid claim");
        require(!claims[claimId].settled, "Already settled");

        claims[claimId].settled = true;

        emit ClaimSettled(claimId, approved, payout);
    }
}
