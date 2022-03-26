contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() payable {
    stor2 = code.data[684 len 20]
    return code.data[110 len 562]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 size;
address stor2;

function getSize() {
    return size
}

function _fallback() {
    revert 
}

function add(uint256 arg1) {
    require ext_code.size(stor2)
    call stor2.getTimestamp(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require not stor0[arg1]
    stor0[arg1] = 1
    size++
    emit Series(ext_call.return_data[0], arg1, size + 1);
}



}
