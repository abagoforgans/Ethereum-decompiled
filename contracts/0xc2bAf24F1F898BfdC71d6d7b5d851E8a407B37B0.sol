contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    require not msg.value
    stor2 = msg.sender
    return code.data[67 len 374]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 count;
address stor2;

function count() {
    return count
}

function state() {
    return bool(stor0)
}

function kill() {
    if stor2 != msg.sender:
    selfdestruct(stor2)
}

function _fallback() payable {
    if 10^15 == msg.value:
        count++
        if count > 0:
            stor0 = 1
        if count < 0:
            stor0 = 0
    else:
        if 2 * 10^15 == msg.value:
            count--
        if count > 0:
            stor0 = 1
        if count < 0:
            stor0 = 0
}



}
