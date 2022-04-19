contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 5574]




// =====================  Runtime code  =====================


array of address bOPs;

function BOPs(uint256 arg1) {
    require arg1 < bOPs.length
    return address(bOPs[arg1])
}

function getBOPCount() {
    return bOPs.length
}

function _fallback() payable {
    revert
}

function newBurnableOpenPayment(address arg1, uint256 arg2, uint256 arg3, string arg4, string arg5) payable {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len 4377] = code.data[1154 len 4377]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 4537] = arg1
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 4569] = arg2
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 4601] = arg3
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 4633] = 160
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 4697] = arg4.length
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 4729 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 4665] = arg4.length + 192
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 4729] = arg5.length
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 4761 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        create contract with callvalue wei
                        code: code.data[1154 len 4377], address(arg1), arg2, arg3, Array(len=arg4.length + 192, data=arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 4729 len arg5.length + arg4.length + -ceil32(arg4.length) + 32])
    else:
        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 4761] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 4793 len arg5.length % 32]
        create contract with callvalue wei
                        code: code.data[1154 len 4377], address(arg1), arg2, arg3, Array(len=arg4.length + 192, data=arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 4729 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64])
    require create.new_address
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg1
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 352 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 352] = arg5.length
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 384 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        emit NewBOP(address(arg1), arg2, arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 352 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 192, address(create.new_address));
    else:
        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 384] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 416 len arg5.length % 32]
        emit NewBOP(address(arg1), arg2, arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 352 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 192, address(create.new_address));
    bOPs.length++
    if not bOPs.length <= bOPs.length + 1:
        idx = bOPs.length + 1
        while bOPs.length > idx:
            uint256(bOPs[idx]) = 0
            idx = idx + 1
            continue 
    address(bOPs[bOPs.length]) = address(create.new_address)
    return address(create.new_address)
}



}
