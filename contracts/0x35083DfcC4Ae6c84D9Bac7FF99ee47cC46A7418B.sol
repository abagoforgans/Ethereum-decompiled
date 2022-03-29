contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    require not msg.value
    return code.data[38 len 262]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 count;

function count() {
    return count
}

function state() {
    return bool(stor0)
}

function _fallback() payable {
    if 1 == msg.value:
        count++
    else:
        require 2 == msg.value
        count--
    if count > 0:
        stor0 = 1
    if count < 0:
        stor0 = 0
}



}
