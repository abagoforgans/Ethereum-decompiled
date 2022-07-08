contract main {




// =====================  Runtime code  =====================


mapping of uint256 claim;

function getClaim(address arg1, address arg2, bytes32 arg3) {
    return claim[address(arg1)][address(arg2)][arg3]
}

function registry(address arg1, address arg2, bytes32 arg3) {
    return claim[arg1][arg2][arg3]
}

function _fallback() payable {
    revert
}

function setClaim(address arg1, bytes32 arg2, bytes32 arg3) {
    claim[address(msg.sender)][address(arg1)][arg2] = arg3
    emit ClaimSet(arg3, block.timestamp, msg.sender, arg1, arg2);
}

function setSelfClaim(bytes32 arg1, bytes32 arg2) {
    claim[address(msg.sender)][address(msg.sender)][arg1] = arg2
    emit ClaimSet(arg2, block.timestamp, msg.sender, msg.sender, arg1);
}

function removeClaim(address arg1, address arg2, bytes32 arg3) {
    require msg.sender == arg1
    claim[address(arg1)][address(arg2)][arg3] = 0
    emit ClaimRemoved(block.timestamp, msg.sender, arg2, arg3);
}



}
