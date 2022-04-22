contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1492]




// =====================  Runtime code  =====================


uint8 stor0;

function _fallback() payable {
    revert
}

function sub_d2b65235(?) {
    require ext_code.size(arg3)
    call arg3.0x2c5ec52 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg3)
    call arg3.0x31558dec with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf123f237 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    return address(ext_call.return_data[0]), 
           0,
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0] * arg1
}

function sub_f0aa8abb(?) {
    require not stor0
    stor0 = 1
    require ext_code.size(arg3)
    call arg3.0x2c5ec52 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg3)
    call arg3.0x31558dec with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf123f237 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transferFromOrigin(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), ext_call.return_data[0] * arg1
    require ext_call.success
    require ext_call.return_data[0]
    stor0 = 0
    return 1
}



}
