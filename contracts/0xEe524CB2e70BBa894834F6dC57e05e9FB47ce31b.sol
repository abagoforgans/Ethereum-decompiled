contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() {
    stor1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    stor0 = 0xf7ca97c39baad10061ea3298a062a17c3ab3ded8408c9be0168e6ebec0c091a7
    return code.data[107 len 2939]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
uint32 stor2;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint8 stor6; offset 160
address stor6;
uint256 stor7;
uint256 stor8;
uint32 stor9;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;
uint8 stor13; offset 160
address stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    revert
}

function withdrawEth(uint256 arg1) {
    hash = sha256hash(msg.sender) 
    require sha256hash.result
    require stor0 == hash
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_f1b83630(?) {
    hash = sha256hash(msg.sender) 
    require sha256hash.result
    require stor0 == hash
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function deposit() payable {
    hash = sha256hash(msg.sender) 
    require sha256hash.result
    require stor0 == hash
    require ext_code.size(stor1)
    call stor1.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function withdraw(uint256 arg1) {
    hash = sha256hash(msg.sender) 
    require sha256hash.result
    require stor0 == hash
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    hash = sha256hash(msg.sender) 
    require sha256hash.result
    require stor0 == hash
    require ext_code.size(stor1)
    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
    require ext_call.success
}

function sub_c3bf4436(?) {
    hash = sha256hash(msg.sender) 
    require sha256hash.result
    require stor0 == hash
    hash = sha256hash(msg.sender) 
    require sha256hash.result
    require stor0 == hash
    require ext_code.size(stor1)
    call stor1.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10
    require ext_call.success
}

function sub_f80440a0(?) payable {
    hash = sha256hash(msg.sender) 
    require sha256hash.result
    require stor0 == hash
    uint256(stor2) = arg1
    stor3 = arg2
    stor4 = arg3
    stor5 = arg4
    address(stor6.field_0) = arg5
    uint8(stor6.field_160) = arg6
    stor7 = arg7
    stor8 = arg8
    uint256(stor9) = arg9
    stor10 = arg10
    stor11 = arg11
    stor12 = arg12
    address(stor13.field_0) = arg13
    uint8(stor13.field_160) = arg14
    stor14 = arg15
    stor15 = arg16
    require stor3
    if stor3 > uint256(stor9):
        if uint256(stor2) / stor3:
            require uint256(stor2) / stor3
            require uint256(stor9) * uint256(stor2) / stor3 / uint256(stor2) / stor3 == uint256(stor9)
        require ext_code.size(stor1)
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(stor2), 0x8f3470a7388c05ee4e7af3d01d8c722b0ff52374, stor3, stor4, stor5, address(stor6.field_0), uint8(stor6.field_0), stor7, stor8, uint256(stor9) * uint256(stor2) / stor3
    else:
        if uint256(stor2) / stor3:
            require uint256(stor2) / stor3
            require stor3 * uint256(stor2) / stor3 / uint256(stor2) / stor3 == stor3
        require ext_code.size(stor1)
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(stor2), 0x8f3470a7388c05ee4e7af3d01d8c722b0ff52374, stor3, stor4, stor5, address(stor6.field_0), uint8(stor6.field_0), stor7, stor8, stor3 * uint256(stor2) / stor3
    require ext_call.success
    require ext_code.size(stor1)
    if stor3 > uint256(stor9):
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(stor9), 0, stor10, stor11, stor12, address(stor13.field_0), uint8(stor13.field_0), stor14, stor15, uint256(stor9)
    else:
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(stor9), 0, stor10, stor11, stor12, address(stor13.field_0), uint8(stor13.field_0), stor14, stor15, stor3
    require ext_call.success
}



}
