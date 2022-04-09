contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    require not msg.value
    return code.data[40 len 772]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 getBalance;

function GetBalance() {
    return getBalance
}

function _fallback() payable {
    revert
}

function sub_340949ea(?) {
    getBalance += arg1
}

function sub_d950d336(?) {
    if arg1 == stor0:
        stor0 = arg2
    emit 0xa8edc28e: msg.sender, 0x100000000000000000000000000000000000000000000000000000000000000
    revert
}

function sub_3ba38f07(?) {
    if arg1 != stor0:
        emit 0xa8edc28e: msg.sender, 0x100000000000000000000000000000000000000000000000000000000000000
    else:
        if getBalance >= arg2:
            getBalance -= arg2
        emit 0xa8edc28e: msg.sender, 0x200000000000000000000000000000000000000000000000000000000000000
    revert
}



}
