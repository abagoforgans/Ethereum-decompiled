contract main {


// =======================  Init code  ======================


uint256 stor1;
uint8 stor5; offset 152
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
uint8 stor15;
address stor15; offset 8
address stor16;
address stor17;
address stor18;

function _fallback() payable {
    stor1 = 0
    Mask(152, 0, stor5.field_0) = 0x5f18571b4d387f54c0bb6c4af91c552871f51e
    uint8(stor5.field_152) = 0
    stor6 = 0x5d00d312e171be5342067c09bae883f9bcb2003b
    stor7 = 0x95daaab98046846bf4b2853e23cba236fa394a31
    stor8 = 0xbfde6246df72d3ca86419628cac46a9d2b60393c
    stor9 = 0xcdf7cfc9f7c129a0d7aec376bc205ab87fc878e1
    stor10 = 0xfdf4411669fc6e8951a6ae987307d7582fda7a05
    stor11 = stor7
    stor12 = stor6
    stor13 = stor8
    stor14 = stor9
    uint8(stor15.field_0) = 0
    Mask(152, 0, stor15.field_8) = 0xf3bb445b935a9ea1bf4f126d0c0c4bf51c902b
    stor16 = 0x16ecc82b4e3e5ff5a4db8510ed191282a37639b0
    stor17 = 0x5f480ca354304aae88d7dd66cd4735c59d543af0
    stor18 = 0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e
    require not msg.value
    return code.data[1280 len 4751]
}



// =====================  Runtime code  =====================


uint256 sub_fe2ca572;
uint256 sub_6fd189b9;
uint256 sub_49c3c8c1;
uint64 stor3;
uint256 stor3; offset 64
uint256 sub_da5eb876;
uint8 stor4;
uint256 seed;
address stor5;
address stor10;
address stor11;
address stor12;
address stor13;
address stor16;
address stor17;
address stor18;

function sub_49c3c8c1(?) {
    return sub_49c3c8c1
}

function sub_6fd189b9(?) {
    return sub_6fd189b9
}

function seed() {
    return uint256(seed)
}

function sub_da5eb876(?) {
    return sub_da5eb876
}

function sub_fe2ca572(?) {
    return sub_fe2ca572
}

function _fallback() payable {
  stop
}

function sub_12fe9c8e(?) {
    require ext_code.size(stor12)
    call stor12.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor5, arg1
    require ext_call.success
}

function sub_19fa22cf(?) {
    require ext_code.size(stor11)
    call stor11.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor5, arg1
    require ext_call.success
}

function sub_ca0237c1(?) {
    require ext_code.size(stor13)
    call stor13.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor5, arg1
    require ext_call.success
}

function sub_a1f09057(?) {
    require ext_code.size(stor11)
    call stor11.payService(uint256 arg1, uint32 arg2, string arg3, uint64 arg4, uint64 arg5, uint64 arg6, uint64 arg7, uint64 arg8, uint64 arg9) with:
         gas gas_remaining - 710 wei
        args 0, 3500 * 10^6, 1, 288, 0, 0, 0, 0, 0, 0, 1, 'f'
    require ext_call.success
}

function sub_2511af54(?) {
    require ext_code.size(stor11)
    call stor11.payService(uint256 arg1, uint32 arg2, string arg3, uint64 arg4, uint64 arg5, uint64 arg6, uint64 arg7, uint64 arg8, uint64 arg9) with:
         gas gas_remaining - 710 wei
        args 0, 1500 * 10^6, 4, 288, 1, 0, arg1 << 192, 0, 0, 0, 1, 'f'
    require ext_call.success
}

function sub_8b66c51c(?) {
    uint64(stor3.field_0) = arg1
    Mask(192, 0, stor3.field_64) = 0
    require ext_code.size(stor16)
    call stor16.getRandom(address arg1, uint256 arg2, uint64 arg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), block.number - 1, uint64(stor3.field_0)
    require ext_call.success
    uint256(seed) = ext_call.return_data[0]
    if uint256(seed) % 10 == 9:
        require ext_code.size(stor11)
        call stor11.payService(uint256 arg1, uint32 arg2, string arg3, uint64 arg4, uint64 arg5, uint64 arg6, uint64 arg7, uint64 arg8, uint64 arg9) with:
             gas gas_remaining - 710 wei
            args 0, 0, 2, 288, 0, 0, 0, 0, 0, 0, 1, 'f'
        require ext_call.success
}

function sub_f7ba0852(?) {
    require ext_code.size(stor18)
    call stor18.totalMonster() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor17)
    call stor17.getRandom(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), block.number - 1, uint64(ext_call.return_data[0] + 1)
    require ext_call.success
    uint256(seed) = ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < 6:
        uint256(seed) = uint256(seed) / 100
        idx = idx + 1
        s = s + stor4 % 32
        continue 
    if 0x6f32f1ef8b18a2bc3cea59789c79d44100000000000000000000 * s > 139:
        require ext_code.size(stor16)
        call stor16.transform(uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4) with:
             gas gas_remaining - 710 wei
            args 0, 0, arg1 << 192, arg2 << 192, arg3
        require ext_call.success
}

function sub_be3268d6(?) {
    require ext_code.size(stor10)
    call stor10.totalEgg() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    sub_da5eb876 = ext_call.return_data[0]
    require ext_code.size(stor10)
    call stor10.totalEgg() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor16)
    call stor16.getRandom(address arg1, uint256 arg2, uint64 arg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), block.number - 1, uint64(ext_call.return_data[0])
    require ext_call.success
    uint256(seed) = ext_call.return_data[0]
    if uint256(seed) % 10 == 9:
        require ext_code.size(stor11)
        call stor11.payService(uint256 arg1, uint32 arg2, string arg3, uint64 arg4, uint64 arg5, uint64 arg6, uint64 arg7, uint64 arg8, uint64 arg9) with:
             gas gas_remaining - 710 wei
            args 0, 0, 2, 288, 0, 0, 0, 0, 0, 0, 1, 'f'
        require ext_call.success
}



}
