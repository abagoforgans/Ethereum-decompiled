contract main {




// =====================  Runtime code  =====================


#
#  - buy3(address[] arg1, address[] arg2, uint256[] arg3, bytes arg4, bytes arg5, bytes arg6)
#
mapping of uint256 balances;
mapping of uint256 tokenBalances;

function balances(address arg1) {
    return balances[arg1]
}

function tokenBalances(address arg1, address arg2) {
    return tokenBalances[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sumWeightOfMultiToken(address arg1) {
    require ext_code.size(arg1)
    call arg1.changeableTokenCount() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = mem[126 len 2]
    s = 0
    while idx > 0:
        require ext_code.size(arg1)
        call arg1.tokens(uint256 arg1) with:
             gas gas_remaining wei
            args (idx - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(arg1)
        call arg1.weights(address arg1) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx - 1
        s = ext_call.return_data[0] + s
        continue 
    return s
}

function buyOne(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    mem[128 len arg4.length] = arg4[all]
    require msg.value + balances[msg.sender] >= balances[msg.sender]
    balances[msg.sender] += msg.value
    mem[ceil32(arg4.length) + 132] = this.address
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg4.length) + 128 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
           value arg3 wei
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 132 len arg4.length - 4]
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 128] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
        call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
           value arg3 wei
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 132 len floor32(arg4.length) + 28]
    require ext_call.success
    require arg3 <= balances[msg.sender]
    balances[msg.sender] -= arg3
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require tokenBalances[msg.sender][address(arg1)] >= tokenBalances[msg.sender][address(arg1)]
}

function deposit(address arg1, address[] arg2, uint256[] arg3) payable {
    if msg.value > 0:
        require msg.value + balances[address(arg1)] >= balances[address(arg1)]
        balances[address(arg1)] += msg.value
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        call address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[132] = this.address
        mem[164] = cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        call address(cd[((32 * idx) + arg2 + 36)]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, cd[((32 * idx) + arg3 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require cd[((32 * idx) + arg3 + 36)] + ext_call.return_data[0] >= ext_call.return_data[0]
        mem[100] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        call address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == cd[((32 * idx) + arg3 + 36)] + ext_call.return_data[0]
        require cd[((32 * idx) + arg3 + 36)] + tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])] >= tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = sha3(address(arg1), 1)
        tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        s = ext_call.return_data[0]
        s = cd[((32 * idx) + arg3 + 36)]
        s = address(cd[((32 * idx) + arg2 + 36)])
        idx = idx + 1
        continue 
}

function withdraw(address arg1, uint256 arg2, address[] arg3, uint256[] arg4) {
    if arg2 > 0:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg2 <= balances[msg.sender]
        balances[msg.sender] -= arg2
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
        require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
        call address(cd[((32 * idx) + arg3 + 36)]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[132] = cd[((32 * idx) + arg4 + 36)]
        require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
        call address(cd[((32 * idx) + arg3 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), cd[((32 * idx) + arg4 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require cd[((32 * idx) + arg4 + 36)] <= ext_call.return_data[0]
        mem[100] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
        call address(cd[((32 * idx) + arg3 + 36)]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0] - cd[((32 * idx) + arg4 + 36)]
        require cd[((32 * idx) + arg4 + 36)] <= tokenBalances[msg.sender][address(cd[((32 * idx) + arg3 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg3 + 36)])
        mem[32] = sha3(msg.sender, 1)
        tokenBalances[msg.sender][address(cd[((32 * idx) + arg3 + 36)])] -= cd[((32 * idx) + arg4 + 36)]
        s = ext_call.return_data[0]
        s = cd[((32 * idx) + arg4 + 36)]
        s = address(cd[((32 * idx) + arg3 + 36)])
        idx = idx + 1
        continue 
}

function buy1(address[] arg1, address[] arg2, uint256[] arg3, bytes arg4) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len arg4.length] = arg4[all]
    require msg.value + balances[msg.sender] >= balances[msg.sender]
    balances[msg.sender] += msg.value
    require 0 < arg1.length
    require 0 < arg2.length
    require 0 < arg3.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + 224] = 0x18c1fc6800000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + 228] = mem[140 len 20]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + 260] = mem[(32 * arg1.length) + 172 len 20]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + 388 len ceil32(arg4.length)] = arg4[all], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + arg4.length + 224 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        require ext_code.size(this.address)
        call this.address.0x18c1fc68 with:
             gas gas_remaining wei
            args mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + 228 len 64], mem[(32 * arg2.length) + (32 * arg1.length) + 192], 128, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + arg4.length + 224 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
    else:
        mem[floor32(arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + 388] = mem[floor32(arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + -(arg4.length % 32) + 420 len arg4.length % 32]
        require ext_code.size(this.address)
        call this.address.0x18c1fc68 with:
             gas gas_remaining wei
            args mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + 228 len 64], mem[(32 * arg2.length) + (32 * arg1.length) + 192], Array(len=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + arg4.length + 224 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, data=mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(arg4.length)) + 388 len floor32(arg4.length) + -ceil32(arg4.length) + 32]), arg4.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy2(address[] arg1, address[] arg2, uint256[] arg3, bytes arg4, bytes arg5) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len arg4.length] = arg4[all]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + 224] = arg5.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + 256 len arg5.length] = arg5[all]
    require msg.value + balances[msg.sender] >= balances[msg.sender]
    balances[msg.sender] += msg.value
    require 0 < arg1.length
    require 0 < arg2.length
    require 0 < arg3.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + 260] = mem[140 len 20]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + 292] = mem[(32 * arg1.length) + 172 len 20]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + 420 len ceil32(arg4.length)] = arg4[all], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + arg4.length + 224 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        require ext_code.size(this.address)
        call this.address.0x18c1fc68 with:
             gas gas_remaining wei
            args mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + 260 len 64], mem[(32 * arg2.length) + (32 * arg1.length) + 192], 128, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + arg4.length + 224 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
    else:
        mem[floor32(arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + 420] = mem[floor32(arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 452 len arg4.length % 32]
        require ext_code.size(this.address)
        call this.address.0x18c1fc68 with:
             gas gas_remaining wei
            args mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + 260 len 64], mem[(32 * arg2.length) + (32 * arg1.length) + 192], Array(len=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + arg4.length + 224 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, data=mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(arg4.length)) + ceil32(arg5.length) + 420 len floor32(arg4.length) + -ceil32(arg4.length) + 32]), arg4.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < arg1.length
    require 1 < arg2.length
    require 1 < arg3.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + 256] = 0x18c1fc6800000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + 260] = mem[172 len 20]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + 292] = mem[(32 * arg1.length) + 204 len 20]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + 420 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + arg5.length + 256 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        require ext_code.size(this.address)
        call this.address.0x18c1fc68 with:
             gas gas_remaining wei
            args mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + 260 len 64], mem[(32 * arg2.length) + (32 * arg1.length) + 224], 128, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + arg5.length + 256 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256
    else:
        mem[floor32(arg5.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + 420] = mem[floor32(arg5.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 452 len arg5.length % 32]
        require ext_code.size(this.address)
        call this.address.0x18c1fc68 with:
             gas gas_remaining wei
            args mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + ceil32(arg5.length) + 260 len 64], mem[(32 * arg2.length) + (32 * arg1.length) + 224], Array(len=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + arg5.length + 256 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, data=mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + ceil32(arg4.length) + (2 * ceil32(arg5.length)) + 420 len floor32(arg5.length) + -ceil32(arg5.length) + 32]), arg5.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
