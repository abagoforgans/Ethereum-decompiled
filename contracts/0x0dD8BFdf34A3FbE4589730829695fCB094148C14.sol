contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() payable {
    stor2 = code.data[758 len 20]
    return code.data[110 len 636]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 size;
address stor2;

function getSize(uint256 arg1) {
    return size[arg1]
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
    size[ext_call.return_data[32]]++
    emit Series(ext_call.return_data[64], arg1, ext_call.return_data[32], size[ext_call.return_data[32]] + 1);
}



}
