contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
uint8 stor3;
address stor3; offset 32
uint256 stor3; offset 24
uint256 stor3; offset 16
uint256 stor3; offset 8
address stor4;
address stor5;
address stor6;

function _fallback() {
    stor0 = msg.sender
    address(stor3.field_32) = code.data[13044 len 20]
    stor4 = code.data[13076 len 20]
    stor5 = code.data[12980 len 20]
    stor6 = code.data[13012 len 20]
    Mask(248, 0, stor3.field_8) = Mask(248, 0, bool(code.data[13096 len 32]))
    Mask(240, 0, stor3.field_16) = Mask(240, 0, bool(code.data[13128 len 32]))
    Mask(232, 0, stor3.field_24) = Mask(232, 0, bool(code.data[13160 len 32]))
    if not code.data[13044 len 20]:
        uint8(stor3.field_0) = 0
    else:
        if not code.data[13076 len 20]:
            uint8(stor3.field_0) = 0
        else:
            uint8(stor3.field_0) = 1
    stor1[address(msg.sender)] = 1
    return code.data[709 len 12259]
}



// =====================  Runtime code  =====================


#
#  - sub_591665b7(?)
#
address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint8 stor3;
uint8 stor3; offset 8
uint8 stor3; offset 16
uint8 stor3; offset 24
address sub_33befd34Address; offset 32
uint256 stor3;
address sub_94b35defAddress;
address registerAddress;
address sub_26fc5410Address;
uint256 sub_0ac57eb5;
uint256 sub_6bb7f6dd;
uint256 sub_326ee6aa;
mapping of struct sub_6adf1af4;
mapping of struct sub_3b1afd1f;
mapping of struct sub_6557fdfe;

function sub_05df89f4(?) {
    return bool(stor2[arg1])
}

function sub_0ac57eb5(?) {
    return sub_0ac57eb5
}

function operators(address arg1) {
    return bool(stor1[arg1])
}

function registerAddress() {
    return registerAddress
}

function sub_26fc5410(?) {
    return sub_26fc5410Address
}

function sub_326ee6aa(?) {
    return sub_326ee6aa
}

function sub_33befd34(?) {
    return sub_33befd34Address
}

function sub_3b1afd1f(?) {
    return sub_3b1afd1f[arg1].field_0, bool(sub_3b1afd1f[arg1].field_256)
}

function sub_4edddb0c(?) {
    return bool(uint8(stor3.field_16))
}

function sub_6557fdfe(?) {
    return sub_6557fdfe[arg1].field_0, sub_6557fdfe[arg1].field_256, sub_6557fdfe[arg1].field_512
}

function sub_6adf1af4(?) {
    mem[480] = sub_6adf1af4[arg1][1].field_0
    idx = 480
    s = 0
    while sub_6adf1af4[arg1][1].length + 480 > idx + 32:
        mem[idx + 32] = sub_6adf1af4[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_6adf1af4[arg1][1].length + (floor32(sub_6adf1af4[arg1][1].length - 1) + -sub_6adf1af4[arg1][1].length + 32 % 32) + 480] = sub_6adf1af4[arg1][2].length
    mem[sub_6adf1af4[arg1][1].length + (floor32(sub_6adf1af4[arg1][1].length - 1) + -sub_6adf1af4[arg1][1].length + 32 % 32) + 512] = sub_6adf1af4[arg1][2].field_0
    idx = sub_6adf1af4[arg1][1].length + (floor32(sub_6adf1af4[arg1][1].length - 1) + -sub_6adf1af4[arg1][1].length + 32 % 32) + 512
    s = 0
    while sub_6adf1af4[arg1][1].length + (floor32(sub_6adf1af4[arg1][1].length - 1) + -sub_6adf1af4[arg1][1].length + 32 % 32) + sub_6adf1af4[arg1][2].length + 512 > idx + 32:
        mem[idx + 32] = sub_6adf1af4[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_6adf1af4[arg1][1].length + (floor32(sub_6adf1af4[arg1][1].length - 1) + -sub_6adf1af4[arg1][1].length + 32 % 32) + sub_6adf1af4[arg1][2].length + (floor32(sub_6adf1af4[arg1][2].length - 1) + -sub_6adf1af4[arg1][2].length + 32 % 32) + 544] = sub_6adf1af4[arg1][3].field_0
    idx = sub_6adf1af4[arg1][1].length + (floor32(sub_6adf1af4[arg1][1].length - 1) + -sub_6adf1af4[arg1][1].length + 32 % 32) + sub_6adf1af4[arg1][2].length + (floor32(sub_6adf1af4[arg1][2].length - 1) + -sub_6adf1af4[arg1][2].length + 32 % 32) + 544
    s = 0
    while sub_6adf1af4[arg1][1].length + (floor32(sub_6adf1af4[arg1][1].length - 1) + -sub_6adf1af4[arg1][1].length + 32 % 32) + sub_6adf1af4[arg1][2].length + (floor32(sub_6adf1af4[arg1][2].length - 1) + -sub_6adf1af4[arg1][2].length + 32 % 32) + sub_6adf1af4[arg1][3].length + 544 > idx + 32:
        mem[idx + 32] = sub_6adf1af4[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_6adf1af4[arg1].field_0, 
           Array(len=sub_6adf1af4[arg1][1].length, data=mem[480 len sub_6adf1af4[arg1][1].length + (floor32(sub_6adf1af4[arg1][1].length - 1) + -sub_6adf1af4[arg1][1].length + 32 % 32) + sub_6adf1af4[arg1][2].length + (floor32(sub_6adf1af4[arg1][2].length - 1) + -sub_6adf1af4[arg1][2].length + 32 % 32) + 32], sub_6adf1af4[arg1][3].length, mem[sub_6adf1af4[arg1][1].length + (floor32(sub_6adf1af4[arg1][1].length - 1) + -sub_6adf1af4[arg1][1].length + 32 % 32) + sub_6adf1af4[arg1][2].length + (floor32(sub_6adf1af4[arg1][2].length - 1) + -sub_6adf1af4[arg1][2].length + 32 % 32) + 544 len sub_6adf1af4[arg1][3].length + (floor32(sub_6adf1af4[arg1][3].length - 1) + -sub_6adf1af4[arg1][3].length + 32 % 32)]),
           sub_6adf1af4[arg1][1].length + (floor32(sub_6adf1af4[arg1][1].length - 1) + -sub_6adf1af4[arg1][1].length + 32 % 32) + 384,
           sub_6adf1af4[arg1][1].length + (floor32(sub_6adf1af4[arg1][1].length - 1) + -sub_6adf1af4[arg1][1].length + 32 % 32) + sub_6adf1af4[arg1][2].length + (floor32(sub_6adf1af4[arg1][2].length - 1) + -sub_6adf1af4[arg1][2].length + 32 % 32) + 416,
           sub_6adf1af4[arg1].field_1024,
           sub_6adf1af4[arg1].field_1280,
           sub_6adf1af4[arg1].field_1536,
           sub_6adf1af4[arg1].field_1792,
           sub_6adf1af4[arg1].field_2048,
           sub_6adf1af4[arg1].field_2304,
           sub_6adf1af4[arg1].field_2560
}

function sub_6bb7f6dd(?) {
    return sub_6bb7f6dd
}

function owner() {
    return owner
}

function sub_94b35def(?) {
    return sub_94b35defAddress
}

function sub_bb9e687d(?) {
    return bool(uint8(stor3.field_8))
}

function sub_bbede950(?) {
    return bool(uint8(stor3.field_0))
}

function sub_e5a59952(?) {
    return bool(uint8(stor3.field_24))
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_8aa7e584(?) {
    require msg.sender == owner
    registerAddress = arg1
    emit 0x65bb5ae1: arg1
}

function sub_fb8dc0ac(?) {
    require msg.sender == owner
    sub_33befd34Address = arg1
    emit 0x268e465c: arg1
}

function sub_841269ff(?) {
    require msg.sender == owner
    stor2[arg1] = uint8(arg2)
    emit 0xcacc7a4a: arg1, arg2
}

function sub_59119a41(?) {
    require msg.sender == owner
    stor1[address(arg1)] = uint8(arg2)
    emit 0x72ca202f: address(arg1), arg2
}

function sub_b1f17388(?) {
    require stor1[address(msg.sender)]
    require sub_6557fdfe[arg1].field_256 <= 0
    sub_6557fdfe[arg1].field_256 = block.timestamp
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require msg.sender == sub_33befd34Address
    emit 0x462aa41a: address(arg1), arg2, arg3
}

function sub_b58461b7(?) {
    if sub_6adf1af4[arg1].field_1536 != arg2:
        return (sub_6adf1af4[arg1].field_1536 == arg2)
    return not not sub_6adf1af4[arg1].field_1536
}

function sub_1071dae1(?) {
    require msg.sender == owner
    sub_94b35defAddress = arg1
    if not sub_33befd34Address:
        uint256(stor3.field_0) = not not sub_33befd34Address or Mask(248, 8, uint256(stor3.field_0))
    else:
        uint256(stor3.field_0) = not not arg1 or Mask(248, 8, uint256(stor3.field_0))
    emit 0x418c4784: arg1
}

function sub_3f720aea(?) {
    require sub_6adf1af4[arg2].field_1536 == arg1
    require sha3(msg.sender) != arg3
    if uint8(stor3.field_24):
        sub_6adf1af4[arg2].field_1280 = 3
        sub_6adf1af4[arg2].field_1792 = sub_6adf1af4[arg2].field_1536
        sub_6adf1af4[arg2].field_1536 = arg3
        sub_326ee6aa++
        require ext_code.size(sub_26fc5410Address)
        call sub_26fc5410Address.0x392fbe64 with:
             gas gas_remaining - 50 wei
            args arg3, arg2
        require ext_call.success
        emit 0x8851d43f: arg2, arg3
}

function sub_86c1060f(?) {
    if sub_6adf1af4[arg1].field_1024 > 0:
        if sub_6adf1af4[arg1].field_0 == arg2:
            if sub_6adf1af4[arg1].field_1536 > 0:
                return 2
            if sub_6adf1af4[arg1].field_0 == arg2:
                if sub_6adf1af4[arg1].field_1536 <= 0:
                    return 1
        else:
            if arg2 == sha3(arg1):
                if sub_6adf1af4[arg1].field_1536 > 0:
                    return 2
                if arg2 == sha3(arg1):
                    if sub_6adf1af4[arg1].field_1536 <= 0:
                        return 1
        return 0
    else:
        return 0
}

function sub_9475fd3f(?) {
    require sub_6adf1af4[msg.sender].field_1024 > 0
    if sub_6adf1af4[msg.sender].field_0 == arg1:
        if sub_6adf1af4[msg.sender].field_1536 <= 0:
            require sub_6adf1af4[msg.sender].field_0 == arg1
            require sub_6adf1af4[msg.sender].field_1536 <= 0
    else:
        require arg1 == sha3(msg.sender)
        if sub_6adf1af4[msg.sender].field_1536 <= 0:
            require arg1 == sha3(msg.sender)
            require sub_6adf1af4[msg.sender].field_1536 <= 0
    require sub_6adf1af4[msg.sender].field_1536
    require not sub_3b1afd1f[msg.sender].field_256
    require sub_94b35defAddress
    if uint8(stor3.field_0):
        sub_3b1afd1f[msg.sender].field_256 = 1
        require ext_code.size(sub_33befd34Address)
        call sub_33befd34Address.0x23b872dd with:
             gas gas_remaining - 50 wei
            args sub_94b35defAddress, msg.sender, sub_3b1afd1f[msg.sender].field_0
        require ext_call.success
}

function sub_008c8788(?) {
    require sub_6adf1af4[msg.sender].field_1024 > 0
    if sub_6adf1af4[msg.sender].field_0 == arg2:
        if sub_6adf1af4[msg.sender].field_1536 <= 0:
            require sub_6adf1af4[msg.sender].field_0 == arg2
            require sub_6adf1af4[msg.sender].field_1536 <= 0
    else:
        require arg2 == sha3(msg.sender)
        if sub_6adf1af4[msg.sender].field_1536 <= 0:
            require arg2 == sha3(msg.sender)
            require sub_6adf1af4[msg.sender].field_1536 <= 0
    require not sub_6adf1af4[msg.sender].field_1536
    if uint8(stor3.field_16):
        sub_6adf1af4[msg.sender].field_1536 = arg1
        sub_6adf1af4[msg.sender].field_1280 = 2
        sub_6adf1af4[msg.sender].field_2304 = arg3
        sub_6adf1af4[msg.sender].field_2560 = block.timestamp
        if uint8(stor3.field_8):
            if not sub_6557fdfe[msg.sender].field_256:
                sub_6557fdfe[msg.sender].field_256 = arg4
            sub_6557fdfe[msg.sender].field_512 = arg5
        sub_6bb7f6dd++
        require ext_code.size(sub_26fc5410Address)
        call sub_26fc5410Address.0x392fbe64 with:
             gas gas_remaining - 50 wei
            args arg1, sha3(msg.sender)
        require ext_call.success
        emit 0x37d316e9: sha3(msg.sender)
        require sub_6adf1af4[msg.sender].field_1024 > 0
        if sub_6adf1af4[msg.sender].field_0 == arg2:
            if sub_6adf1af4[msg.sender].field_1536 <= 0:
                require sub_6adf1af4[msg.sender].field_0 == arg2
                require sub_6adf1af4[msg.sender].field_1536 <= 0
        else:
            require arg2 == sha3(msg.sender)
            if sub_6adf1af4[msg.sender].field_1536 <= 0:
                require arg2 == sha3(msg.sender)
                require sub_6adf1af4[msg.sender].field_1536 <= 0
        require sub_6adf1af4[msg.sender].field_1536
        require not sub_3b1afd1f[msg.sender].field_256
        require sub_94b35defAddress
        if uint8(stor3.field_0):
            sub_3b1afd1f[msg.sender].field_256 = 1
            require ext_code.size(sub_33befd34Address)
            call sub_33befd34Address.0x23b872dd with:
                 gas gas_remaining - 50 wei
                args sub_94b35defAddress, msg.sender, sub_3b1afd1f[msg.sender].field_0
            require ext_call.success
}

function sub_1c363d91(?) payable {
    require msg.sender == owner
    if sub_6adf1af4[arg1].field_1536:
        sub_6bb7f6dd--
    if sub_6adf1af4[arg1].field_1792:
        sub_326ee6aa--
    sub_6adf1af4[arg1].field_1280 = 0
    sub_6adf1af4[arg1].field_1536 = 0
    sub_6adf1af4[arg1].field_1792 = 0
    sub_6adf1af4[arg1].field_2304 = 0
    sub_6adf1af4[arg1].field_2560 = 0
    if 31 >= sub_6adf1af4[arg1][1].length:
        idx = 0
        while sub_6adf1af4[arg1][1].length + 31 / 32 > idx:
            sub_6adf1af4[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        if 31 >= sub_6adf1af4[arg1][2].length:
            idx = 0
            while sub_6adf1af4[arg1][2].length + 31 / 32 > idx:
                sub_6adf1af4[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
            if 31 >= sub_6adf1af4[arg1][3].length:
                idx = 0
                while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                    sub_6adf1af4[arg1][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                sub_6adf1af4[arg1].field_768 = Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_768) - 1 and sub_6adf1af4[arg1].field_768) + 1
                if not Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_768) - 1 and sub_6adf1af4[arg1].field_768):
                    idx = 0
                    while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                        sub_6adf1af4[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                        sub_6adf1af4[arg1][s + 3].field_0 = sub_6adf1af4[arg1][idx + 3].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = sub_6adf1af4[arg1][3].length + 31 / 32
                    while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                        sub_6adf1af4[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            sub_6adf1af4[arg1].field_512 = Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_512) - 1 and sub_6adf1af4[arg1].field_512) + 1
            if not Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_512) - 1 and sub_6adf1af4[arg1].field_512):
                idx = 0
                while sub_6adf1af4[arg1][2].length + 31 / 32 > idx:
                    sub_6adf1af4[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while sub_6adf1af4[arg1][2].length + 31 / 32 > idx:
                    sub_6adf1af4[arg1][s + 2].field_0 = sub_6adf1af4[arg1][idx + 2].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = sub_6adf1af4[arg1][2].length + 31 / 32
                while sub_6adf1af4[arg1][2].length + 31 / 32 > idx:
                    sub_6adf1af4[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            if 31 >= sub_6adf1af4[arg1][3].length:
                idx = 0
                while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                    sub_6adf1af4[arg1][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                sub_6adf1af4[arg1].field_768 = Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_768) - 1 and sub_6adf1af4[arg1].field_768) + 1
                if not Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_768) - 1 and sub_6adf1af4[arg1].field_768):
                    idx = 0
                    while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                        sub_6adf1af4[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                        sub_6adf1af4[arg1][s + 3].field_0 = sub_6adf1af4[arg1][idx + 3].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = sub_6adf1af4[arg1][3].length + 31 / 32
                    while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                        sub_6adf1af4[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        sub_6adf1af4[arg1].field_256 = Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_256) - 1 and sub_6adf1af4[arg1].field_256) + 1
        if not Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_256) - 1 and sub_6adf1af4[arg1].field_256):
            idx = 0
            while sub_6adf1af4[arg1][1].length + 31 / 32 > idx:
                sub_6adf1af4[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_6adf1af4[arg1][1].length + 31 / 32 > idx:
                sub_6adf1af4[arg1][s + 1].field_0 = sub_6adf1af4[arg1][idx + 1].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_6adf1af4[arg1][1].length + 31 / 32
            while sub_6adf1af4[arg1][1].length + 31 / 32 > idx:
                sub_6adf1af4[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        if 31 >= sub_6adf1af4[arg1][2].length:
            idx = 0
            while sub_6adf1af4[arg1][2].length + 31 / 32 > idx:
                sub_6adf1af4[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
            if 31 >= sub_6adf1af4[arg1][3].length:
                idx = 0
                while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                    sub_6adf1af4[arg1][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                sub_6adf1af4[arg1].field_768 = Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_768) - 1 and sub_6adf1af4[arg1].field_768) + 1
                if not Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_768) - 1 and sub_6adf1af4[arg1].field_768):
                    idx = 0
                    while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                        sub_6adf1af4[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                        sub_6adf1af4[arg1][s + 3].field_0 = sub_6adf1af4[arg1][idx + 3].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = sub_6adf1af4[arg1][3].length + 31 / 32
                    while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                        sub_6adf1af4[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            sub_6adf1af4[arg1].field_512 = Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_512) - 1 and sub_6adf1af4[arg1].field_512) + 1
            if not Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_512) - 1 and sub_6adf1af4[arg1].field_512):
                idx = 0
                while sub_6adf1af4[arg1][2].length + 31 / 32 > idx:
                    sub_6adf1af4[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while sub_6adf1af4[arg1][2].length + 31 / 32 > idx:
                    sub_6adf1af4[arg1][s + 2].field_0 = sub_6adf1af4[arg1][idx + 2].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = sub_6adf1af4[arg1][2].length + 31 / 32
                while sub_6adf1af4[arg1][2].length + 31 / 32 > idx:
                    sub_6adf1af4[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
            if 31 >= sub_6adf1af4[arg1][3].length:
                idx = 0
                while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                    sub_6adf1af4[arg1][idx + 3].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                sub_6adf1af4[arg1].field_768 = Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_768) - 1 and sub_6adf1af4[arg1].field_768) + 1
                if not Mask(255, 1, (256 * not sub_6adf1af4[arg1].field_768) - 1 and sub_6adf1af4[arg1].field_768):
                    idx = 0
                    while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                        sub_6adf1af4[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                        sub_6adf1af4[arg1][s + 3].field_0 = sub_6adf1af4[arg1][idx + 3].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = sub_6adf1af4[arg1][3].length + 31 / 32
                    while sub_6adf1af4[arg1][3].length + 31 / 32 > idx:
                        sub_6adf1af4[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
    sub_6adf1af4[arg1].field_1280 = sub_6adf1af4[arg1].field_1280
}



}
