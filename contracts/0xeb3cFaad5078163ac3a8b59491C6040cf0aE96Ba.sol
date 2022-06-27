contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_65bd6b7a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if 0 >= arg1.length:
        revert with 0, 'not enough ids'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _36 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xefef39a100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = _36
        require ext_code.size(stor1)
        call stor1.purchase(uint256 arg1) with:
           value 10^17 wei
             gas gas_remaining wei
            args _36
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 128] = 0x67025dcf00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = msg.sender
    mem[(32 * arg1.length) + 164] = 64
    mem[(32 * arg1.length) + 196] = arg1.length
    s = 0
    while arg1.length < 32 * arg1.length:
        mem[(34 * arg1.length) + 228] = mem[arg1.length + 128]
        s = arg1.length + 32
        continue 
    require ext_code.size(stor0)
    call stor0.transferAll(address arg1, uint256[] arg2) with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg1.length, data=mem[(32 * arg1.length) + 228 len 32 * arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg1.length
    _60 = mem[128]
    mem[(32 * arg1.length) + 132] = mem[128]
    require ext_code.size(stor0)
    call stor0.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args _60
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'something went wrong'
    require arg1.length - 1 < arg1.length
    require ext_code.size(stor0)
    call stor0.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args mem[(32 * arg1.length - 1) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'something went wrong'
}



}
