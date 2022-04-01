contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
array of uint256 stor7;
uint256 stor9;

function _fallback() {
    mem[96 len -5500] = code.data[5932 len -5500]
    mem[64] = -5404
    require mem[192] < mem[224]
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2 = mem[172 len 20]
    stor3 = mem[192]
    stor4 = mem[224]
    stor5 = mem[256]
    stor6 = 1
    uint8(stor7.length) = 0
    stor7.length.field_8 = mem[-5372 len 31]
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 0
    return code.data[432 len 5500]
}



// =====================  Runtime code  =====================


array of uint256 sub_1896f257;
array of uint256 sub_34868218;
address escrowAdminAddress;
uint256 sub_bd819bba;
uint256 sub_d586948d;
uint256 sub_d79b7e81;
uint8 stor6;
array of uint256 sub_e114f316;
array of struct sub_1f2e1193;
uint256 sub_aaaae090;
uint256 sub_de0dabb2;

function sub_1896f257(?) {
    return sub_1896f257[0 len sub_1896f257.length]
}

function sub_1f2e1193(?) {
    require arg1 < sub_1f2e1193.length
    require uint8(sub_1f2e1193[arg1].field_2048) <= 4
    mem[416] = uint256(stor[sha3((9 * arg1) + ('name', 'sub_1f2e1193', 8) + 2)].field_0)
    idx = 416
    s = 0
    while stor[(9 * arg1) + ('name', 'sub_1f2e1193', 8) + 2].length + 416 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'sub_1f2e1193', 8) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_1f2e1193[arg1].field_0), 
           address(sub_1f2e1193[arg1].field_256),
           Array(len=stor[(9 * arg1) + ('name', 'sub_1f2e1193', 8) + 2].length, data=mem[416 len stor[(9 * arg1) + ('name', 'sub_1f2e1193', 8) + 2].length + (floor32(stor[(9 * arg1) + ('name', 'sub_1f2e1193', 8) + 2].length - 1) + -stor[(9 * arg1) + ('name', 'sub_1f2e1193', 8) + 2].length + 32 % 32)]),
           uint256(sub_1f2e1193[arg1].field_768),
           uint256(sub_1f2e1193[arg1].field_1024),
           uint256(sub_1f2e1193[arg1].field_1280),
           uint256(sub_1f2e1193[arg1].field_1536),
           uint256(sub_1f2e1193[arg1].field_1792),
           uint8(sub_1f2e1193[arg1].field_2048)
}

function sub_34868218(?) {
    return sub_34868218[0 len sub_34868218.length]
}

function sub_4b2b445d(?) {
    return bool(stor6)
}

function escrowAdmin() {
    return escrowAdminAddress
}

function sub_aaaae090(?) {
    return sub_aaaae090
}

function sub_bd819bba(?) {
    return sub_bd819bba
}

function sub_d586948d(?) {
    return sub_d586948d
}

function sub_d79b7e81(?) {
    return sub_d79b7e81
}

function sub_de0dabb2(?) {
    return sub_de0dabb2
}

function sub_e114f316(?) {
    return sub_e114f316[0 len sub_e114f316.length]
}

function _fallback() payable {
    revert
}

function sub_e203ea20(?) {
    require sub_d586948d
    return (arg1 * sub_bd819bba / sub_d586948d)
}

function sub_0b709165(?) {
    require sub_d586948d
    return ((arg1 * sub_bd819bba / sub_d586948d) + arg1)
}

function sub_4f8ad619(?) {
    require escrowAdminAddress == msg.sender
    sub_d79b7e81 = arg1
    emit 0x68278929: arg1
}

function sub_71bec779(?) {
    require escrowAdminAddress == msg.sender
    escrowAdminAddress = arg1
    emit 0xd39025bc: arg1
}

function sub_6d8666ed(?) {
    require escrowAdminAddress == msg.sender
    require arg1 < arg2
    sub_bd819bba = arg1
    sub_d586948d = arg2
    emit 0xee562a49: arg1, arg2
}

function sub_3fc011b3(?) {
    require escrowAdminAddress == msg.sender
    require arg1
    sub_de0dabb2 = 0
    call arg1 with:
       value sub_de0dabb2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finishDeal(uint256 arg1) {
    require arg1 < sub_1f2e1193.length
    if address(sub_1f2e1193[arg1].field_0) != msg.sender:
        require escrowAdminAddress == msg.sender
    require uint8(sub_1f2e1193[arg1].field_2048) <= 4
    require not uint8(sub_1f2e1193[arg1].field_2048)
    uint8(sub_1f2e1193[arg1].field_2048) = 1
    emit 0xe4ca9bd0: address(sub_1f2e1193[arg1].field_0), address(sub_1f2e1193[arg1].field_256), arg1
}

function cancelDeal(uint256 arg1) {
    require arg1 < sub_1f2e1193.length
    if address(sub_1f2e1193[arg1].field_256) != msg.sender:
        require escrowAdminAddress == msg.sender
    require uint8(sub_1f2e1193[arg1].field_2048) <= 4
    require not uint8(sub_1f2e1193[arg1].field_2048)
    uint8(sub_1f2e1193[arg1].field_2048) = 3
    emit 0xc1792ab2: address(sub_1f2e1193[arg1].field_0), address(sub_1f2e1193[arg1].field_256), arg1
}

function sub_c8aa1da4(?) {
    mem[128 len arg1.length] = arg1[all]
    require escrowAdminAddress == msg.sender
    stor6 = 0
    sub_e114f316[] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 192] = mem[128]
        mem[ceil32(arg1.length) + 224 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0xf27f5971: Array(len=arg1.length, data=mem[ceil32(arg1.length) + 192 len arg1.length])
}

function sub_94a4db63(?) payable {
    require msg.value
    require arg1 < sub_1f2e1193.length
    require uint8(sub_1f2e1193[arg1].field_2048) <= 4
    require not uint8(sub_1f2e1193[arg1].field_2048)
    require uint256(sub_1f2e1193[arg1].field_1024) + uint256(sub_1f2e1193[arg1].field_1280)
    require arg1 < sub_1f2e1193.length
    uint256(sub_1f2e1193[arg1].field_768) += msg.value
    uint256(sub_1f2e1193[arg1].field_1536) = msg.value - (msg.value / uint256(sub_1f2e1193[arg1].field_1024) + uint256(sub_1f2e1193[arg1].field_1280) * uint256(sub_1f2e1193[arg1].field_1024)) + uint256(sub_1f2e1193[arg1].field_1536)
    uint256(sub_1f2e1193[arg1].field_1792) += msg.value / uint256(sub_1f2e1193[arg1].field_1024) + uint256(sub_1f2e1193[arg1].field_1280) * uint256(sub_1f2e1193[arg1].field_1024)
    sub_de0dabb2 += msg.value / uint256(sub_1f2e1193[arg1].field_1024) + uint256(sub_1f2e1193[arg1].field_1280) * uint256(sub_1f2e1193[arg1].field_1024)
    emit 0xc5bc9ead: msg.value, msg.sender, address(sub_1f2e1193[arg1].field_256), arg1
}

function withdrawFunds(uint256 arg1) {
    require arg1 < sub_1f2e1193.length
    require uint8(sub_1f2e1193[arg1].field_2048) <= 4
    if uint8(sub_1f2e1193[arg1].field_2048) != 1:
        require uint8(sub_1f2e1193[arg1].field_2048) <= 4
        require uint8(sub_1f2e1193[arg1].field_2048) == 3
        require address(sub_1f2e1193[arg1].field_0) == msg.sender
        uint8(sub_1f2e1193[arg1].field_2048) = 4
        call msg.sender with:
           value uint256(sub_1f2e1193[arg1].field_1536) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x48d72ef4: uint256(sub_1f2e1193[arg1].field_1536), msg.sender, 0, arg1
    else:
        if address(sub_1f2e1193[arg1].field_256) == msg.sender:
            uint8(sub_1f2e1193[arg1].field_2048) = 2
            call msg.sender with:
               value uint256(sub_1f2e1193[arg1].field_1536) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x48d72ef4: uint256(sub_1f2e1193[arg1].field_1536), msg.sender, 1, arg1
        else:
            require uint8(sub_1f2e1193[arg1].field_2048) <= 4
            require uint8(sub_1f2e1193[arg1].field_2048) == 3
            require address(sub_1f2e1193[arg1].field_0) == msg.sender
            uint8(sub_1f2e1193[arg1].field_2048) = 4
            call msg.sender with:
               value uint256(sub_1f2e1193[arg1].field_1536) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x48d72ef4: uint256(sub_1f2e1193[arg1].field_1536), msg.sender, 0, arg1
}

function sub_6452bf48(?) payable {
    mem[128 len arg2.length] = arg2[all]
    require 1 == bool(stor6)
    require arg1
    require msg.value >= sub_d79b7e81
    sub_1f2e1193.length++
    if not sub_1f2e1193.length <= sub_1f2e1193.length + 1:
        mem[0] = 8
        idx = (9 * sub_1f2e1193.length) + 9
        while sha3(8) + (9 * sub_1f2e1193.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            uint8(stor[idx + sha3(mem[0]) + 8]) = 0
            idx = idx + 9
            continue 
    sub_aaaae090 = sub_1f2e1193.length + 1
    require sub_bd819bba + sub_d586948d
    require sub_1f2e1193.length < sub_1f2e1193.length
    address(sub_1f2e1193[sub_1f2e1193.length].field_0) = msg.sender
    address(sub_1f2e1193[sub_1f2e1193.length].field_256) = arg1
    uint256(stor[sha3((9 * sub_1f2e1193.length) + ('name', 'sub_1f2e1193', 8) + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
    require sub_1f2e1193.length < sub_1f2e1193.length
    uint256(sub_1f2e1193[sub_1f2e1193.length].field_768) = msg.value
    uint256(sub_1f2e1193[sub_1f2e1193.length].field_1024) = sub_bd819bba
    uint256(sub_1f2e1193[sub_1f2e1193.length].field_1280) = sub_d586948d
    uint256(sub_1f2e1193[sub_1f2e1193.length].field_1536) = msg.value - (msg.value / sub_bd819bba + sub_d586948d * sub_bd819bba)
    uint256(sub_1f2e1193[sub_1f2e1193.length].field_1792) = msg.value / sub_bd819bba + sub_d586948d * sub_bd819bba
    uint8(sub_1f2e1193[sub_1f2e1193.length].field_2048) = 0
    sub_de0dabb2 += msg.value / sub_bd819bba + sub_d586948d * sub_bd819bba
    mem[ceil32(arg2.length) + 128] = msg.value
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 192] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 224] = mem[128]
        mem[ceil32(arg2.length) + 256 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit 0xdff35d1f: msg.value, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 224 len arg2.length]), msg.sender, arg1, sub_1f2e1193.length
    return sub_1f2e1193.length
}



}
