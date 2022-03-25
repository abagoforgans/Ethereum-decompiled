contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = code.data[1111 len 32]
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor0 = code.data[1143 len 32]
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[198 len 913]
}



// =====================  Runtime code  =====================


uint256 sub_dfe2a4bd;
address tokenAddress;
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
    return tokenAddress
}

function setTokenPerEth(uint256 arg1) {
    require msg.sender == owner
    sub_dfe2a4bd = arg1
}

function _fallback() {
    if msg.value > 0:
        require sub_dfe2a4bd
        if msg.value / sub_dfe2a4bd > 0:
            call sub_33ef2aafAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args msg.sender, msg.value / sub_dfe2a4bd
                require ext_call.success
}



}
