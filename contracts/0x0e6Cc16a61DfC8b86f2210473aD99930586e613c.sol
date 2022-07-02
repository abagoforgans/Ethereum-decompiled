contract main {




// =====================  Runtime code  =====================


const getSaiTubAddress = 0x448a5065aebb8e423f0896e6c5d525c040f59af3


function _fallback() payable {
    revert
}

function sub_5c2a303b(?) {
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0] != -1:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call address(ext_call.return_data[0]).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
}



}
