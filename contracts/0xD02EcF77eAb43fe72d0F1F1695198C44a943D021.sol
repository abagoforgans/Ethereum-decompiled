contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_99b0ce52(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor0)
    if not arg3:
        call stor0.0xbb7f4973 with:
             gas gas_remaining wei
            args 11, arg1 << 240, uint32(uint32(10000 * arg2) / 10000)
    else:
        call stor0.0xbb7f4973 with:
             gas gas_remaining wei
            args 1, arg1 << 240, uint32(uint32(100 * arg2) / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor0)
        call stor0.0xbb7f4973 with:
             gas gas_remaining wei
            args 11, arg1 << 240, uint32(uint32(9900 * arg2) / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
