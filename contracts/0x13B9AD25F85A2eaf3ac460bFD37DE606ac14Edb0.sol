contract main {




// =====================  Runtime code  =====================


address stor0;

function sub_baaae64e(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        mem[(32 * arg1.length) + 128] = Mask(32, 224, sha3('getTokens()'))
        delegate arg2 with:
           funct (Mask(32, 224, sha3('getTokens()')) >> 224)
             gas gas_remaining wei
            args 
        idx = idx + 1
        continue 
    require arg1.length < arg1.length
    require arg1.length < arg1.length
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[(32 * arg1.length) + 128]), eth.balance(mem[(32 * arg1.length) + 128])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1.length < arg1.length
    require arg1.length < arg1.length
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), stor0, eth.balance(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(stor0)
}

function C() {
  stop
}

function A() {
    stor0 = msg.sender
}

function _fallback() payable {
    revert
}



}
