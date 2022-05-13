contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 secret;
uint256 hashSecret;
uint256 unlockTime;

function unlockTime() {
    return unlockTime
}

function secret() {
    return secret
}

function hashSecret() {
    return hashSecret
}

function _fallback() payable {
    if not stor0:
        stor0 = msg.sender
    require stor0 == msg.sender
}

function refund() {
    require block.timestamp >= unlockTime
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function resolve(bytes32 arg1) {
    hash = sha256hash(arg1) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require hash == hashSecret
    secret = arg1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
