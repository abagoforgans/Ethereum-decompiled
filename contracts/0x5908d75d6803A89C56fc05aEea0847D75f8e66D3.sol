contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[3084 len 32]
    return code.data[55 len 3029]
}



// =====================  Runtime code  =====================


address sub_44624e34Address;
uint256 stor0;
mapping of struct sub_41927ff6;
mapping of struct sub_584312e0;
mapping of struct sub_b5aadb7a;

function sub_41927ff6(?) payable {
    mem[288] = sub_41927ff6[arg1][1].field_0
    idx = 288
    s = 0
    while sub_41927ff6[arg1][1].length + 288 > idx + 32:
        mem[idx + 32] = sub_41927ff6[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_41927ff6[arg1][1].length + (floor32(sub_41927ff6[arg1][1].length - 1) + -sub_41927ff6[arg1][1].length + 32 % 32) + 288] = sub_41927ff6[arg1][2].length
    mem[sub_41927ff6[arg1][1].length + (floor32(sub_41927ff6[arg1][1].length - 1) + -sub_41927ff6[arg1][1].length + 32 % 32) + 320] = sub_41927ff6[arg1][2].field_0
    idx = sub_41927ff6[arg1][1].length + (floor32(sub_41927ff6[arg1][1].length - 1) + -sub_41927ff6[arg1][1].length + 32 % 32) + 320
    s = 0
    while sub_41927ff6[arg1][1].length + (floor32(sub_41927ff6[arg1][1].length - 1) + -sub_41927ff6[arg1][1].length + 32 % 32) + sub_41927ff6[arg1][2].length + 320 > idx + 32:
        mem[idx + 32] = sub_41927ff6[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_41927ff6[arg1].field_0, 
           Array(len=sub_41927ff6[arg1][1].length, data=mem[288 len sub_41927ff6[arg1][1].length + (floor32(sub_41927ff6[arg1][1].length - 1) + -sub_41927ff6[arg1][1].length + 32 % 32) + sub_41927ff6[arg1][2].length + (floor32(sub_41927ff6[arg1][2].length - 1) + -sub_41927ff6[arg1][2].length + 32 % 32) + 32]),
           sub_41927ff6[arg1][1].length + (floor32(sub_41927ff6[arg1][1].length - 1) + -sub_41927ff6[arg1][1].length + 32 % 32) + 192,
           sub_41927ff6[arg1].field_768,
           sub_41927ff6[arg1].field_1024
}

function sub_44624e34(?) payable {
    return address(sub_44624e34Address)
}

function sub_584312e0(?) payable {
    mem[288] = sub_584312e0[arg1][1].field_0
    idx = 288
    s = 0
    while sub_584312e0[arg1][1].length + 288 > idx + 32:
        mem[idx + 32] = sub_584312e0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_584312e0[arg1].field_0, 
           Array(len=sub_584312e0[arg1][1].length, data=mem[288 len sub_584312e0[arg1][1].length + (floor32(sub_584312e0[arg1][1].length - 1) + -sub_584312e0[arg1][1].length + 32 % 32)]),
           sub_584312e0[arg1].field_512,
           sub_584312e0[arg1].field_768,
           sub_584312e0[arg1].field_1024
}

function sub_b5aadb7a(?) payable {
    mem[224] = sub_b5aadb7a[arg1].field_0
    idx = 224
    s = 0
    while sub_b5aadb7a[arg1].length + 224 > idx + 32:
        mem[idx + 32] = sub_b5aadb7a[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_b5aadb7a[arg1].length, data=mem[224 len sub_b5aadb7a[arg1].length + (floor32(sub_b5aadb7a[arg1].length - 1) + -sub_b5aadb7a[arg1].length + 32 % 32)]), 
           sub_b5aadb7a[arg1].field_256,
           sub_b5aadb7a[arg1].field_512
}

function _fallback() payable {
    revert 
}

function sub_c963b1bb(?) payable {
    call address(sub_44624e34Address).0xe2877dc8 with:
         gas gas_remaining - 25050 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_9c1d35b0(?) payable {
    call address(sub_44624e34Address).0x39bc5a53 with:
         gas gas_remaining - 25050 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        require arg1 == sha3(arg2[all])
        require sub_41927ff6[arg1].field_1024 <= 0
        sub_41927ff6[arg1].field_0 = sub_41927ff6[arg1].field_160
        sub_41927ff6[arg1][1][].field_0 = Array(len=arg3.length, data=arg3[all])
        sub_41927ff6[arg1][2][].field_0 = Array(len=arg4.length, data=arg4[all])
        sub_41927ff6[arg1].field_768 = 0
        sub_41927ff6[arg1].field_1024 = block.timestamp or Mask(192, 64, sub_41927ff6[arg1].field_1024)
}

function sub_d18cd28f(?) payable {
    call address(sub_44624e34Address).0x39bc5a53 with:
         gas gas_remaining - 25050 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        require sub_41927ff6[arg1].field_1024
        require arg2 == sha3(arg1, sub_41927ff6[arg1].field_768)
        require not sub_584312e0[arg2].field_1024
        sub_584312e0[arg2].field_0 = arg1
        sub_584312e0[arg2][1][].field_0 = Array(len=arg3.length, data=arg3[all])
        sub_584312e0[arg2].field_512 = arg4
        sub_584312e0[arg2].field_768 = sub_41927ff6[arg1].field_768
        sub_584312e0[arg2].field_1024 = block.timestamp or Mask(192, 64, sub_584312e0[arg2].field_1024)
        sub_41927ff6[arg1].field_768++
}

function sub_eeea88ad(?) payable {
    call address(sub_44624e34Address).0x39bc5a53 with:
         gas gas_remaining - 25050 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        require arg3 == sha3(arg2, arg6)
        require not sub_b5aadb7a[arg3].field_512
        sub_b5aadb7a[arg3][].field_0 = Array(len=arg4.length, data=arg4[all])
        sub_b5aadb7a[arg3].field_256 = arg5 or Mask(96, 160, sub_b5aadb7a[arg3].field_256)
        sub_b5aadb7a[arg3].field_512 = arg6
        call address(sub_44624e34Address).0x39bc5a53 with:
             gas gas_remaining - 25050 wei
            args tx.origin
        require ext_call.success
        if ext_call.return_data[0]:
            require sub_41927ff6[arg1].field_1024
            require arg2 == sha3(arg1, sub_41927ff6[arg1].field_768)
            require not sub_584312e0[arg2].field_1024
            sub_584312e0[arg2].field_0 = arg1
            sub_584312e0[arg2].field_256 = 0
            sub_584312e0[arg2].field_257 = 0
            sub_584312e0[arg2].field_264 = arg1 / 256
            idx = 0
            while sub_584312e0[arg2][1].length + 31 / 32 > idx:
                sub_584312e0[arg2][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            sub_584312e0[arg2].field_512 = arg3
            sub_584312e0[arg2].field_768 = sub_41927ff6[arg1].field_768
            sub_584312e0[arg2].field_1024 = block.timestamp or Mask(192, 64, sub_584312e0[arg2].field_1024)
            sub_41927ff6[arg1].field_768++
}



}
