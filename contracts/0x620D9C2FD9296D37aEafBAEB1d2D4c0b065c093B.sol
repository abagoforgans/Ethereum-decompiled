contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x3df4c372a29376d2c8df33a1b5f001cd8d68b0e
    require not msg.value
    stor0 = msg.sender
    return code.data[98 len 947]
}



// =====================  Runtime code  =====================


#
#  - sub_6e629a9c(?)
#
address stor0;
address stor1;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function unvest(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    if stor0 == msg.sender:
        stor1 = address(arg1)
}

function sendTokens(uint256 arg1) {
    if stor0 == msg.sender:
        call stor1 with:
           funct Mask(32, 224, sha3('transfer(address, uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args stor0, arg1
        require ext_call.success
}

function sub_3f9628fa(?) {
    if stor0 == msg.sender:
        idx = 0
        while idx < arg1:
            mem[96] = Mask(32, 224, sha3('Mine()'))
            call stor1 with:
               funct Mask(32, 224, sha3('Mine()')) >> 224
                 gas gas_remaining - 25710 wei
            require ext_call.success
            idx = idx + 1
            continue 
}



}
