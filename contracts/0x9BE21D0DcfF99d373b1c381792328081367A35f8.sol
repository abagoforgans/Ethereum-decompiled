contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 8005]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_d5948770(?) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x4c773795 with:
         gas gas_remaining - 25050 wei
    return ext_call.return_data[12 len 20]
}

function oraclize_query(uint256 arg1, string arg2, string arg3) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=arg2.length, data=arg2[all])
    require ext_call.success
    call address(ext_call.return_data[0]).0xadf59f99 with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 128
    require ext_call.success
    return ext_call.return_data[0]
}

function oraclize_query(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x2ef3accc with:
         gas gas_remaining - 25050 wei
        args Array(len=arg2.length, data=arg2[all]), arg4
    require ext_call.success
    call address(ext_call.return_data[0]).0x38592832 with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160, arg4
    require ext_call.success
    return ext_call.return_data[0]
}

function oraclize_query(uint256 arg1, string arg2, string arg3, string arg4) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=arg2.length, data=arg2[all])
    require ext_call.success
    if not arg3.length % 32:
        call address(ext_call.return_data[0]).0x77228659 with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160, arg3.length + arg2.length + 192
    else:
        call address(ext_call.return_data[0]).0x77228659 with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160, floor32(arg3.length) + arg2.length + 224
    require ext_call.success
    return ext_call.return_data[0]
}

function oraclize_query(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x2ef3accc with:
         gas gas_remaining - 25050 wei
        args Array(len=arg2.length, data=arg2[all]), arg5
    require ext_call.success
    if not arg3.length % 32:
        call address(ext_call.return_data[0]).0xfbf80418 with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg3.length + arg2.length + 224, arg5
    else:
        call address(ext_call.return_data[0]).0xfbf80418 with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, floor32(arg3.length) + arg2.length + 256, arg5
    require ext_call.success
    return ext_call.return_data[0]
}

function oraclize_query(string arg1, string arg2) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(ext_call.return_data[0]).0xadf59f99 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, arg1.length + 128, arg1.length, arg1[all], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
            call address(ext_call.return_data[0]).0xadf59f99 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, arg1.length + 128, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 324 len -(arg2.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 324 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(ext_call.return_data[0]).0xadf59f99 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 292 len -(arg1.length % 32) + 32], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
            call address(ext_call.return_data[0]).0xadf59f99 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 292 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 356 len -(arg2.length % 32) + 32]
    require ext_call.success
    return ext_call.return_data[0]
}

function oraclize_query(string arg1, string arg2, uint256 arg3) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x2ef3accc with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all]), arg3
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 324 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(ext_call.return_data[0]).0x38592832 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 128, arg1.length + 160, arg3, arg1.length, arg1[all], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
            call address(ext_call.return_data[0]).0x38592832 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 128, arg1.length + 160, arg3, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 356 len -(arg2.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 324] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 356 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 388 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(ext_call.return_data[0]).0x38592832 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 128, floor32(arg1.length) + 192, arg3, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 324 len -(arg1.length % 32) + 32], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 388] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 420 len arg2.length % 32]
            call address(ext_call.return_data[0]).0x38592832 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 128, floor32(arg1.length) + 192, arg3, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 324 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 388 len -(arg2.length % 32) + 32]
    require ext_call.success
    return ext_call.return_data[0]
}

function oraclize_query(string arg1, string arg2, string arg3) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 356 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 388 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 420 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call address(ext_call.return_data[0]).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, arg1.length + 160, arg2.length + arg1.length + 192, arg1.length, arg1[all], arg2.length, arg2[all], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 420] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
                call address(ext_call.return_data[0]).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, arg1.length + 160, arg2.length + arg1.length + 192, arg1.length, arg1[all], arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + arg3.length + 420 len -(arg3.length % 32) + 32]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 388] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 420 len arg2.length % 32]
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call address(ext_call.return_data[0]).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, arg1.length + 160, floor32(arg2.length) + arg1.length + 224, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 388 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 484 len arg3.length % 32]
                call address(ext_call.return_data[0]).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, arg1.length + 160, floor32(arg2.length) + arg1.length + 224, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 388 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + floor32(arg2.length) + arg3.length + 452 len -(arg3.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 356] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 388 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 420 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call address(ext_call.return_data[0]).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, floor32(arg1.length) + 192, arg2.length + floor32(arg1.length) + 224, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 356 len -(arg1.length % 32) + 32], arg2.length, arg2[all], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 484 len arg3.length % 32]
                call address(ext_call.return_data[0]).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, floor32(arg1.length) + 192, arg2.length + floor32(arg1.length) + 224, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 356 len -(arg1.length % 32) + 32], arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + arg3.length + 452 len -(arg3.length % 32) + 32]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 420] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 452 len arg2.length % 32]
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 484 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call address(ext_call.return_data[0]).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, floor32(arg1.length) + 192, floor32(arg2.length) + floor32(arg1.length) + 256, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 356 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 420 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 484] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 516 len arg3.length % 32]
                call address(ext_call.return_data[0]).0x77228659 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 128, floor32(arg1.length) + 192, floor32(arg2.length) + floor32(arg1.length) + 256, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 356 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 420 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + arg3.length + 484 len -(arg3.length % 32) + 32]
    require ext_call.success
    return ext_call.return_data[0]
}

function oraclize_query(string arg1, string arg2, string arg3, uint256 arg4) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x2ef3accc with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all]), arg4
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 388 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 420 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call address(ext_call.return_data[0]).0xfbf80418 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 160, arg1.length + 192, arg2.length + arg1.length + 224, arg4, arg1.length, arg1[all], arg2.length, arg2[all], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 484 len arg3.length % 32]
                call address(ext_call.return_data[0]).0xfbf80418 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 160, arg1.length + 192, arg2.length + arg1.length + 224, arg4, arg1.length, arg1[all], arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + arg3.length + 452 len -(arg3.length % 32) + 32]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 420] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 452 len arg2.length % 32]
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 484 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call address(ext_call.return_data[0]).0xfbf80418 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 160, arg1.length + 192, floor32(arg2.length) + arg1.length + 256, arg4, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 420 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 484] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 516 len arg3.length % 32]
                call address(ext_call.return_data[0]).0xfbf80418 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 160, arg1.length + 192, floor32(arg2.length) + arg1.length + 256, arg4, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + arg2.length + 420 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + floor32(arg2.length) + arg3.length + 484 len -(arg3.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 388] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 420 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 484 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call address(ext_call.return_data[0]).0xfbf80418 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 160, floor32(arg1.length) + 224, arg2.length + floor32(arg1.length) + 256, arg4, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 388 len -(arg1.length % 32) + 32], arg2.length, arg2[all], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 484] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 516 len arg3.length % 32]
                call address(ext_call.return_data[0]).0xfbf80418 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 160, floor32(arg1.length) + 224, arg2.length + floor32(arg1.length) + 256, arg4, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 388 len -(arg1.length % 32) + 32], arg2.length, arg2[all], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + arg3.length + 484 len -(arg3.length % 32) + 32]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 484 len arg2.length % 32]
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 516 len arg3.length] = arg3[all]
            if not arg3.length % 32:
                call address(ext_call.return_data[0]).0xfbf80418 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 160, floor32(arg1.length) + 224, floor32(arg2.length) + floor32(arg1.length) + 288, arg4, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 388 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 452 len -(arg2.length % 32) + 32], arg3.length, arg3[all]
            else:
                mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 516] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 548 len arg3.length % 32]
                call address(ext_call.return_data[0]).0xfbf80418 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args 0, 160, floor32(arg1.length) + 224, floor32(arg2.length) + floor32(arg1.length) + 288, arg4, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 388 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 452 len -(arg2.length % 32) + 32], arg3.length, arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + arg3.length + 516 len -(arg3.length % 32) + 32]
    require ext_call.success
    return ext_call.return_data[0]
}



}
