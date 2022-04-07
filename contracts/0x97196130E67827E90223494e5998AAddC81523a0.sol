contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0xb2cde665609bff54f91fc85939da91a45703cc54
    return code.data[91 len 513]
}



// =====================  Runtime code  =====================


address owner;
address userAddress;

function user() {
    return userAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    if msg.value > 0:
        emit DepositMade(msg.sender, msg.value);
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if userAddress == msg.sender:
        if msg.value > 0:
            emit 0xcde0a1b2: msg.value
            call userAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}



}
