contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = code.data[470 len 20]
    return code.data[110 len 348]
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
    emit Series(block.timestamp, arg1, size);
}



}
