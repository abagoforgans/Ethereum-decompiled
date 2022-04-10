contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 615]
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
    if eth.balance(msg.sender) < 10^15:
        emit 0xfffaa7fb: arg2, msg.sender, this.address
    else:
        if arg2 <= 0:
            emit 0xfffaa7fb: arg2, msg.sender, this.address
        else:
            call arg1 with:
               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                 gas gas_remaining - 25050 wei
                args stor0, arg2
            require ext_call.success
            emit 0x1ae4afc4: arg2, msg.sender, this.address
}



}
