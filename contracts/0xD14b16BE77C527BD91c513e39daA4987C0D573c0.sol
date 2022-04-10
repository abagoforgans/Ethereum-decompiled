contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 495]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
    if msg.value - 10^15 > 0:
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function claimToken(address arg1, uint256 arg2) {
    if eth.balance(arg1) < 10^15:
        return -1
    if arg2 <= 0:
        return -1
    delegate arg1 with:
       funct (Mask(32, 224, sha3('transfer(address,uint256)')) >> 224)
         gas gas_remaining - 50 wei
        args 
    require delegate.return_code
    require delegate.return_data[0]
    return 1
}



}
