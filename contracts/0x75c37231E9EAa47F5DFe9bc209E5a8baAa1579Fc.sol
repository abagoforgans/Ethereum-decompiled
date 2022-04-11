contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 559]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ReceiveEth(msg.value, this.address);
}

function claimToken(address arg1, uint256 arg2) {
    if eth.balance(msg.sender) < 10^16:
        emit 0xf4fc7b5d: arg2, arg1
    else:
        if arg2 <= 0:
            emit 0xf4fc7b5d: arg2, arg1
        else:
            call arg1 with:
               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                 gas gas_remaining - 25050 wei
                args stor0, arg2
            require ext_call.success
            emit Claim(arg2, arg1);
}



}
