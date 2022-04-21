contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() {
    stor1 = msg.sender
    stor0 = 0
    return code.data[64 len 666]
}



// =====================  Runtime code  =====================


uint256 value;
address stor1;

function value() {
    return value
}

function kill() {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function sub_0b4745ec(?) {
    value = arg1
}

function sub_7b59193f(?) {
    if value > 10:
        return 'Value over 10'
    if value >= 10:
        return 'Value = 10'
    return 'Value under 10'
}



}
