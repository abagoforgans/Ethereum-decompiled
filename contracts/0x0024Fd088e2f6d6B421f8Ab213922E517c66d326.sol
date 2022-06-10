contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    require tx.origin == 0x54c676cddc496ecbd20511a5c143cac2cbca6b3f
}

function sub_4ed85961(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 0 < arg1.length
    require 2 < arg1.length
    require ext_code.size(arg2)
    call arg2.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[128]), address(mem[192]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_cf93ebe3(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 2 < arg1.length
    require 4 < arg1.length
    require ext_code.size(arg2)
    call arg2.getReturn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(mem[192]), address(mem[256]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
