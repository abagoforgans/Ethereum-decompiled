contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = code.data[462 len 20]
    return code.data[110 len 340]
}



// =====================  Runtime code  =====================


uint256 size;
address stor1;

function getSize() {
    return size
}

function _fallback() {
    revert 
}

function add(uint256 arg1) {
    require msg.sender == stor1
    size++
    emit 0xa4ff89a7: arg1, size
}



}
