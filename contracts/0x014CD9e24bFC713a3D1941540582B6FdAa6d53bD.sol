contract main {




// =====================  Runtime code  =====================


const lrcAddress = 0xef68e7c694f40c8202821edf525de3782458639f

const feeHolderAddress = 0x5beaea36efa78f43a6d61145817fdff6a9929e60


function _fallback() payable {
    revert with 0, 'UNSUPPORTED'
}

function burn(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x5beaea36efa78f43a6d61145817fdff6a9929e60)
    staticcall 0x5beaea36efa78f43a6d61145817fdff6a9929e60.0x4566f48a with:
            gas gas_remaining wei
           args address(arg1), 0x5beaea36efa78f43a6d61145817fdff6a9929e60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x5beaea36efa78f43a6d61145817fdff6a9929e60)
    call 0x5beaea36efa78f43a6d61145817fdff6a9929e60.0x787748a7 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'WITHDRAWAL_FAILURE'
    if arg1 != 0xef68e7c694f40c8202821edf525de3782458639f:
        revert with 0, 'UNIMPLEMENTED'
    call 0xef68e7c694f40c8202821edf525de3782458639f with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not ext_call.success:
        revert with 0, 'BURN_FAILURE'
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'BURN_FAILURE'
        if not ext_call.return_data[0]:
            revert with 0, 'BURN_FAILURE'
    return 1
}



}
