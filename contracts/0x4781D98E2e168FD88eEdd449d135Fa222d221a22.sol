contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = 150 * code.data[1348 len 32] / 125
    stor2 = code.data[1392 len 20]
    return code.data[130 len 1218]
}



// =====================  Runtime code  =====================


address owner;
uint256 tokensPerETH;
address tokenRewardAddress;

function tokenReward() {
    return tokenRewardAddress
}

function owner() {
    return owner
}

function TokensPerETH() {
    return tokensPerETH
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function changeEtherPrice(uint256 arg1) {
    require owner == msg.sender
    tokensPerETH = 150 * arg1 / 125
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    require ext_call.success
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value 10^18 * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit FundTransfer(owner, 10^18 * arg1 / 100, 0);
}

function _fallback() payable {
    require msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * tokensPerETH
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
