contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    require not msg.value
    return code.data[38 len 274]
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
    revert 
}

function sub_753c0325(?) {
    count--
    if count - 1 < 0:
        stor0 = 0
}

function sub_c33602d3(?) {
    count++
    if count + 1 > 0:
        stor0 = 1
}



}
