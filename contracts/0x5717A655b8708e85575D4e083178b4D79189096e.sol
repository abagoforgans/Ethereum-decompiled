contract main {




// =====================  Runtime code  =====================


const ConstantinopleCheckFunction = (1 << block.timestamp)


function _fallback() payable {
    revert
}

function IsItConstantinople() {
    mem[132] = 0, mem[132 len 28]
    mem[132] = mem[160 len 4]
    call this.address.mem[132 len 4] with:
         gas gas_remaining wei
        args mem[136 len 28]
    emit 0x27cb433a: bool(ext_call.success)
    return bool(ext_call.success)
}



}
