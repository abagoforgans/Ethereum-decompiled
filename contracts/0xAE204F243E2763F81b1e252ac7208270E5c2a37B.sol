contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[93 len 3211]
}



// =====================  Runtime code  =====================


address owner;
address _dbAddress;

function _db() {
    return _dbAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_e90dfdfa(?) {
    require msg.sender == owner
    _dbAddress = arg1
}

function transfer(address arg1, uint256 arg2) {
    call _dbAddress with:
       funct Mask(32, 224, sha3('decrease_balance(address,uint256', ')')) >> 224
         gas gas_remaining - 25710 wei
        args msg.sender, arg2
    require ext_call.success
    call _dbAddress with:
       funct Mask(32, 224, sha3('increase_balance(address,uint256', ')')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg1), arg2
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit Transfer('', msg.sender, arg1, arg2);
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    call _dbAddress with:
       funct Mask(32, 224, sha3('decrease_balance(address,uint256', ')')) >> 224
         gas gas_remaining - 25710 wei
        args msg.sender, arg2
    require ext_call.success
    mem[ceil32(arg3.length) + 164] = arg2
    call _dbAddress with:
       funct Mask(32, 224, sha3('increase_balance(address,uint256', ')')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg1), arg2
    if ext_code.size(arg1) > 0:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        if arg3.length:
            mem[ceil32(arg3.length) + 260] = mem[128]
            mem[ceil32(arg3.length) + 292 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 260 len arg3.length])
        require ext_call.success
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 160] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 192] = mem[128]
        mem[ceil32(arg3.length) + 224 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit Transfer(Array(len=arg3.length, data=mem[ceil32(arg3.length) + 192 len arg3.length]), msg.sender, arg1, arg2);
}



}
