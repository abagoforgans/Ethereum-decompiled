contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() payable {
    stor2 = code.data[832 len 20]
    return code.data[110 len 710]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 size;
address stor2;

function getSize(address arg1) {
    return size[address(arg1)]
}

function _fallback() {
    revert 
}

function add(uint256 arg1) {
    require ext_code.size(stor2)
    call stor2.getAttributes(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[64]
    require not stor0[arg1]
    stor0[arg1] = 1
    size[address(ext_call.return_data[0])]++
    emit Series(ext_call.return_data[32], ext_call.return_data[64], arg1, address(ext_call.return_data[0]), size[address(ext_call.return_data[0])] + 1);
}



}
