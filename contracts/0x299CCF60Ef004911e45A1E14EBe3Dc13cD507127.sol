contract main {




// =====================  Runtime code  =====================


array of struct ballots;

function ballots(uint256 arg1) {
    require arg1 < ballots.length
    return ballots[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_0b8710e4(?) {
    if not ballots.length:
        mem[(32 * ballots.length) + 128] = 32
        mem[(32 * ballots.length) + 160] = ballots.length
        mem[(32 * ballots.length) + 192 len floor32(ballots.length)] = mem[128 len floor32(ballots.length)]
        return memory
          from (32 * ballots.length) + 128
           len (96 * ballots.length) + 64
    mem[128] = address(ballots.field_0)
    idx = 128
    s = 0
    while (32 * ballots.length) + 96 > idx:
        mem[idx + 32] = ballots[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * ballots.length) + 192 len floor32(ballots.length)] = mem[128 len floor32(ballots.length)]
    return Array(len=ballots.length, data=mem[128 len floor32(ballots.length)], mem[(32 * ballots.length) + floor32(ballots.length) + 192 len (32 * ballots.length) - floor32(ballots.length)]), 
}

function sub_8d748bdb(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + (32 * arg2.length) + 3597 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + (32 * arg2.length) + 3597] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + (32 * arg2.length) + 3629 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        create contract with 0 wei
                        code: code.data[1284 len 3341], Array(len=arg1.length + 96, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + (32 * arg2.length) + 3597 len (32 * arg2.length) + arg1.length + -ceil32(arg1.length) + 32])
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + (32 * arg2.length) + 3597] = mem[floor32(arg1.length) + ceil32(arg1.length) + (32 * arg2.length) + -(arg1.length % 32) + 3629 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + (32 * arg2.length) + 3629] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + (32 * arg2.length) + 3661 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        create contract with 0 wei
                        code: code.data[1284 len 3341], Array(len=floor32(arg1.length) + 128, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + (32 * arg2.length) + 3597 len (32 * arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 64])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa7b49529 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    ballots.length++
    ballots[ballots.length].field_0 = address(create.new_address)
    return address(create.new_address)
}



}
