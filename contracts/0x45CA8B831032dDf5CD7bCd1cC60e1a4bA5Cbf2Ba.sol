contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 3242]




// =====================  Runtime code  =====================


address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;

function sub_80cf50d1(?) {
    return sub_80cf50d1[address(msg.sender)].field_256
}

function sub_fb5b7154(?) {
    return sub_80cf50d1[address(msg.sender)].field_512
}

function _fallback() payable {
    revert
}

function sub_f15001e7(?) {
    require sub_80cf50d1[address(msg.sender)].field_256 >= arg2
    require arg3 < sub_80cf50d1[address(msg.sender)].field_512
    require stor[(7 * arg3) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_80cf50d1', 0)))].field_1024 >= arg2
    require arg3 < sub_80cf50d1[address(msg.sender)].field_512
    require not stor[(7 * arg3) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_80cf50d1', 0)))].field_1536
    require arg3 < sub_80cf50d1[address(msg.sender)].field_512
    require ext_code.size(arg1)
    call arg1.0xbf18cae0 with:
         gas gas_remaining - 710 wei
        args 0, 128, msg.sender, stor[(7 * arg3) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_80cf50d1', 0)))].field_0, arg2, 3, 'vpn'
    require ext_call.success
    sub_80cf50d1[address(msg.sender)].field_256 -= arg2
    require arg3 < sub_80cf50d1[address(msg.sender)].field_512
    if not stor[(7 * arg3) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_80cf50d1', 0)))].field_1024 - arg2:
        require arg3 < sub_80cf50d1[address(msg.sender)].field_512
        stor[(7 * arg3) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_80cf50d1', 0)))].field_1536 = 1
}

function sub_24618328(?) {
    require arg1 < sub_80cf50d1[address(msg.sender)].field_512
    require arg1 < sub_80cf50d1[address(msg.sender)].field_512
    require arg1 < sub_80cf50d1[address(msg.sender)].field_512
    require arg1 < sub_80cf50d1[address(msg.sender)].field_512
    require arg1 < sub_80cf50d1[address(msg.sender)].field_512
    require arg1 < sub_80cf50d1[address(msg.sender)].field_512
    require arg1 < sub_80cf50d1[address(msg.sender)].field_512
    return stor[(7 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_80cf50d1', 0)))].field_0, 
           stor[(7 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_80cf50d1', 0)))].field_256,
           stor[(7 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_80cf50d1', 0)))].field_512,
           stor[(7 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_80cf50d1', 0)))].field_768,
           stor[(7 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_80cf50d1', 0)))].field_1024,
           stor[(7 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_80cf50d1', 0)))].field_1280,
           bool(stor[(7 * arg1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_80cf50d1', 0)))].field_1536)
}

function sub_e67c61b8(?) {
    stor1 = msg.sender
    stor2 = arg2
    stor3 = arg3
    stor4 = arg4
    stor5 = arg5
    stor6 = arg6
    stor7 = 0
    sub_80cf50d1[address(arg1)].field_512++
    if not sub_80cf50d1[address(arg1)].field_512 <= sub_80cf50d1[address(arg1)].field_512 + 1:
        idx = (7 * sub_80cf50d1[address(arg1)].field_512) + 7
        while 7 * sub_80cf50d1[address(arg1)].field_512 > idx:
            sub_80cf50d1[address(arg1)][idx + 2].field_0 = 0
            sub_80cf50d1[address(arg1)][idx + 2].field_256 = 0
            sub_80cf50d1[address(arg1)][idx + 2].field_512 = 0
            sub_80cf50d1[address(arg1)][idx + 2].field_768 = 0
            sub_80cf50d1[address(arg1)][idx + 2].field_1024 = 0
            sub_80cf50d1[address(arg1)][idx + 2].field_1280 = 0
            sub_80cf50d1[address(arg1)][idx + 2].field_1536 = 0
            idx = idx + 7
            continue 
    stor[(7 * sub_80cf50d1[address(arg1)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_80cf50d1', 0)))].field_0 = stor1
    stor[(7 * sub_80cf50d1[address(arg1)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_80cf50d1', 0)))].field_256 = stor2
    stor[(7 * sub_80cf50d1[address(arg1)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_80cf50d1', 0)))].field_512 = stor3
    stor[(7 * sub_80cf50d1[address(arg1)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_80cf50d1', 0)))].field_768 = stor4
    stor[(7 * sub_80cf50d1[address(arg1)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_80cf50d1', 0)))].field_1024 = stor5
    stor[(7 * sub_80cf50d1[address(arg1)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_80cf50d1', 0)))].field_1280 = stor6
    stor[(7 * sub_80cf50d1[address(arg1)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_80cf50d1', 0)))].field_1536 = uint8(bool(stor7))
    sub_80cf50d1[address(arg1)].field_256 += arg5
}



}
