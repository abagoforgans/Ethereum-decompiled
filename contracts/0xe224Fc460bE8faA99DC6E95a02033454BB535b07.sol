contract main {


// =======================  Init code  ======================


uint256 stor3;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[63 len 1092]
}



// =====================  Runtime code  =====================


uint256 sub_dfe2a4bd;
address tokenAddress;
uint256 stor1;
address sub_33ef2aafAddress;
address owner;

function sub_33ef2aaf(?) {
    return sub_33ef2aafAddress
}

function owner() {
    return owner
}

function sub_dfe2a4bd(?) {
    return sub_dfe2a4bd
}

function token() {
    return address(tokenAddress)
}

function setTokenPerEth(uint256 arg1) {
    require msg.sender == owner
    sub_dfe2a4bd = arg1
}

function setToken(address arg1) {
    require msg.sender == owner
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function _fallback() {
    if msg.value > 0:
        require sub_dfe2a4bd
        if msg.value / sub_dfe2a4bd > 0:
            call sub_33ef2aafAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require ext_code.size(address(tokenAddress))
                call address(tokenAddress).0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args msg.sender, msg.value / sub_dfe2a4bd
                require ext_call.success
}



}
