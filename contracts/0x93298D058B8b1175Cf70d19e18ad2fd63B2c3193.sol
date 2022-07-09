contract main {


// =======================  Init code  ======================


function _fallback() {
    mem[96 len -2466] = code.data[2780 len -2466]
    mem[64] = -2370
    mem[-2334] = mem[108 len 20]
    mem[-2270] = mem[172 len 20]
    mem[-2238] = mem[192]
    mem[-2206] = mem[mem[128] + 96]
    _8 = mem[mem[128] + 96]
    mem[-2174 len floor32(mem[mem[128] + 96])] = mem[mem[128] + 128 len floor32(mem[mem[128] + 96])]
    require ext_code.size(0x505b59d20dcfa6799e7b7c4832ca61987a2626ff)
    delegate 0x505b59d20dcfa6799e7b7c4832ca61987a2626ff.0x54015e4a with:
         gas gas_remaining wei
        args 0, mem[-2334], 160, mem[-2270 len (32 * _8) + 96]
    require delegate.return_code
    return code.data[314 len 2466]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_b2088555(?) {
    require ext_code.size(0x505b59d20dcfa6799e7b7c4832ca61987a2626ff)
    delegate 0x505b59d20dcfa6799e7b7c4832ca61987a2626ff.0xeb7f8a7 with:
         gas gas_remaining wei
        args 0, arg1
    require delegate.return_code
    return delegate.return_data[0]
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(0x505b59d20dcfa6799e7b7c4832ca61987a2626ff)
    delegate 0x505b59d20dcfa6799e7b7c4832ca61987a2626ff.0xc0ee0b8a with:
         gas gas_remaining wei
        args 0, 0, arg2, 96, arg3.length, arg3[all]
    require delegate.return_code
}

function sub_2d923501(?) {
    require ext_code.size(0x505b59d20dcfa6799e7b7c4832ca61987a2626ff)
    delegate 0x505b59d20dcfa6799e7b7c4832ca61987a2626ff.0xc19a6230 with:
         gas gas_remaining wei
        args 0, 0, address(arg1), 96, arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
    require delegate.return_code
}

function sub_1fb75dbf(?) {
    require ext_code.size(0x505b59d20dcfa6799e7b7c4832ca61987a2626ff)
    delegate 0x505b59d20dcfa6799e7b7c4832ca61987a2626ff.0x8e01728 with:
         gas gas_remaining wei
        args 0, 0, address(arg1), arg2, 224, arg4, arg5, arg3.length + 256, arg3.length, arg3[all], arg6.length, arg6[all]
    require delegate.return_code
}

function sub_2f25bb5c(?) {
    require ext_code.size(0x505b59d20dcfa6799e7b7c4832ca61987a2626ff)
    delegate 0x505b59d20dcfa6799e7b7c4832ca61987a2626ff.0x7546e43a with:
         gas gas_remaining wei
        args 0, 0, 160, (32 * arg1.length) + 192, arg3, (32 * arg1.length) + (32 * arg2.length) + 224, arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg4.length, arg4[all]
    require delegate.return_code
}

function sub_c519c77b(?) {
    mem[(32 * arg3.length) + 160 len arg6.length] = arg6[all]
    mem[(32 * arg3.length) + ceil32(arg6.length) + 160] = 0xfcc0e9a100000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + ceil32(arg6.length) + 420 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + ceil32(arg6.length) + 420] = arg6.length
    mem[(64 * arg3.length) + ceil32(arg6.length) + 452 len ceil32(arg6.length)] = arg6[all], mem[(32 * arg3.length) + arg6.length + 160 len ceil32(arg6.length) - arg6.length]
    if not arg6.length % 32:
        require ext_code.size(0x505b59d20dcfa6799e7b7c4832ca61987a2626ff)
        delegate 0x505b59d20dcfa6799e7b7c4832ca61987a2626ff.0xfcc0e9a1 with:
             gas gas_remaining wei
            args 0, address(arg1), address(arg2), 224, arg4, arg5, (32 * arg3.length) + 256, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + 420 len (32 * arg3.length) + arg6.length + -floor32(arg3.length) + 32]
    else:
        mem[floor32(arg6.length) + (64 * arg3.length) + ceil32(arg6.length) + 452] = mem[floor32(arg6.length) + (64 * arg3.length) + ceil32(arg6.length) + -(arg6.length % 32) + 484 len arg6.length % 32]
        require ext_code.size(0x505b59d20dcfa6799e7b7c4832ca61987a2626ff)
        delegate 0x505b59d20dcfa6799e7b7c4832ca61987a2626ff.0xfcc0e9a1 with:
             gas gas_remaining wei
            args 0, address(arg1), address(arg2), 224, arg4, arg5, (32 * arg3.length) + 256, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + ceil32(arg6.length) + floor32(arg3.length) + 420 len (32 * arg3.length) + floor32(arg6.length) + -floor32(arg3.length) + 64]
    require delegate.return_code
}

function sub_089fff19(?) {
    mem[(32 * arg2.length) + 160 len arg5.length] = arg5[all]
    mem[(32 * arg2.length) + ceil32(arg5.length) + 160] = arg6.length
    mem[(32 * arg2.length) + ceil32(arg5.length) + 192 len arg6.length] = arg6[all]
    mem[(32 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192] = 0x331c597a00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + 452 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + 452] = arg5.length
    mem[(64 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg2.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        mem[arg5.length + (64 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484] = arg6.length
        mem[arg5.length + (64 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + 516 len ceil32(arg6.length)] = arg6[all], mem[(32 * arg2.length) + ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]
        if not arg6.length % 32:
            require ext_code.size(0x505b59d20dcfa6799e7b7c4832ca61987a2626ff)
            delegate 0x505b59d20dcfa6799e7b7c4832ca61987a2626ff.0x331c597a with:
                 gas gas_remaining wei
                args 0, address(arg1), 224, arg3, arg4, (32 * arg2.length) + 256, arg5.length + (32 * arg2.length) + 288, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg2.length) + 452 len (32 * arg2.length) + arg6.length + arg5.length + -floor32(arg2.length) + 64]
        else:
            mem[floor32(arg6.length) + arg5.length + (64 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + 516] = mem[floor32(arg6.length) + arg5.length + (64 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 548 len arg6.length % 32]
            require ext_code.size(0x505b59d20dcfa6799e7b7c4832ca61987a2626ff)
            delegate 0x505b59d20dcfa6799e7b7c4832ca61987a2626ff.0x331c597a with:
                 gas gas_remaining wei
                args 0, address(arg1), 224, arg3, arg4, (32 * arg2.length) + 256, arg5.length + (32 * arg2.length) + 288, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg2.length) + 452 len (32 * arg2.length) + floor32(arg6.length) + arg5.length + -floor32(arg2.length) + 96]
    else:
        mem[floor32(arg5.length) + (64 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + 484] = mem[floor32(arg5.length) + (64 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg5.length % 32) + 516 len arg5.length % 32]
        mem[floor32(arg5.length) + (64 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + 516] = arg6.length
        mem[floor32(arg5.length) + (64 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548 len ceil32(arg6.length)] = arg6[all], mem[(32 * arg2.length) + ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]
        if not arg6.length % 32:
            require ext_code.size(0x505b59d20dcfa6799e7b7c4832ca61987a2626ff)
            delegate 0x505b59d20dcfa6799e7b7c4832ca61987a2626ff.0x331c597a with:
                 gas gas_remaining wei
                args 0, address(arg1), 224, arg3, arg4, (32 * arg2.length) + 256, floor32(arg5.length) + (32 * arg2.length) + 320, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg2.length) + 452 len (32 * arg2.length) + arg6.length + floor32(arg5.length) + -floor32(arg2.length) + 96]
        else:
            mem[floor32(arg6.length) + floor32(arg5.length) + (64 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + 548] = mem[floor32(arg6.length) + floor32(arg5.length) + (64 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 580 len arg6.length % 32]
            require ext_code.size(0x505b59d20dcfa6799e7b7c4832ca61987a2626ff)
            delegate 0x505b59d20dcfa6799e7b7c4832ca61987a2626ff.0x331c597a with:
                 gas gas_remaining wei
                args 0, address(arg1), 224, arg3, arg4, (32 * arg2.length) + 256, floor32(arg5.length) + (32 * arg2.length) + 320, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg2.length) + 452 len (32 * arg2.length) + floor32(arg6.length) + floor32(arg5.length) + -floor32(arg2.length) + 128]
    require delegate.return_code
}



}
