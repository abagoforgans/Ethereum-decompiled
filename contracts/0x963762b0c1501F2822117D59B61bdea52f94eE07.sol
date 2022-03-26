contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = code.data[787 len 20]
    return code.data[110 len 665]
}



// =====================  Runtime code  =====================


mapping of uint256 size;
address stor1;

function getSize(address arg1) {
    return size[address(arg1)]
}

function _fallback() {
    revert 
}

function add(uint256 arg1) {
    require msg.sender == stor1
    require ext_code.size(stor1)
    call stor1.0x4378a6e3 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    size[ext_call.return_data[12 len 20]]++
    emit Series(ext_call.return_data[32], block.timestamp, arg1, address(ext_call.return_data[0]), size[ext_call.return_data[12 len 20]]);
}



}
