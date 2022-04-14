contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 651]




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1) {
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 1
    require ext_code.size(arg1)
    call arg1.0x3ccfd60b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit withdrawn(arg1);
    stor0[address(msg.sender)] = 0
}



}
