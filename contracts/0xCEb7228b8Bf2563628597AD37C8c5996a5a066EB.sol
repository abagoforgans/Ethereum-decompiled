contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    stor1 = msg.sender
    return code.data[64 len 328]
}



// =====================  Runtime code  =====================


uint256 count;
address stor1;

function getCount() {
    return count
}

function kill() {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function increment() {
    if stor1 == msg.sender:
        count++
}



}
