contract main {




// =====================  Runtime code  =====================


#
#  - executeTransaction(bytes32 arg1)
#
const MAX_OWNER_COUNT = 50


mapping of struct stor0;
array of uint8 stor1;
mapping of uint256 nonce;
array of uint256 sub_213dafcd;
uint256 required;
uint8 stor5;
uint8 stor5; offset 8
uint8 stor5; offset 16
address sub_eb362f80Address; offset 24
mapping of uint8 stor99;

function confirmations(bytes32 arg1, address arg2) {
    return bool(uint8(stor1[arg1][arg2]))
}

function sub_213dafcd(?) {
    require arg1 < sub_213dafcd.length
    return sub_213dafcd[arg1]
}

function sub_2a6cfb4b(?) {
    return bool(uint8(stor5.field_8))
}

function getNonce(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = address(arg1)
    mem[ceil32(arg3.length) + 148] = arg2
    mem[ceil32(arg3.length) + 180 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 180] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 180] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    return nonce[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len arg3.length % 32]]
}

function nonces(bytes32 arg1) {
    return nonce[arg1]
}

function sub_a5426e1a(?) {
    return bool(uint8(stor5.field_0))
}

function sub_b2b1e107(?) {
    return bool(uint8(stor5.field_16))
}

function required() {
    return required
}

function sub_eb362f80(?) {
    return sub_eb362f80Address
}

function _fallback() payable {
  stop
}

function sub_bf8b2d7d(?) {
    require msg.sender == sub_eb362f80Address
    sub_eb362f80Address = arg1
}

function changeRequirement(uint256 arg1) {
    require this.address == msg.sender
    require ext_code.size(sub_eb362f80Address)
    call sub_eb362f80Address.0xbfda7e30 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 50
    require arg1 <= ext_call.return_data[0]
    require arg1
    require ext_call.return_data[0]
    required = arg1
    emit 0x23e1eda7: arg1
}

function revokeConfirmation(bytes32 arg1) {
    require ext_code.size(sub_eb362f80Address)
    call sub_eb362f80Address.0x2f54bf6e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require uint8(stor1[arg1][msg.sender])
    require not uint8(stor0[arg1].field_1024)
    uint8(stor1[arg1][msg.sender]) = 0
    emit 0x2dda3297: msg.sender, arg1
}

function transactions(bytes32 arg1) {
    mem[128] = uint256(stor0[arg1][2].field_0)
    idx = 128
    s = 0
    while stor0[arg1][2].length + 96 > idx:
        mem[idx + 32] = uint256(stor0[arg1][s + 2].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           uint256(stor0[arg1].field_256),
           Array(len=stor0[arg1][2].length, data=mem[128 len stor0[arg1][2].length]),
           uint256(stor0[arg1].field_768),
           bool(uint8(stor0[arg1].field_1024))
}

function getTransactionCount(bool arg1, bool arg2) {
    idx = 0
    s = 0
    while idx < sub_213dafcd.length:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            require idx < sub_213dafcd.length
            mem[0] = sub_213dafcd[idx]
            mem[32] = 0
            if not uint8(stor0[stor3[idx]].field_1024):
                idx = idx + 1
                s = s
                continue 
        else:
            require idx < sub_213dafcd.length
            mem[0] = sub_213dafcd[idx]
            mem[32] = 0
            if uint8(stor0[stor3[idx]].field_1024):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < sub_213dafcd.length
                mem[0] = sub_213dafcd[idx]
                mem[32] = 0
                if not uint8(stor0[stor3[idx]].field_1024):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getTransactionHashes(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    if sub_213dafcd.length:
        mem[128 len 32 * sub_213dafcd.length] = code.data[8578 len 32 * sub_213dafcd.length]
    idx = 0
    s = 0
    while idx < sub_213dafcd.length:
        if not arg3:
            if not arg4:
                idx = idx + 1
                s = s
                continue 
            require idx < sub_213dafcd.length
            mem[0] = sub_213dafcd[idx]
            mem[32] = 0
            if not uint8(stor0[stor3[idx]].field_1024):
                idx = idx + 1
                s = s
                continue 
        else:
            require idx < sub_213dafcd.length
            mem[0] = sub_213dafcd[idx]
            mem[32] = 0
            if uint8(stor0[stor3[idx]].field_1024):
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < sub_213dafcd.length
                mem[0] = sub_213dafcd[idx]
                mem[32] = 0
                if not uint8(stor0[stor3[idx]].field_1024):
                    idx = idx + 1
                    s = s
                    continue 
        require idx < sub_213dafcd.length
        mem[0] = 3
        require s < sub_213dafcd.length
        mem[(32 * s) + 128] = sub_213dafcd[idx]
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * sub_213dafcd.length) + 128] = arg2 - arg1
    if arg2 - arg1:
        mem[(32 * sub_213dafcd.length) + 160 len 32 * arg2 - arg1] = code.data[8578 len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        require idx < sub_213dafcd.length
        require idx - arg1 < mem[(32 * sub_213dafcd.length) + 128]
        mem[(32 * sub_213dafcd.length) + (32 * idx - arg1) + 160] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * sub_213dafcd.length) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * sub_213dafcd.length) + (32 * arg2 - arg1) + 192] = mem[(32 * sub_213dafcd.length) + 128]
    mem[(32 * sub_213dafcd.length) + (32 * arg2 - arg1) + 224 len floor32(mem[(32 * sub_213dafcd.length) + 128])] = mem[(32 * sub_213dafcd.length) + 160 len floor32(mem[(32 * sub_213dafcd.length) + 128])]
    return Array(len=mem[(32 * sub_213dafcd.length) + 128], data=mem[(32 * sub_213dafcd.length) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * sub_213dafcd.length) + 128]]), 
}

function getConfirmationCount(bytes32 arg1) payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_eb362f80Address)
    call sub_eb362f80Address.mem[var16004 len 4] with:
         gas gas_remaining wei
        args mem[var16004 + 4 len var16005 - 4]
    mem[var16006] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if var20003 >= mem[var20002]:
            return var20004
        mem[0] = arg1
        mem[32] = 1
        mem[96] = 0x25e7c2700000000000000000000000000000000000000000000000000000000
        mem[100] = var22001
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.mem[var24004 len 4] with:
             gas gas_remaining wei
            args mem[var24004 + 4 len var24005 - 4]
        mem[var24006] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            mem[0] = mem[var28002 + 12 len 20]
            require ext_code.size(sub_eb362f80Address)
            call sub_eb362f80Address.0xbfda7e30 with:
                 gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not uint8(stor[var28004][mem[0]]):
                s = var28005
                t = var28006
                while ext_call.success:
                    require return_data.size >= 32
                    if s + 1 >= mem[96]:
                        return t
                    mem[100] = s + 1
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.owners(uint256 arg1) with:
                         gas gas_remaining wei
                        args (s + 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = sha3(arg1, 1)
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.0xbfda7e30 with:
                         gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                        s = s + 1
                        t = t
                        continue 
                    s = s + 1
                    t = t + 1
                    continue 
            else:
                s = var28005
                s = var28006
                while ext_call.success:
                    require return_data.size >= 32
                    if var31001 + 1 >= mem[96]:
                        return (s + 1)
                    mem[100] = var31001 + 1
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.owners(uint256 arg1) with:
                         gas gas_remaining wei
                        args (var31001 + 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = sha3(arg1, 1)
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.0xbfda7e30 with:
                         gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                        var31001 = var31001 + 1
                        continue 
                    s = var31001 + 1
                    s = s + 1
                    continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function getOwners() {
    require ext_code.size(sub_eb362f80Address)
    call sub_eb362f80Address.0xbfda7e30 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ext_call.return_data[0]
    mem[64] = (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 128] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.mem[var19004 len 4] with:
             gas gas_remaining wei
            args mem[var19004 + 4 len var19005 - 4]
        mem[var19006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var23003 >= mem[var23002]:
            mem[(32 * ext_call.return_data[0]) + 128] = 32
            mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            mem[(32 * ext_call.return_data[0]) + 192 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
            return memory
              from (32 * ext_call.return_data[0]) + 128
               len (96 * ext_call.return_data[0]) + 64
        mem[(32 * ext_call.return_data[0]) + 128] = 0x25e7c2700000000000000000000000000000000000000000000000000000000
        mem[(32 * ext_call.return_data[0]) + 132] = var25001
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.mem[var27004 len 4] with:
             gas gas_remaining wei
            args mem[var27004 + 4 len var27005 - 4]
        mem[var27006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require var31003 < ext_call.return_data[0]
        mem[(32 * var33001) + 128] = address(var33003)
        mem[(32 * ext_call.return_data[0]) + 128] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.mem[var37004 len 4] with:
             gas gas_remaining wei
            args mem[var37004 + 4 len var37005 - 4]
        mem[var37006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var41003 >= mem[var41002]:
            mem[(32 * ext_call.return_data[0]) + 128] = 32
            mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            mem[(32 * ext_call.return_data[0]) + 192 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
            return memory
              from (32 * ext_call.return_data[0]) + 128
               len (96 * ext_call.return_data[0]) + 64
        mem[(32 * ext_call.return_data[0]) + 128] = 0x25e7c2700000000000000000000000000000000000000000000000000000000
        mem[(32 * ext_call.return_data[0]) + 132] = var43001
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.mem[var45004 len 4] with:
             gas gas_remaining wei
            args mem[var45004 + 4 len var45005 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require var49003 < ext_call.return_data[0]
        require ext_code.size(sub_eb362f80Address)
        # nil
    else:
        mem[128 len 32 * ext_call.return_data[0]] = code.data[8578 len 32 * ext_call.return_data[0]]
        mem[(32 * ext_call.return_data[0]) + 128] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.mem[var20004 len 4] with:
             gas gas_remaining wei
            args mem[var20004 + 4 len var20005 - 4]
        mem[var20006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var24003 >= mem[var24002]:
            mem[(32 * ext_call.return_data[0]) + 128] = 32
            mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            mem[(32 * ext_call.return_data[0]) + 192 len floor32(ext_call.return_data[0])] = code.data[8578 len floor32(ext_call.return_data[0])]
            return memory
              from (32 * ext_call.return_data[0]) + 128
               len (96 * ext_call.return_data[0]) + 64
        mem[(32 * ext_call.return_data[0]) + 128] = 0x25e7c2700000000000000000000000000000000000000000000000000000000
        mem[(32 * ext_call.return_data[0]) + 132] = var26001
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.mem[var28004 len 4] with:
             gas gas_remaining wei
            args mem[var28004 + 4 len var28005 - 4]
        mem[var28006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require var32003 < ext_call.return_data[0]
        mem[(32 * var34001) + 128] = address(var34003)
        mem[(32 * ext_call.return_data[0]) + 128] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.mem[var38004 len 4] with:
             gas gas_remaining wei
            args mem[var38004 + 4 len var38005 - 4]
        mem[var38006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var42003 >= mem[var42002]:
            mem[(32 * ext_call.return_data[0]) + 128] = 32
            mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            mem[(32 * ext_call.return_data[0]) + 192 len floor32(ext_call.return_data[0])] = code.data[8578 len floor32(ext_call.return_data[0])]
            return memory
              from (32 * ext_call.return_data[0]) + 128
               len (96 * ext_call.return_data[0]) + 64
        mem[(32 * ext_call.return_data[0]) + 128] = 0x25e7c2700000000000000000000000000000000000000000000000000000000
        mem[(32 * ext_call.return_data[0]) + 132] = var44001
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.mem[var46004 len 4] with:
             gas gas_remaining wei
            args mem[var46004 + 4 len var46005 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require var50003 < ext_call.return_data[0]
        require ext_code.size(sub_eb362f80Address)
        # nil
}

function getConfirmations(bytes32 arg1) {
    require ext_code.size(sub_eb362f80Address)
    call sub_eb362f80Address.0xbfda7e30 with:
         gas gas_remaining wei
    if ext_call.success:
        require return_data.size >= 32
        mem[96] = ext_call.return_data[0]
        mem[64] = (32 * ext_call.return_data[0]) + 128
        if not ext_call.return_data[0]:
            mem[(32 * ext_call.return_data[0]) + 128] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_eb362f80Address)
            call sub_eb362f80Address.mem[var24004 len 4] with:
                 gas gas_remaining wei
                args mem[var24004 + 4 len var24005 - 4]
            mem[var24006] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if var28003 >= mem[var28002]:
                    mem[(32 * ext_call.return_data[0]) + 128] = var28004
                    if var28004:
                        mem[(32 * ext_call.return_data[0]) + 160 len 32 * var28004] = code.data[8578 len 32 * var28004]
                    s = 0
                    while s < var28004:
                        require s < ext_call.return_data[0]
                        require s < var28004
                        mem[(32 * ext_call.return_data[0]) + (32 * s) + 160] = mem[(32 * s) + 140 len 20]
                        s = s + 1
                        continue 
                    mem[(32 * ext_call.return_data[0]) + (32 * var28004) + 224 len floor32(var28004)] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(var28004)]
                    return Array(len=var28004, data=mem[(32 * ext_call.return_data[0]) + 160 len floor32(var28004)], mem[(32 * ext_call.return_data[0]) + (32 * var28004) + floor32(var28004) + 224 len (32 * var28004) - floor32(var28004)]), 
                mem[0] = arg1
                mem[32] = 1
                mem[(32 * ext_call.return_data[0]) + 128] = 0x25e7c2700000000000000000000000000000000000000000000000000000000
                mem[(32 * ext_call.return_data[0]) + 132] = var30001
                require ext_code.size(sub_eb362f80Address)
                call sub_eb362f80Address.mem[var32004 len 4] with:
                     gas gas_remaining wei
                    args mem[var32004 + 4 len var32005 - 4]
                mem[var32006] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    mem[0] = mem[var36002 + 12 len 20]
                    mem[32] = var36004
                    if not uint8(stor[var36004][mem[0]]):
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.0xbfda7e30 with:
                             gas gas_remaining wei
                        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                        s = var36005
                        t = var36006
                        while ext_call.success:
                            require return_data.size >= 32
                            if s + 1 >= mem[(32 * ext_call.return_data[0]) + 128]:
                                mem[(32 * ext_call.return_data[0]) + 128] = t
                                if not t:
                                    u = 0
                                    while u < t:
                                        require u < ext_call.return_data[0]
                                        require u < t
                                        mem[(32 * ext_call.return_data[0]) + (32 * u) + 160] = mem[(32 * u) + 140 len 20]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                            args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                        u = u + 1
                                        continue 
                                    mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 32
                                    mem[(32 * ext_call.return_data[0]) + (32 * t) + 192] = t
                                    u = 0
                                    while u < 32 * t:
                                        mem[u + (32 * ext_call.return_data[0]) + (32 * t) + 224] = mem[u + (32 * ext_call.return_data[0]) + 160]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                            args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                        u = u + 32
                                        continue 
                                else:
                                    mem[(32 * ext_call.return_data[0]) + 160 len 32 * t] = code.data[8578 len 32 * t]
                                    s = 0
                                    while s < t:
                                        require s < ext_call.return_data[0]
                                        require s < t
                                        mem[(32 * ext_call.return_data[0]) + (32 * s) + 160] = mem[(32 * s) + 140 len 20]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                            args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                        s = s + 1
                                        continue 
                                    mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 32
                                    mem[(32 * ext_call.return_data[0]) + (32 * t) + 192] = t
                                    s = 0
                                    while s < 32 * t:
                                        mem[s + (32 * ext_call.return_data[0]) + (32 * t) + 224] = mem[s + (32 * ext_call.return_data[0]) + 160]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                            args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                        s = s + 32
                                        continue 
                                return mem[(32 * ext_call.return_data[0]) + (32 * t) + 160], 
                                       t,
                                       mem[(32 * ext_call.return_data[0]) + (32 * t) + 224 len 32 * t]
                            mem[(32 * ext_call.return_data[0]) + 132] = s + 1
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.owners(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = sha3(arg1, 1)
                            if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xbfda7e30 with:
                                     gas gas_remaining wei
                                mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                s = s + 1
                                t = t
                                continue 
                            mem[(32 * ext_call.return_data[0]) + 132] = s + 1
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.owners(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require t < ext_call.return_data[0]
                            mem[(32 * t) + 128] = address(ext_call.return_data[0])
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xbfda7e30 with:
                                 gas gas_remaining wei
                            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        mem[(32 * ext_call.return_data[0]) + 128] = 0x25e7c2700000000000000000000000000000000000000000000000000000000
                        mem[(32 * ext_call.return_data[0]) + 132] = var38001
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var40004 len 4] with:
                             gas gas_remaining wei
                            args mem[var40004 + 4 len var40005 - 4]
                        mem[var40006] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            require var44004 < ext_call.return_data[0]
                            mem[(32 * var46001) + 128] = address(var46003)
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xbfda7e30 with:
                                 gas gas_remaining wei
                            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                            s = var46004
                            t = var46005 + 1
                            while ext_call.success:
                                require return_data.size >= 32
                                if s + 1 >= mem[(32 * ext_call.return_data[0]) + 128]:
                                    mem[(32 * ext_call.return_data[0]) + 128] = t
                                    if not t:
                                        u = 0
                                        while u < t:
                                            require u < ext_call.return_data[0]
                                            require u < t
                                            mem[(32 * ext_call.return_data[0]) + (32 * u) + 160] = mem[(32 * u) + 140 len 20]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                                args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                            u = u + 1
                                            continue 
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 32
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 192] = t
                                        u = 0
                                        while u < 32 * t:
                                            mem[u + (32 * ext_call.return_data[0]) + (32 * t) + 224] = mem[u + (32 * ext_call.return_data[0]) + 160]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                                args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                            u = u + 32
                                            continue 
                                    else:
                                        mem[(32 * ext_call.return_data[0]) + 160 len 32 * t] = code.data[8578 len 32 * t]
                                        s = 0
                                        while s < t:
                                            require s < ext_call.return_data[0]
                                            require s < t
                                            mem[(32 * ext_call.return_data[0]) + (32 * s) + 160] = mem[(32 * s) + 140 len 20]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                                args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                            s = s + 1
                                            continue 
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 32
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 192] = t
                                        s = 0
                                        while s < 32 * t:
                                            mem[s + (32 * ext_call.return_data[0]) + (32 * t) + 224] = mem[s + (32 * ext_call.return_data[0]) + 160]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                                args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                            s = s + 32
                                            continue 
                                    return mem[(32 * ext_call.return_data[0]) + (32 * t) + 160], 
                                           t,
                                           mem[(32 * ext_call.return_data[0]) + (32 * t) + 224 len 32 * t]
                                mem[(32 * ext_call.return_data[0]) + 132] = s + 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.owners(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s + 1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = address(ext_call.return_data[0])
                                mem[32] = sha3(arg1, 1)
                                if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xbfda7e30 with:
                                         gas gas_remaining wei
                                    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                    s = s + 1
                                    t = t
                                    continue 
                                mem[(32 * ext_call.return_data[0]) + 132] = s + 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.owners(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s + 1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require t < ext_call.return_data[0]
                                mem[(32 * t) + 128] = address(ext_call.return_data[0])
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xbfda7e30 with:
                                     gas gas_remaining wei
                                mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                s = s + 1
                                t = t + 1
                                continue 
        else:
            mem[128 len 32 * ext_call.return_data[0]] = code.data[8578 len 32 * ext_call.return_data[0]]
            mem[(32 * ext_call.return_data[0]) + 128] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_eb362f80Address)
            call sub_eb362f80Address.mem[var25004 len 4] with:
                 gas gas_remaining wei
                args mem[var25004 + 4 len var25005 - 4]
            mem[var25006] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if var29003 >= mem[var29002]:
                    mem[(32 * ext_call.return_data[0]) + 128] = var29004
                    if var29004:
                        mem[(32 * ext_call.return_data[0]) + 160 len 32 * var29004] = code.data[8578 len 32 * var29004]
                    s = 0
                    while s < var29004:
                        require s < ext_call.return_data[0]
                        require s < var29004
                        mem[(32 * ext_call.return_data[0]) + (32 * s) + 160] = mem[(32 * s) + 140 len 20]
                        s = s + 1
                        continue 
                    mem[(32 * ext_call.return_data[0]) + (32 * var29004) + 224 len floor32(var29004)] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(var29004)]
                    return Array(len=var29004, data=mem[(32 * ext_call.return_data[0]) + 160 len floor32(var29004)], mem[(32 * ext_call.return_data[0]) + (32 * var29004) + floor32(var29004) + 224 len (32 * var29004) - floor32(var29004)]), 
                mem[0] = arg1
                mem[32] = 1
                mem[(32 * ext_call.return_data[0]) + 128] = 0x25e7c2700000000000000000000000000000000000000000000000000000000
                mem[(32 * ext_call.return_data[0]) + 132] = var31001
                require ext_code.size(sub_eb362f80Address)
                call sub_eb362f80Address.mem[var33004 len 4] with:
                     gas gas_remaining wei
                    args mem[var33004 + 4 len var33005 - 4]
                mem[var33006] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    mem[0] = mem[var37002 + 12 len 20]
                    mem[32] = var37004
                    if not uint8(stor[var37004][mem[0]]):
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.0xbfda7e30 with:
                             gas gas_remaining wei
                        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                        s = var37005
                        t = var37006
                        while ext_call.success:
                            require return_data.size >= 32
                            if s + 1 >= mem[(32 * ext_call.return_data[0]) + 128]:
                                mem[(32 * ext_call.return_data[0]) + 128] = t
                                if not t:
                                    u = 0
                                    while u < t:
                                        require u < ext_call.return_data[0]
                                        require u < t
                                        mem[(32 * ext_call.return_data[0]) + (32 * u) + 160] = mem[(32 * u) + 140 len 20]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                            args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                        u = u + 1
                                        continue 
                                    mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 32
                                    mem[(32 * ext_call.return_data[0]) + (32 * t) + 192] = t
                                    u = 0
                                    while u < 32 * t:
                                        mem[u + (32 * ext_call.return_data[0]) + (32 * t) + 224] = mem[u + (32 * ext_call.return_data[0]) + 160]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                            args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                        u = u + 32
                                        continue 
                                else:
                                    mem[(32 * ext_call.return_data[0]) + 160 len 32 * t] = code.data[8578 len 32 * t]
                                    s = 0
                                    while s < t:
                                        require s < ext_call.return_data[0]
                                        require s < t
                                        mem[(32 * ext_call.return_data[0]) + (32 * s) + 160] = mem[(32 * s) + 140 len 20]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                            args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                        s = s + 1
                                        continue 
                                    mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 32
                                    mem[(32 * ext_call.return_data[0]) + (32 * t) + 192] = t
                                    s = 0
                                    while s < 32 * t:
                                        mem[s + (32 * ext_call.return_data[0]) + (32 * t) + 224] = mem[s + (32 * ext_call.return_data[0]) + 160]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                            args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                        s = s + 32
                                        continue 
                                return mem[(32 * ext_call.return_data[0]) + (32 * t) + 160], 
                                       t,
                                       mem[(32 * ext_call.return_data[0]) + (32 * t) + 224 len 32 * t]
                            mem[(32 * ext_call.return_data[0]) + 132] = s + 1
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.owners(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = sha3(arg1, 1)
                            if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xbfda7e30 with:
                                     gas gas_remaining wei
                                mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                s = s + 1
                                t = t
                                continue 
                            mem[(32 * ext_call.return_data[0]) + 132] = s + 1
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.owners(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require t < ext_call.return_data[0]
                            mem[(32 * t) + 128] = address(ext_call.return_data[0])
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xbfda7e30 with:
                                 gas gas_remaining wei
                            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        mem[(32 * ext_call.return_data[0]) + 128] = 0x25e7c2700000000000000000000000000000000000000000000000000000000
                        mem[(32 * ext_call.return_data[0]) + 132] = var39001
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var41004 len 4] with:
                             gas gas_remaining wei
                            args mem[var41004 + 4 len var41005 - 4]
                        mem[var41006] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            require var45004 < ext_call.return_data[0]
                            mem[(32 * var47001) + 128] = address(var47003)
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xbfda7e30 with:
                                 gas gas_remaining wei
                            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                            s = var47004
                            t = var47005 + 1
                            while ext_call.success:
                                require return_data.size >= 32
                                if s + 1 >= mem[(32 * ext_call.return_data[0]) + 128]:
                                    mem[(32 * ext_call.return_data[0]) + 128] = t
                                    if not t:
                                        u = 0
                                        while u < t:
                                            require u < ext_call.return_data[0]
                                            require u < t
                                            mem[(32 * ext_call.return_data[0]) + (32 * u) + 160] = mem[(32 * u) + 140 len 20]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                                args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                            u = u + 1
                                            continue 
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 32
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 192] = t
                                        u = 0
                                        while u < 32 * t:
                                            mem[u + (32 * ext_call.return_data[0]) + (32 * t) + 224] = mem[u + (32 * ext_call.return_data[0]) + 160]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                                args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                            u = u + 32
                                            continue 
                                    else:
                                        mem[(32 * ext_call.return_data[0]) + 160 len 32 * t] = code.data[8578 len 32 * t]
                                        s = 0
                                        while s < t:
                                            require s < ext_call.return_data[0]
                                            require s < t
                                            mem[(32 * ext_call.return_data[0]) + (32 * s) + 160] = mem[(32 * s) + 140 len 20]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                                args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                            s = s + 1
                                            continue 
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 32
                                        mem[(32 * ext_call.return_data[0]) + (32 * t) + 192] = t
                                        s = 0
                                        while s < 32 * t:
                                            mem[s + (32 * ext_call.return_data[0]) + (32 * t) + 224] = mem[s + (32 * ext_call.return_data[0]) + 160]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                                args mem[(32 * ext_call.return_data[0]) + (32 * t) + 164 len -(32 * t) - 32]
                                            mem[(32 * ext_call.return_data[0]) + (32 * t) + 160] = ext_call.return_data[0]
                                            s = s + 32
                                            continue 
                                    return mem[(32 * ext_call.return_data[0]) + (32 * t) + 160], 
                                           t,
                                           mem[(32 * ext_call.return_data[0]) + (32 * t) + 224 len 32 * t]
                                mem[(32 * ext_call.return_data[0]) + 132] = s + 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.owners(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s + 1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = address(ext_call.return_data[0])
                                mem[32] = sha3(arg1, 1)
                                if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xbfda7e30 with:
                                         gas gas_remaining wei
                                    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                    s = s + 1
                                    t = t
                                    continue 
                                mem[(32 * ext_call.return_data[0]) + 132] = s + 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.owners(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (s + 1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require t < ext_call.return_data[0]
                                mem[(32 * t) + 128] = address(ext_call.return_data[0])
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xbfda7e30 with:
                                     gas gas_remaining wei
                                mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                s = s + 1
                                t = t + 1
                                continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function isConfirmed(bytes32 arg1) payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_eb362f80Address)
    call sub_eb362f80Address.mem[var16004 len 4] with:
         gas gas_remaining wei
        args mem[var16004 + 4 len var16005 - 4]
    mem[var16006] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if var20006 < mem[var20002]:
            mem[0] = arg1
            mem[32] = 1
            mem[96] = 0x25e7c2700000000000000000000000000000000000000000000000000000000
            mem[100] = var22004
            require ext_code.size(sub_eb362f80Address)
            call sub_eb362f80Address.mem[var24004 len 4] with:
                 gas gas_remaining wei
                args mem[var24004 + 4 len var24005 - 4]
            mem[var24006] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                mem[0] = mem[var28002 + 12 len 20]
                mem[32] = var28004
                require ext_code.size(sub_eb362f80Address)
                call sub_eb362f80Address.0xbfda7e30 with:
                     gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not uint8(stor[var28004][mem[0]]):
                    s = var28008
                    t = var28009
                    while ext_call.success:
                        require return_data.size >= 32
                        if s + 1 < mem[96]:
                            mem[100] = s + 1
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.owners(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = sha3(arg1, 1)
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xbfda7e30 with:
                                 gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                        if t < required:
                            return 0
                        if not uint8(stor5.field_0):
                            if t < required:
                                return 0
                            if uint8(stor5.field_0):
                                mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var45004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var45004 + 4 len var45005 - 4]
                                mem[var45006] = ext_call.return_data[0]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if var49004 >= mem[var49002]:
                                        return 0
                                    mem[0] = arg1
                                    mem[32] = 1
                                    mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                    mem[100] = var51002
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var53004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var53004 + 4 len var53005 - 4]
                                    mem[var53006] = ext_call.return_data[0]
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        mem[0] = mem[var57002 + 12 len 20]
                                        if uint8(stor[var57004][mem[0]]):
                                            return 1
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = var57006
                                        while ext_call.success:
                                            require return_data.size >= 32
                                            if s + 1 >= mem[96]:
                                                return 0
                                            mem[100] = s + 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xefa8154e with:
                                                 gas gas_remaining wei
                                                args (s + 1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(arg1, 1)
                                            if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                return 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xf084b83e with:
                                                 gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            s = s + 1
                                            continue 
                            else:
                                if t < required:
                                    return 0
                                if not uint8(stor5.field_8):
                                    return 0
                                mem[96] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var48004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var48004 + 4 len var48005 - 4]
                                mem[var48006] = ext_call.return_data[0]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if var52003 >= mem[var52002]:
                                        return 0
                                    mem[0] = arg1
                                    mem[32] = 1
                                    mem[96] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                    mem[100] = var54001
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var56004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var56004 + 4 len var56005 - 4]
                                    mem[var56006] = ext_call.return_data[0]
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        mem[0] = mem[var60002 + 12 len 20]
                                        if uint8(stor[var60004][mem[0]]):
                                            return 1
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xc833f2 with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = var60005
                                        while ext_call.success:
                                            require return_data.size >= 32
                                            if s + 1 >= mem[96]:
                                                return 0
                                            mem[100] = s + 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0x3d39c260 with:
                                                 gas gas_remaining wei
                                                args (s + 1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(arg1, 1)
                                            if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                return 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xc833f2 with:
                                                 gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            s = s + 1
                                            continue 
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(stor5.field_16):
                            mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var48004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var48004 + 4 len var48005 - 4]
                            mem[var48006] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if var52005 >= mem[var52002]:
                                return 0
                            mem[0] = arg1
                            mem[32] = 1
                            mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                            mem[100] = var54003
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var56004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var56004 + 4 len var56005 - 4]
                            mem[var56006] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = mem[var60002 + 12 len 20]
                            if not uint8(stor[var60004][mem[0]]):
                                if var62001:
                                    return 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xf084b83e with:
                                     gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                s = var62004
                                while ext_call.success:
                                    require return_data.size >= 32
                                    if s + 1 >= mem[96]:
                                        return 0
                                    mem[100] = s + 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xefa8154e with:
                                         gas gas_remaining wei
                                        args (s + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = sha3(arg1, 1)
                                    if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0x375b74c3 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(ext_call.return_data[0])
                                        mem[32] = sha3(arg1, 1)
                                        if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                            return 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xbfda7e30 with:
                                         gas gas_remaining wei
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xf084b83e with:
                                         gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    s = s + 1
                                    continue 
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = arg1
                            mem[32] = 1
                            mem[96] = 0x375b74c300000000000000000000000000000000000000000000000000000000
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var64004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var64004 + 4 len var64005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                        else:
                            if t < required:
                                return 0
                            if uint8(stor5.field_0):
                                mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var46004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var46004 + 4 len var46005 - 4]
                                mem[var46006] = ext_call.return_data[0]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if var50004 >= mem[var50002]:
                                        return 0
                                    mem[0] = arg1
                                    mem[32] = 1
                                    mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                    mem[100] = var52002
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var54004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var54004 + 4 len var54005 - 4]
                                    mem[var54006] = ext_call.return_data[0]
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        mem[0] = mem[var58002 + 12 len 20]
                                        if uint8(stor[var58004][mem[0]]):
                                            return 1
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = var58006
                                        while ext_call.success:
                                            require return_data.size >= 32
                                            if s + 1 >= mem[96]:
                                                return 0
                                            mem[100] = s + 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xefa8154e with:
                                                 gas gas_remaining wei
                                                args (s + 1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(arg1, 1)
                                            if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                return 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xf084b83e with:
                                                 gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            s = s + 1
                                            continue 
                            else:
                                if t < required:
                                    return 0
                                if not uint8(stor5.field_8):
                                    return 0
                                mem[96] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var49004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var49004 + 4 len var49005 - 4]
                                mem[var49006] = ext_call.return_data[0]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if var53003 >= mem[var53002]:
                                        return 0
                                    mem[0] = arg1
                                    mem[32] = 1
                                    mem[96] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                    mem[100] = var55001
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var57004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var57004 + 4 len var57005 - 4]
                                    mem[var57006] = ext_call.return_data[0]
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        mem[0] = mem[var61002 + 12 len 20]
                                        if uint8(stor[var61004][mem[0]]):
                                            return 1
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xc833f2 with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = var61005
                                        while ext_call.success:
                                            require return_data.size >= 32
                                            if s + 1 >= mem[96]:
                                                return 0
                                            mem[100] = s + 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0x3d39c260 with:
                                                 gas gas_remaining wei
                                                args (s + 1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(arg1, 1)
                                            if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                return 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xc833f2 with:
                                                 gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            s = s + 1
                                            continue 
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    s = var28008
                    s = var28009
                    while ext_call.success:
                        require return_data.size >= 32
                        if var31004 + 1 < mem[96]:
                            mem[100] = var31004 + 1
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.owners(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (var31004 + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = sha3(arg1, 1)
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xbfda7e30 with:
                                 gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                var31004 = var31004 + 1
                                continue 
                            s = var31004 + 1
                            s = s + 1
                            continue 
                        if s + 1 < required:
                            return 0
                        if not uint8(stor5.field_0):
                            if s + 1 < required:
                                return 0
                            if uint8(stor5.field_0):
                                mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var47004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var47004 + 4 len var47005 - 4]
                                mem[var47006] = ext_call.return_data[0]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if var51004 >= mem[var51002]:
                                        return 0
                                    mem[0] = arg1
                                    mem[32] = 1
                                    mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                    mem[100] = var53002
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var55004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var55004 + 4 len var55005 - 4]
                                    mem[var55006] = ext_call.return_data[0]
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        mem[0] = mem[var59002 + 12 len 20]
                                        if uint8(stor[var59004][mem[0]]):
                                            return 1
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = var59006
                                        while ext_call.success:
                                            require return_data.size >= 32
                                            if s + 1 >= mem[96]:
                                                return 0
                                            mem[100] = s + 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xefa8154e with:
                                                 gas gas_remaining wei
                                                args (s + 1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(arg1, 1)
                                            if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                return 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xf084b83e with:
                                                 gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            s = s + 1
                                            continue 
                            else:
                                if s + 1 < required:
                                    return 0
                                if not uint8(stor5.field_8):
                                    return 0
                                mem[96] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var50004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var50004 + 4 len var50005 - 4]
                                mem[var50006] = ext_call.return_data[0]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if var54003 >= mem[var54002]:
                                        return 0
                                    mem[0] = arg1
                                    mem[32] = 1
                                    mem[96] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                    mem[100] = var56001
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var58004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var58004 + 4 len var58005 - 4]
                                    mem[var58006] = ext_call.return_data[0]
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        mem[0] = mem[var62002 + 12 len 20]
                                        if uint8(stor[var62004][mem[0]]):
                                            return 1
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xc833f2 with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = var62005
                                        while ext_call.success:
                                            require return_data.size >= 32
                                            if s + 1 >= mem[96]:
                                                return 0
                                            mem[100] = s + 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0x3d39c260 with:
                                                 gas gas_remaining wei
                                                args (s + 1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(arg1, 1)
                                            if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                return 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xc833f2 with:
                                                 gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            s = s + 1
                                            continue 
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint8(stor5.field_16):
                            mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var50004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var50004 + 4 len var50005 - 4]
                            mem[var50006] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if var54005 >= mem[var54002]:
                                return 0
                            mem[0] = arg1
                            mem[32] = 1
                            mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                            mem[100] = var56003
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var58004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var58004 + 4 len var58005 - 4]
                            mem[var58006] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = mem[var62002 + 12 len 20]
                            if not uint8(stor[var62004][mem[0]]):
                                if not var64001:
                                    # nil
                                else:
                                    return 1
                            else:
                                require ext_code.size(sub_eb362f80Address)
                                # nil
                        else:
                            if s + 1 < required:
                                return 0
                            if uint8(stor5.field_0):
                                mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var48004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var48004 + 4 len var48005 - 4]
                                mem[var48006] = ext_call.return_data[0]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if var52004 >= mem[var52002]:
                                        return 0
                                    mem[0] = arg1
                                    mem[32] = 1
                                    mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                    mem[100] = var54002
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var56004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var56004 + 4 len var56005 - 4]
                                    mem[var56006] = ext_call.return_data[0]
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        mem[0] = mem[var60002 + 12 len 20]
                                        if uint8(stor[var60004][mem[0]]):
                                            return 1
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = var60006
                                        while ext_call.success:
                                            require return_data.size >= 32
                                            if s + 1 >= mem[96]:
                                                return 0
                                            mem[100] = s + 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xefa8154e with:
                                                 gas gas_remaining wei
                                                args (s + 1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(arg1, 1)
                                            if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                return 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xf084b83e with:
                                                 gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            s = s + 1
                                            continue 
                            else:
                                if s + 1 < required:
                                    return 0
                                if not uint8(stor5.field_8):
                                    return 0
                                mem[96] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var51004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var51004 + 4 len var51005 - 4]
                                mem[var51006] = ext_call.return_data[0]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if var55003 >= mem[var55002]:
                                        return 0
                                    mem[0] = arg1
                                    mem[32] = 1
                                    mem[96] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                    mem[100] = var57001
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var59004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var59004 + 4 len var59005 - 4]
                                    mem[var59006] = ext_call.return_data[0]
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        mem[0] = mem[var63002 + 12 len 20]
                                        if uint8(stor[var63004][mem[0]]):
                                            return 1
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xc833f2 with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = var63005
                                        while ext_call.success:
                                            require return_data.size >= 32
                                            if s + 1 >= mem[96]:
                                                return 0
                                            mem[100] = s + 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0x3d39c260 with:
                                                 gas gas_remaining wei
                                                args (s + 1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(arg1, 1)
                                            if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                return 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                 gas gas_remaining wei
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xc833f2 with:
                                                 gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            s = s + 1
                                            continue 
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if var20007 < required:
                return 0
            if not uint8(stor5.field_0):
                if var20007 < required:
                    return 0
                if uint8(stor5.field_0):
                    mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.mem[var31004 len 4] with:
                         gas gas_remaining wei
                        args mem[var31004 + 4 len var31005 - 4]
                    mem[var31006] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        if var35004 >= mem[var35002]:
                            return 0
                        mem[0] = arg1
                        mem[32] = 1
                        mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                        mem[100] = var37002
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var39004 len 4] with:
                             gas gas_remaining wei
                            args mem[var39004 + 4 len var39005 - 4]
                        mem[var39006] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            mem[0] = mem[var43002 + 12 len 20]
                            if uint8(stor[var43004][mem[0]]):
                                return 1
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xf084b83e with:
                                 gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            s = var43006
                            while ext_call.success:
                                require return_data.size >= 32
                                if s + 1 >= mem[96]:
                                    return 0
                                mem[100] = s + 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xefa8154e with:
                                     gas gas_remaining wei
                                    args (s + 1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = address(ext_call.return_data[0])
                                mem[32] = sha3(arg1, 1)
                                if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                    return 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xf084b83e with:
                                     gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                s = s + 1
                                continue 
                else:
                    if var20007 < required:
                        return 0
                    if not uint8(stor5.field_8):
                        return 0
                    mem[96] = 0xc833f200000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.mem[var34004 len 4] with:
                         gas gas_remaining wei
                        args mem[var34004 + 4 len var34005 - 4]
                    mem[var34006] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        if var38003 >= mem[var38002]:
                            return 0
                        mem[0] = arg1
                        mem[32] = 1
                        mem[96] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                        mem[100] = var40001
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var42004 len 4] with:
                             gas gas_remaining wei
                            args mem[var42004 + 4 len var42005 - 4]
                        mem[var42006] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            mem[0] = mem[var46002 + 12 len 20]
                            if uint8(stor[var46004][mem[0]]):
                                return 1
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xc833f2 with:
                                 gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            s = var46005
                            while ext_call.success:
                                require return_data.size >= 32
                                if s + 1 >= mem[96]:
                                    return 0
                                mem[100] = s + 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0x3d39c260 with:
                                     gas gas_remaining wei
                                    args (s + 1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = address(ext_call.return_data[0])
                                mem[32] = sha3(arg1, 1)
                                if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                    return 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xc833f2 with:
                                     gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                s = s + 1
                                continue 
            else:
                if not uint8(stor5.field_16):
                    if var20007 < required:
                        return 0
                    if uint8(stor5.field_0):
                        mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var32004 len 4] with:
                             gas gas_remaining wei
                            args mem[var32004 + 4 len var32005 - 4]
                        mem[var32006] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            if var36004 >= mem[var36002]:
                                return 0
                            mem[0] = arg1
                            mem[32] = 1
                            mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                            mem[100] = var38002
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var40004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var40004 + 4 len var40005 - 4]
                            mem[var40006] = ext_call.return_data[0]
                            if ext_call.success:
                                require return_data.size >= 32
                                mem[0] = mem[var44002 + 12 len 20]
                                if uint8(stor[var44004][mem[0]]):
                                    return 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xf084b83e with:
                                     gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                s = var44006
                                while ext_call.success:
                                    require return_data.size >= 32
                                    if s + 1 >= mem[96]:
                                        return 0
                                    mem[100] = s + 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xefa8154e with:
                                         gas gas_remaining wei
                                        args (s + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = sha3(arg1, 1)
                                    if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                        return 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xf084b83e with:
                                         gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    s = s + 1
                                    continue 
                    else:
                        if var20007 < required:
                            return 0
                        if not uint8(stor5.field_8):
                            return 0
                        mem[96] = 0xc833f200000000000000000000000000000000000000000000000000000000
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var35004 len 4] with:
                             gas gas_remaining wei
                            args mem[var35004 + 4 len var35005 - 4]
                        mem[var35006] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            if var39003 >= mem[var39002]:
                                return 0
                            mem[0] = arg1
                            mem[32] = 1
                            mem[96] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                            mem[100] = var41001
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var43004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var43004 + 4 len var43005 - 4]
                            mem[var43006] = ext_call.return_data[0]
                            if ext_call.success:
                                require return_data.size >= 32
                                mem[0] = mem[var47002 + 12 len 20]
                                if uint8(stor[var47004][mem[0]]):
                                    return 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xc833f2 with:
                                     gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                s = var47005
                                while ext_call.success:
                                    require return_data.size >= 32
                                    if s + 1 >= mem[96]:
                                        return 0
                                    mem[100] = s + 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0x3d39c260 with:
                                         gas gas_remaining wei
                                        args (s + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = sha3(arg1, 1)
                                    if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                        return 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xc833f2 with:
                                         gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    s = s + 1
                                    continue 
                else:
                    mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.mem[var34004 len 4] with:
                         gas gas_remaining wei
                        args mem[var34004 + 4 len var34005 - 4]
                    mem[var34006] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        if var38005 >= mem[var38002]:
                            return 0
                        mem[0] = arg1
                        mem[32] = 1
                        mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                        mem[100] = var40003
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var42004 len 4] with:
                             gas gas_remaining wei
                            args mem[var42004 + 4 len var42005 - 4]
                        mem[var42006] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            mem[0] = mem[var46002 + 12 len 20]
                            if not uint8(stor[var46004][mem[0]]):
                                if var48001:
                                    return 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xf084b83e with:
                                     gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                s = var48004
                                while ext_call.success:
                                    require return_data.size >= 32
                                    if s + 1 >= mem[96]:
                                        return 0
                                    mem[100] = s + 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xefa8154e with:
                                         gas gas_remaining wei
                                        args (s + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = sha3(arg1, 1)
                                    if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0x375b74c3 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(ext_call.return_data[0])
                                        mem[32] = sha3(arg1, 1)
                                        if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                            return 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xf084b83e with:
                                         gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    s = s + 1
                                    continue 
                            else:
                                mem[0] = arg1
                                mem[32] = 1
                                mem[96] = 0x375b74c300000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var50004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var50004 + 4 len var50005 - 4]
                                mem[var50006] = ext_call.return_data[0]
                                if ext_call.success:
                                    require return_data.size >= 32
                                    if var56001:
                                        return 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xf084b83e with:
                                         gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    s = var56004
                                    while ext_call.success:
                                        require return_data.size >= 32
                                        if s + 1 >= mem[96]:
                                            return 0
                                        mem[100] = s + 1
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xefa8154e with:
                                             gas gas_remaining wei
                                            args (s + 1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(ext_call.return_data[0])
                                        mem[32] = sha3(arg1, 1)
                                        if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0x375b74c3 with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(arg1, 1)
                                            if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                return 1
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = s + 1
                                        continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3, uint256 arg4) {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    require arg1
    mem[ceil32(arg3.length) + 128] = address(arg1)
    mem[ceil32(arg3.length) + 148] = arg2
    mem[ceil32(arg3.length) + 180 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 180] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 180] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    require arg4 <= nonce[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len arg3.length % 32]]
    mem[ceil32(arg3.length) + 128] = address(arg1)
    mem[ceil32(arg3.length) + 148] = arg2
    mem[ceil32(arg3.length) + 180 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 180] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 180] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    mem[ceil32(arg3.length) + arg3.length + 180] = arg4
    _3669 = sha3(arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 32])
    if address(stor0[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 32]].field_0):
        mem[ceil32(arg3.length) + 132] = msg.sender
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require not uint8(stor1[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 32]][address(msg.sender)])
        uint8(stor1[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 32]][address(msg.sender)]) = 1
        emit 0x93ce35c8: sha3(arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 32]), msg.sender
        mem[0] = sha3(arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 32])
        mem[32] = 0
        require not uint8(stor0[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 32]].field_1024)
        mem[ceil32(arg3.length) + 128] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.mem[var38004 len 4] with:
             gas gas_remaining wei
            args mem[var38004 + 4 len var38005 - 4]
        mem[var38006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var42006 < mem[var42002]:
            mem[0] = _3669
            mem[32] = 1
            mem[ceil32(arg3.length) + 128] = 0x25e7c2700000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 132] = var44004
            require ext_code.size(sub_eb362f80Address)
            call sub_eb362f80Address.mem[var46004 len 4] with:
                 gas gas_remaining wei
                args mem[var46004 + 4 len var46005 - 4]
            mem[var46006] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                mem[0] = mem[var50002 + 12 len 20]
                mem[32] = var50004
                require ext_code.size(sub_eb362f80Address)
                call sub_eb362f80Address.0xbfda7e30 with:
                     gas gas_remaining wei
                mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                if not uint8(stor[var50004][mem[0]]):
                    s = var50008
                    t = var50009
                    while ext_call.success:
                        require return_data.size >= 32
                        if s + 1 < mem[ceil32(arg3.length) + 128]:
                            mem[ceil32(arg3.length) + 132] = s + 1
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.owners(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = sha3(_3669, 1)
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xbfda7e30 with:
                                 gas gas_remaining wei
                            mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                            if not uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                        if t < required:
                            return _3669
                        if not uint8(stor5.field_0):
                            if t < required:
                                return _3669
                            if uint8(stor5.field_0):
                                mem[ceil32(arg3.length) + 128] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var67004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var67004 + 4 len var67005 - 4]
                                mem[var67006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var71004 >= mem[var71002]:
                                    return _3669
                                mem[0] = _3669
                                mem[32] = 1
                                mem[ceil32(arg3.length) + 128] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 132] = var73002
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var75004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var75004 + 4 len var75005 - 4]
                                mem[var75006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = mem[var79002 + 12 len 20]
                                if uint8(stor[var79004][mem[0]]):
                                    uint8(stor0[_3669].field_1024) = 1
                                # nil
                            else:
                                if t < required:
                                    return _3669
                                if not uint8(stor5.field_8):
                                    return _3669
                                mem[ceil32(arg3.length) + 128] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var70004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var70004 + 4 len var70005 - 4]
                                mem[var70006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var74003 >= mem[var74002]:
                                    return _3669
                                mem[0] = _3669
                                mem[32] = 1
                                mem[ceil32(arg3.length) + 128] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 132] = var76001
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var78004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var78004 + 4 len var78005 - 4]
                                mem[var78006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = mem[var82002 + 12 len 20]
                                if uint8(stor[var82004][mem[0]]):
                                    uint8(stor0[_3669].field_1024) = 1
                                # nil
                        else:
                            if uint8(stor5.field_16):
                                mem[ceil32(arg3.length) + 128] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var70004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var70004 + 4 len var70005 - 4]
                                mem[var70006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var74005 >= mem[var74002]:
                                    return _3669
                                mem[0] = _3669
                                mem[32] = 1
                                mem[ceil32(arg3.length) + 128] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 132] = var76003
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var78004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var78004 + 4 len var78005 - 4]
                                mem[var78006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = mem[var82002 + 12 len 20]
                                # nil
                            else:
                                if t < required:
                                    return _3669
                                if uint8(stor5.field_0):
                                    mem[ceil32(arg3.length) + 128] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var68004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var68004 + 4 len var68005 - 4]
                                    mem[var68006] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if var72004 >= mem[var72002]:
                                        return _3669
                                    mem[0] = _3669
                                    mem[32] = 1
                                    mem[ceil32(arg3.length) + 128] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg3.length) + 132] = var74002
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var76004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var76004 + 4 len var76005 - 4]
                                    mem[var76006] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = mem[var80002 + 12 len 20]
                                    if uint8(stor[var80004][mem[0]]):
                                        uint8(stor0[_3669].field_1024) = 1
                                    # nil
                                else:
                                    if t < required:
                                        return _3669
                                    if not uint8(stor5.field_8):
                                        return _3669
                                    mem[ceil32(arg3.length) + 128] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var71004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var71004 + 4 len var71005 - 4]
                                    mem[var71006] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if var75003 >= mem[var75002]:
                                        return _3669
                                    mem[0] = _3669
                                    mem[32] = 1
                                    mem[ceil32(arg3.length) + 128] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg3.length) + 132] = var77001
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var79004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var79004 + 4 len var79005 - 4]
                                    mem[var79006] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = mem[var83002 + 12 len 20]
                                    if uint8(stor[var83004][mem[0]]):
                                        uint8(stor0[_3669].field_1024) = 1
                                    # nil
                else:
                    s = var50008
                    s = var50009
                    while ext_call.success:
                        require return_data.size >= 32
                        if var53004 + 1 < mem[ceil32(arg3.length) + 128]:
                            mem[ceil32(arg3.length) + 132] = var53004 + 1
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.owners(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (var53004 + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = sha3(_3669, 1)
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xbfda7e30 with:
                                 gas gas_remaining wei
                            mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                            if not uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                var53004 = var53004 + 1
                                continue 
                            s = var53004 + 1
                            s = s + 1
                            continue 
                        if s + 1 < required:
                            return _3669
                        if not uint8(stor5.field_0):
                            if s + 1 < required:
                                return _3669
                            if uint8(stor5.field_0):
                                mem[ceil32(arg3.length) + 128] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var69004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var69004 + 4 len var69005 - 4]
                                mem[var69006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var73004 >= mem[var73002]:
                                    return _3669
                                mem[0] = _3669
                                mem[32] = 1
                                mem[ceil32(arg3.length) + 128] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 132] = var75002
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var77004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var77004 + 4 len var77005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                # nil
                            else:
                                if s + 1 < required:
                                    return _3669
                                if not uint8(stor5.field_8):
                                    return _3669
                                mem[ceil32(arg3.length) + 128] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var72004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var72004 + 4 len var72005 - 4]
                                mem[var72006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var76003 >= mem[var76002]:
                                    return _3669
                                mem[0] = _3669
                                mem[32] = 1
                                mem[ceil32(arg3.length) + 128] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 132] = var78001
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var80004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var80004 + 4 len var80005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                # nil
                        else:
                            if uint8(stor5.field_16):
                                mem[ceil32(arg3.length) + 128] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var72004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var72004 + 4 len var72005 - 4]
                                mem[var72006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var76005 >= mem[var76002]:
                                    return _3669
                                mem[0] = _3669
                                mem[32] = 1
                                mem[ceil32(arg3.length) + 128] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 132] = var78003
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var80004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var80004 + 4 len var80005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                # nil
                            else:
                                if s + 1 < required:
                                    return _3669
                                if uint8(stor5.field_0):
                                    mem[ceil32(arg3.length) + 128] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var70004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var70004 + 4 len var70005 - 4]
                                    mem[var70006] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if var74004 >= mem[var74002]:
                                        return _3669
                                    mem[0] = _3669
                                    mem[32] = 1
                                    mem[ceil32(arg3.length) + 128] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg3.length) + 132] = var76002
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var78004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var78004 + 4 len var78005 - 4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    # nil
                                else:
                                    if s + 1 < required:
                                        return _3669
                                    if not uint8(stor5.field_8):
                                        return _3669
                                    mem[ceil32(arg3.length) + 128] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var73004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var73004 + 4 len var73005 - 4]
                                    mem[var73006] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if var77003 >= mem[var77002]:
                                        return _3669
                                    mem[0] = _3669
                                    mem[32] = 1
                                    mem[ceil32(arg3.length) + 128] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg3.length) + 132] = var79001
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var81004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var81004 + 4 len var81005 - 4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    # nil
            revert with ext_call.return_data[0 len return_data.size]
        if var42007 < required:
            return _3669
        if not uint8(stor5.field_0):
            if var42007 >= required:
                if uint8(stor5.field_0):
                    mem[ceil32(arg3.length) + 128] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.mem[var53004 len 4] with:
                         gas gas_remaining wei
                        args mem[var53004 + 4 len var53005 - 4]
                    mem[var53006] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var57004 < mem[var57002]:
                        mem[0] = _3669
                        mem[32] = 1
                        mem[ceil32(arg3.length) + 128] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 132] = var59002
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var61004 len 4] with:
                             gas gas_remaining wei
                            args mem[var61004 + 4 len var61005 - 4]
                        mem[var61006] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = mem[var65002 + 12 len 20]
                        if not uint8(stor[var65004][mem[0]]):
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xf084b83e with:
                                 gas gas_remaining wei
                            mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                            s = var65006
                            while ext_call.success:
                                require return_data.size >= 32
                                if s + 1 < mem[ceil32(arg3.length) + 128]:
                                    mem[ceil32(arg3.length) + 132] = s + 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xefa8154e with:
                                         gas gas_remaining wei
                                        args (s + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = sha3(_3669, 1)
                                    if not uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                                        s = s + 1
                                        continue 
                                    uint8(stor0[_3669].field_1024) = 1
                                    mem[0] = sha3(_3669, 0) + 2
                                    mem[ceil32(arg3.length) + 128] = uint256(stor0[_3669][2].field_0)
                                    idx = mem[64]
                                    s = sha3(mem[0])
                                    while ceil32(arg3.length) + stor0[_3669][2].length + 128 > idx + 32:
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        mem[idx + 32] = uint256(stor1[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                                       value uint256(stor0[_3669].field_256) wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 124]
                                    if ext_call.success:
                                        emit 0x5e0c8305: _3669
                                    else:
                                        emit 0x95a8dfe7: _3669
                                        uint8(stor0[_3669].field_1024) = 0
                                return _3669
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor0[_3669].field_1024) = 1
                        mem[0] = sha3(_3669, 0) + 2
                        mem[ceil32(arg3.length) + 128] = uint256(stor0[_3669][2].field_0)
                        idx = mem[64]
                        s = 0
                        while ceil32(arg3.length) + stor0[_3669][2].length + 128 > idx + 32:
                            mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                           value uint256(stor0[_3669].field_256) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 124]
                        if ext_call.success:
                            emit 0x5e0c8305: _3669
                        else:
                            emit 0x95a8dfe7: _3669
                            uint8(stor0[_3669].field_1024) = 0
                else:
                    if var42007 >= required:
                        if uint8(stor5.field_8):
                            mem[ceil32(arg3.length) + 128] = 0xc833f200000000000000000000000000000000000000000000000000000000
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var56004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var56004 + 4 len var56005 - 4]
                            mem[var56006] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if var60003 < mem[var60002]:
                                mem[0] = _3669
                                mem[32] = 1
                                mem[ceil32(arg3.length) + 128] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 132] = var62001
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var64004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var64004 + 4 len var64005 - 4]
                                mem[var64006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = mem[var68002 + 12 len 20]
                                if not uint8(stor[var68004][mem[0]]):
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xc833f2 with:
                                         gas gas_remaining wei
                                    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                                    s = var68005
                                    while ext_call.success:
                                        require return_data.size >= 32
                                        if s + 1 < mem[ceil32(arg3.length) + 128]:
                                            mem[ceil32(arg3.length) + 132] = s + 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0x3d39c260 with:
                                                 gas gas_remaining wei
                                                args (s + 1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(_3669, 1)
                                            if not uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xc833f2 with:
                                                     gas gas_remaining wei
                                                mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                                                s = s + 1
                                                continue 
                                            uint8(stor0[_3669].field_1024) = 1
                                            mem[0] = sha3(_3669, 0) + 2
                                            mem[ceil32(arg3.length) + 128] = uint256(stor0[_3669][2].field_0)
                                            idx = mem[64]
                                            s = sha3(mem[0])
                                            while ceil32(arg3.length) + stor0[_3669][2].length + 128 > idx + 32:
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xc833f2 with:
                                                     gas gas_remaining wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                mem[idx + 32] = uint256(stor1[s])
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                                               value uint256(stor0[_3669].field_256) wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 124]
                                            if ext_call.success:
                                                emit 0x5e0c8305: _3669
                                            else:
                                                emit 0x95a8dfe7: _3669
                                                uint8(stor0[_3669].field_1024) = 0
                                        return _3669
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor0[_3669].field_1024) = 1
                                mem[0] = sha3(_3669, 0) + 2
                                mem[ceil32(arg3.length) + 128] = uint256(stor0[_3669][2].field_0)
                                idx = mem[64]
                                s = 0
                                while ceil32(arg3.length) + stor0[_3669][2].length + 128 > idx + 32:
                                    mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                                   value uint256(stor0[_3669].field_256) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 124]
                                if ext_call.success:
                                    emit 0x5e0c8305: _3669
                                else:
                                    emit 0x95a8dfe7: _3669
                                    uint8(stor0[_3669].field_1024) = 0
            return _3669
        if uint8(stor5.field_16):
            mem[ceil32(arg3.length) + 128] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_eb362f80Address)
            call sub_eb362f80Address.mem[var56004 len 4] with:
                 gas gas_remaining wei
                args mem[var56004 + 4 len var56005 - 4]
            mem[var56006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var60005 >= mem[var60002]:
                return _3669
            mem[0] = _3669
            mem[32] = 1
            mem[ceil32(arg3.length) + 128] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 132] = var62003
            require ext_code.size(sub_eb362f80Address)
            call sub_eb362f80Address.mem[var64004 len 4] with:
                 gas gas_remaining wei
                args mem[var64004 + 4 len var64005 - 4]
            mem[var64006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = mem[var68002 + 12 len 20]
            if not uint8(stor[var68004][mem[0]]):
                if not var70001:
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.0xf084b83e with:
                         gas gas_remaining wei
                    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                    s = var70004
                    while ext_call.success:
                        require return_data.size >= 32
                        if s + 1 < mem[ceil32(arg3.length) + 128]:
                            mem[ceil32(arg3.length) + 132] = s + 1
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xefa8154e with:
                                 gas gas_remaining wei
                                args (s + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = sha3(_3669, 1)
                            if not uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xf084b83e with:
                                     gas gas_remaining wei
                                mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                                s = s + 1
                                continue 
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0x375b74c3 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = sha3(_3669, 1)
                            if not uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xf084b83e with:
                                     gas gas_remaining wei
                                mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                                s = s + 1
                                continue 
                            uint8(stor0[_3669].field_1024) = 1
                            mem[0] = sha3(_3669, 0) + 2
                            mem[ceil32(arg3.length) + 128] = uint256(stor0[_3669][2].field_0)
                            idx = mem[64]
                            s = sha3(mem[0])
                            while ceil32(arg3.length) + stor0[_3669][2].length + 128 > idx + 32:
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xf084b83e with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                mem[idx + 32] = uint256(stor1[s])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                               value uint256(stor0[_3669].field_256) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 124]
                            if ext_call.success:
                                emit 0x5e0c8305: _3669
                            else:
                                emit 0x95a8dfe7: _3669
                                uint8(stor0[_3669].field_1024) = 0
                        return _3669
                    revert with ext_call.return_data[0 len return_data.size]
                uint8(stor0[_3669].field_1024) = 1
                mem[0] = sha3(_3669, 0) + 2
                mem[ceil32(arg3.length) + 128] = uint256(stor0[_3669][2].field_0)
                idx = mem[64]
                s = 0
                while ceil32(arg3.length) + stor0[_3669][2].length + 128 > idx + 32:
                    mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
                    idx = idx + 32
                    s = s + 1
                    continue 
                call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                   value uint256(stor0[_3669].field_256) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 124]
                if ext_call.success:
                    emit 0x5e0c8305: _3669
                else:
                    emit 0x95a8dfe7: _3669
                    uint8(stor0[_3669].field_1024) = 0
                return _3669
            mem[0] = _3669
            mem[32] = 1
            mem[ceil32(arg3.length) + 128] = 0x375b74c300000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_eb362f80Address)
            call sub_eb362f80Address.mem[var72004 len 4] with:
                 gas gas_remaining wei
                args mem[var72004 + 4 len var72005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var78001:
                uint8(stor0[_3669].field_1024) = 1
            # nil
        else:
            if var42007 >= required:
                if uint8(stor5.field_0):
                    mem[ceil32(arg3.length) + 128] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.mem[var54004 len 4] with:
                         gas gas_remaining wei
                        args mem[var54004 + 4 len var54005 - 4]
                    mem[var54006] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var58004 < mem[var58002]:
                        mem[0] = _3669
                        mem[32] = 1
                        mem[ceil32(arg3.length) + 128] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 132] = var60002
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var62004 len 4] with:
                             gas gas_remaining wei
                            args mem[var62004 + 4 len var62005 - 4]
                        mem[var62006] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = mem[var66002 + 12 len 20]
                        if not uint8(stor[var66004][mem[0]]):
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xf084b83e with:
                                 gas gas_remaining wei
                            mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                            s = var66006
                            while ext_call.success:
                                require return_data.size >= 32
                                if s + 1 < mem[ceil32(arg3.length) + 128]:
                                    mem[ceil32(arg3.length) + 132] = s + 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xefa8154e with:
                                         gas gas_remaining wei
                                        args (s + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = sha3(_3669, 1)
                                    if not uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                                        s = s + 1
                                        continue 
                                    uint8(stor0[_3669].field_1024) = 1
                                    mem[0] = sha3(_3669, 0) + 2
                                    mem[ceil32(arg3.length) + 128] = uint256(stor0[_3669][2].field_0)
                                    idx = mem[64]
                                    s = sha3(mem[0])
                                    while ceil32(arg3.length) + stor0[_3669][2].length + 128 > idx + 32:
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        mem[idx + 32] = uint256(stor1[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                                       value uint256(stor0[_3669].field_256) wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 124]
                                    if ext_call.success:
                                        emit 0x5e0c8305: _3669
                                    else:
                                        emit 0x95a8dfe7: _3669
                                        uint8(stor0[_3669].field_1024) = 0
                                return _3669
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor0[_3669].field_1024) = 1
                        mem[0] = sha3(_3669, 0) + 2
                        mem[ceil32(arg3.length) + 128] = uint256(stor0[_3669][2].field_0)
                        idx = mem[64]
                        s = 0
                        while ceil32(arg3.length) + stor0[_3669][2].length + 128 > idx + 32:
                            mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                           value uint256(stor0[_3669].field_256) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 124]
                        if ext_call.success:
                            emit 0x5e0c8305: _3669
                        else:
                            emit 0x95a8dfe7: _3669
                            uint8(stor0[_3669].field_1024) = 0
                else:
                    if var42007 >= required:
                        if uint8(stor5.field_8):
                            mem[ceil32(arg3.length) + 128] = 0xc833f200000000000000000000000000000000000000000000000000000000
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var57004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var57004 + 4 len var57005 - 4]
                            mem[var57006] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if var61003 < mem[var61002]:
                                mem[0] = _3669
                                mem[32] = 1
                                mem[ceil32(arg3.length) + 128] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 132] = var63001
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var65004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var65004 + 4 len var65005 - 4]
                                mem[var65006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = mem[var69002 + 12 len 20]
                                if not uint8(stor[var69004][mem[0]]):
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xc833f2 with:
                                         gas gas_remaining wei
                                    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                                    s = var69005
                                    while ext_call.success:
                                        require return_data.size >= 32
                                        if s + 1 < mem[ceil32(arg3.length) + 128]:
                                            mem[ceil32(arg3.length) + 132] = s + 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0x3d39c260 with:
                                                 gas gas_remaining wei
                                                args (s + 1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(_3669, 1)
                                            if not uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xc833f2 with:
                                                     gas gas_remaining wei
                                                mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                                                s = s + 1
                                                continue 
                                            uint8(stor0[_3669].field_1024) = 1
                                            mem[0] = sha3(_3669, 0) + 2
                                            mem[ceil32(arg3.length) + 128] = uint256(stor0[_3669][2].field_0)
                                            idx = mem[64]
                                            s = sha3(mem[0])
                                            while ceil32(arg3.length) + stor0[_3669][2].length + 128 > idx + 32:
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xc833f2 with:
                                                     gas gas_remaining wei
                                                mem[mem[64]] = ext_call.return_data[0]
                                                mem[idx + 32] = uint256(stor1[s])
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                                               value uint256(stor0[_3669].field_256) wei
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 124]
                                            if ext_call.success:
                                                emit 0x5e0c8305: _3669
                                            else:
                                                emit 0x95a8dfe7: _3669
                                                uint8(stor0[_3669].field_1024) = 0
                                        return _3669
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor0[_3669].field_1024) = 1
                                mem[0] = sha3(_3669, 0) + 2
                                mem[ceil32(arg3.length) + 128] = uint256(stor0[_3669][2].field_0)
                                idx = mem[64]
                                s = 0
                                while ceil32(arg3.length) + stor0[_3669][2].length + 128 > idx + 32:
                                    mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                                   value uint256(stor0[_3669].field_256) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 124]
                                if ext_call.success:
                                    emit 0x5e0c8305: _3669
                                else:
                                    emit 0x95a8dfe7: _3669
                                    uint8(stor0[_3669].field_1024) = 0
            return _3669
    else:
        mem[64] = ceil32(arg3.length) + 288
        mem[ceil32(arg3.length) + 128] = arg1
        mem[ceil32(arg3.length) + 160] = arg2
        mem[ceil32(arg3.length) + 192] = 96
        mem[ceil32(arg3.length) + 224] = arg4
        mem[ceil32(arg3.length) + 256] = 0
        address(stor0[_3669].field_0) = arg1
        uint256(stor0[_3669].field_256) = arg2
        uint256(stor0[_3669][2][].field_0) = Array(len=arg3.length, data=arg3[all])
        uint256(stor0[_3669].field_768) = arg4
        uint8(stor0[_3669].field_1024) = 0
        mem[ceil32(arg3.length) + 340 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + 340] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 340] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
        nonce[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 340 len arg3.length % 32]]++
        sub_213dafcd.length++
        sub_213dafcd[sub_213dafcd.length] = _3669
        mem[ceil32(arg3.length) + 320] = arg3.length
        mem[ceil32(arg3.length) + 352 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        emit 0x5e94174b: Array(len=arg3.length, data=arg3[all]), _3669, arg1
        mem[ceil32(arg3.length) + 292] = msg.sender
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.0x2f54bf6e with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require not uint8(stor1[_3669][address(msg.sender)])
        uint8(stor1[_3669][address(msg.sender)]) = 1
        emit 0x93ce35c8: _3669, msg.sender
        mem[0] = _3669
        mem[32] = 0
        require not uint8(stor0[_3669].field_1024)
        mem[ceil32(arg3.length) + 288] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.mem[var58004 len 4] with:
             gas gas_remaining wei
            args mem[var58004 + 4 len var58005 - 4]
        mem[var58006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var62006 < mem[var62002]:
            mem[0] = _3669
            mem[32] = 1
            mem[ceil32(arg3.length) + 288] = 0x25e7c2700000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 292] = var64004
            require ext_code.size(sub_eb362f80Address)
            call sub_eb362f80Address.mem[var66004 len 4] with:
                 gas gas_remaining wei
                args mem[var66004 + 4 len var66005 - 4]
            mem[var66006] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                mem[0] = mem[var70002 + 12 len 20]
                mem[32] = var70004
                require ext_code.size(sub_eb362f80Address)
                call sub_eb362f80Address.0xbfda7e30 with:
                     gas gas_remaining wei
                mem[ceil32(arg3.length) + 288] = ext_call.return_data[0]
                if not uint8(stor[var70004][mem[0]]):
                    s = var70008
                    t = var70009
                    while ext_call.success:
                        require return_data.size >= 32
                        if s + 1 < mem[ceil32(arg3.length) + 288]:
                            mem[ceil32(arg3.length) + 292] = s + 1
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.owners(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = sha3(_3669, 1)
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xbfda7e30 with:
                                 gas gas_remaining wei
                            mem[ceil32(arg3.length) + 288] = ext_call.return_data[0]
                            if not uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                        if t < required:
                            return _3669
                        if not uint8(stor5.field_0):
                            if t < required:
                                return _3669
                            if uint8(stor5.field_0):
                                mem[ceil32(arg3.length) + 288] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var87004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var87004 + 4 len var87005 - 4]
                                mem[var87006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var91004 >= mem[var91002]:
                                    return _3669
                                # nil
                            else:
                                if t < required:
                                    return _3669
                                if not uint8(stor5.field_8):
                                    return _3669
                                mem[ceil32(arg3.length) + 288] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var90004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var90004 + 4 len var90005 - 4]
                                mem[var90006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var94003 >= mem[var94002]:
                                    return _3669
                                # nil
                        else:
                            if uint8(stor5.field_16):
                                mem[ceil32(arg3.length) + 288] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var90004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var90004 + 4 len var90005 - 4]
                                mem[var90006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var94005 >= mem[var94002]:
                                    return _3669
                                # nil
                            else:
                                if t < required:
                                    return _3669
                                if uint8(stor5.field_0):
                                    mem[ceil32(arg3.length) + 288] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var88004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var88004 + 4 len var88005 - 4]
                                    mem[var88006] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if var92004 >= mem[var92002]:
                                        return _3669
                                    # nil
                                else:
                                    if t < required:
                                        return _3669
                                    if not uint8(stor5.field_8):
                                        return _3669
                                    mem[ceil32(arg3.length) + 288] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var91004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var91004 + 4 len var91005 - 4]
                                    mem[var91006] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if var95003 >= mem[var95002]:
                                        return _3669
                                    # nil
                else:
                    s = var70008
                    s = var70009
                    while ext_call.success:
                        require return_data.size >= 32
                        if var73004 + 1 < mem[ceil32(arg3.length) + 288]:
                            mem[ceil32(arg3.length) + 292] = var73004 + 1
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.owners(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (var73004 + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = address(ext_call.return_data[0])
                            mem[32] = sha3(_3669, 1)
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xbfda7e30 with:
                                 gas gas_remaining wei
                            mem[ceil32(arg3.length) + 288] = ext_call.return_data[0]
                            if not uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                var73004 = var73004 + 1
                                continue 
                            s = var73004 + 1
                            s = s + 1
                            continue 
                        if s + 1 < required:
                            return _3669
                        if not uint8(stor5.field_0):
                            if s + 1 < required:
                                return _3669
                            if uint8(stor5.field_0):
                                mem[ceil32(arg3.length) + 288] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var89004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var89004 + 4 len var89005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                # nil
                            else:
                                if s + 1 < required:
                                    return _3669
                                if not uint8(stor5.field_8):
                                    return _3669
                                mem[ceil32(arg3.length) + 288] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var92004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var92004 + 4 len var92005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                # nil
                        else:
                            if uint8(stor5.field_16):
                                mem[ceil32(arg3.length) + 288] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var92004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var92004 + 4 len var92005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                # nil
                            else:
                                if s + 1 < required:
                                    return _3669
                                if uint8(stor5.field_0):
                                    mem[ceil32(arg3.length) + 288] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var90004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var90004 + 4 len var90005 - 4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    # nil
                                else:
                                    if s + 1 < required:
                                        return _3669
                                    if not uint8(stor5.field_8):
                                        return _3669
                                    mem[ceil32(arg3.length) + 288] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var93004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var93004 + 4 len var93005 - 4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    # nil
            revert with ext_call.return_data[0 len return_data.size]
        if var62007 < required:
            return _3669
        if not uint8(stor5.field_0):
            if var62007 >= required:
                if uint8(stor5.field_0):
                    mem[ceil32(arg3.length) + 288] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.mem[var73004 len 4] with:
                         gas gas_remaining wei
                        args mem[var73004 + 4 len var73005 - 4]
                    mem[var73006] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var77004 < mem[var77002]:
                        mem[0] = _3669
                        mem[32] = 1
                        mem[ceil32(arg3.length) + 288] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 292] = var79002
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var81004 len 4] with:
                             gas gas_remaining wei
                            args mem[var81004 + 4 len var81005 - 4]
                        mem[var81006] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = mem[var85002 + 12 len 20]
                        if not uint8(stor[var85004][mem[0]]):
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xf084b83e with:
                                 gas gas_remaining wei
                            mem[ceil32(arg3.length) + 288] = ext_call.return_data[0]
                            s = var85006
                            while ext_call.success:
                                require return_data.size >= 32
                                if s + 1 >= mem[ceil32(arg3.length) + 288]:
                                    return _3669
                                mem[ceil32(arg3.length) + 292] = s + 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xefa8154e with:
                                     gas gas_remaining wei
                                    args (s + 1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = address(ext_call.return_data[0])
                                mem[32] = sha3(_3669, 1)
                                if uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                    uint8(stor0[_3669].field_1024) = 1
                                    # nil
                                else:
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xf084b83e with:
                                         gas gas_remaining wei
                                    mem[ceil32(arg3.length) + 288] = ext_call.return_data[0]
                                    s = s + 1
                                    continue 
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor0[_3669].field_1024) = 1
                        mem[0] = sha3(_3669, 0) + 2
                        mem[ceil32(arg3.length) + 288] = uint256(stor0[_3669][2].field_0)
                        idx = mem[64]
                        s = 0
                        while ceil32(arg3.length) + stor0[_3669][2].length + 288 > idx + 32:
                            mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                           value uint256(stor0[_3669].field_256) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 284]
                        if ext_call.success:
                            emit 0x5e0c8305: _3669
                        else:
                            emit 0x95a8dfe7: _3669
                            uint8(stor0[_3669].field_1024) = 0
                else:
                    if var62007 >= required:
                        if uint8(stor5.field_8):
                            mem[ceil32(arg3.length) + 288] = 0xc833f200000000000000000000000000000000000000000000000000000000
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var76004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var76004 + 4 len var76005 - 4]
                            mem[var76006] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if var80003 < mem[var80002]:
                                mem[0] = _3669
                                mem[32] = 1
                                mem[ceil32(arg3.length) + 288] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 292] = var82001
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var84004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var84004 + 4 len var84005 - 4]
                                mem[var84006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = mem[var88002 + 12 len 20]
                                if not uint8(stor[var88004][mem[0]]):
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xc833f2 with:
                                         gas gas_remaining wei
                                    mem[ceil32(arg3.length) + 288] = ext_call.return_data[0]
                                    s = var88005
                                    while ext_call.success:
                                        require return_data.size >= 32
                                        if s + 1 >= mem[ceil32(arg3.length) + 288]:
                                            return _3669
                                        mem[ceil32(arg3.length) + 292] = s + 1
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0x3d39c260 with:
                                             gas gas_remaining wei
                                            args (s + 1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(ext_call.return_data[0])
                                        mem[32] = sha3(_3669, 1)
                                        if uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                            uint8(stor0[_3669].field_1024) = 1
                                            # nil
                                        else:
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xc833f2 with:
                                                 gas gas_remaining wei
                                            mem[ceil32(arg3.length) + 288] = ext_call.return_data[0]
                                            s = s + 1
                                            continue 
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor0[_3669].field_1024) = 1
                                mem[0] = sha3(_3669, 0) + 2
                                mem[ceil32(arg3.length) + 288] = uint256(stor0[_3669][2].field_0)
                                idx = mem[64]
                                s = 0
                                while ceil32(arg3.length) + stor0[_3669][2].length + 288 > idx + 32:
                                    mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                                   value uint256(stor0[_3669].field_256) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 284]
                                if ext_call.success:
                                    emit 0x5e0c8305: _3669
                                else:
                                    emit 0x95a8dfe7: _3669
                                    uint8(stor0[_3669].field_1024) = 0
            return _3669
        if uint8(stor5.field_16):
            mem[ceil32(arg3.length) + 288] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_eb362f80Address)
            call sub_eb362f80Address.mem[var76004 len 4] with:
                 gas gas_remaining wei
                args mem[var76004 + 4 len var76005 - 4]
            mem[var76006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var80005 >= mem[var80002]:
                return _3669
            mem[0] = _3669
            mem[32] = 1
            mem[ceil32(arg3.length) + 288] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 292] = var82003
            require ext_code.size(sub_eb362f80Address)
            call sub_eb362f80Address.mem[var84004 len 4] with:
                 gas gas_remaining wei
                args mem[var84004 + 4 len var84005 - 4]
            mem[var84006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = mem[var88002 + 12 len 20]
            if uint8(stor[var88004][mem[0]]):
                require ext_code.size(sub_eb362f80Address)
                # nil
            else:
                if var90001:
                    uint8(stor0[_3669].field_1024) = 1
                # nil
        else:
            if var62007 >= required:
                if uint8(stor5.field_0):
                    mem[ceil32(arg3.length) + 288] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.mem[var74004 len 4] with:
                         gas gas_remaining wei
                        args mem[var74004 + 4 len var74005 - 4]
                    mem[var74006] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var78004 < mem[var78002]:
                        mem[0] = _3669
                        mem[32] = 1
                        mem[ceil32(arg3.length) + 288] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 292] = var80002
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var82004 len 4] with:
                             gas gas_remaining wei
                            args mem[var82004 + 4 len var82005 - 4]
                        mem[var82006] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = mem[var86002 + 12 len 20]
                        if not uint8(stor[var86004][mem[0]]):
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xf084b83e with:
                                 gas gas_remaining wei
                            mem[ceil32(arg3.length) + 288] = ext_call.return_data[0]
                            s = var86006
                            while ext_call.success:
                                require return_data.size >= 32
                                if s + 1 >= mem[ceil32(arg3.length) + 288]:
                                    return _3669
                                mem[ceil32(arg3.length) + 292] = s + 1
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xefa8154e with:
                                     gas gas_remaining wei
                                    args (s + 1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = address(ext_call.return_data[0])
                                mem[32] = sha3(_3669, 1)
                                if uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                    uint8(stor0[_3669].field_1024) = 1
                                    # nil
                                else:
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xf084b83e with:
                                         gas gas_remaining wei
                                    mem[ceil32(arg3.length) + 288] = ext_call.return_data[0]
                                    s = s + 1
                                    continue 
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor0[_3669].field_1024) = 1
                        mem[0] = sha3(_3669, 0) + 2
                        mem[ceil32(arg3.length) + 288] = uint256(stor0[_3669][2].field_0)
                        idx = mem[64]
                        s = 0
                        while ceil32(arg3.length) + stor0[_3669][2].length + 288 > idx + 32:
                            mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                           value uint256(stor0[_3669].field_256) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 284]
                        if ext_call.success:
                            emit 0x5e0c8305: _3669
                        else:
                            emit 0x95a8dfe7: _3669
                            uint8(stor0[_3669].field_1024) = 0
                else:
                    if var62007 >= required:
                        if uint8(stor5.field_8):
                            mem[ceil32(arg3.length) + 288] = 0xc833f200000000000000000000000000000000000000000000000000000000
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var77004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var77004 + 4 len var77005 - 4]
                            mem[var77006] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if var81003 < mem[var81002]:
                                mem[0] = _3669
                                mem[32] = 1
                                mem[ceil32(arg3.length) + 288] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 292] = var83001
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var85004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var85004 + 4 len var85005 - 4]
                                mem[var85006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = mem[var89002 + 12 len 20]
                                if not uint8(stor[var89004][mem[0]]):
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xc833f2 with:
                                         gas gas_remaining wei
                                    mem[ceil32(arg3.length) + 288] = ext_call.return_data[0]
                                    s = var89005
                                    while ext_call.success:
                                        require return_data.size >= 32
                                        if s + 1 >= mem[ceil32(arg3.length) + 288]:
                                            return _3669
                                        mem[ceil32(arg3.length) + 292] = s + 1
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0x3d39c260 with:
                                             gas gas_remaining wei
                                            args (s + 1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(ext_call.return_data[0])
                                        mem[32] = sha3(_3669, 1)
                                        if uint8(stor1[_3669][address(ext_call.return_data[0])]):
                                            uint8(stor0[_3669].field_1024) = 1
                                            # nil
                                        else:
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xc833f2 with:
                                                 gas gas_remaining wei
                                            mem[ceil32(arg3.length) + 288] = ext_call.return_data[0]
                                            s = s + 1
                                            continue 
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor0[_3669].field_1024) = 1
                                mem[0] = sha3(_3669, 0) + 2
                                mem[ceil32(arg3.length) + 288] = uint256(stor0[_3669][2].field_0)
                                idx = mem[64]
                                s = 0
                                while ceil32(arg3.length) + stor0[_3669][2].length + 288 > idx + 32:
                                    mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                call address(stor0[_3669].field_0).mem[mem[64] len 4] with:
                                   value uint256(stor0[_3669].field_256) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(arg3.length) + stor0[_3669][2].length + (floor32(stor0[_3669][2].length - 1) + -stor0[_3669][2].length + 32 % 32) + -mem[64] + 284]
                                if ext_call.success:
                                    emit 0x5e0c8305: _3669
                                else:
                                    emit 0x95a8dfe7: _3669
                                    uint8(stor0[_3669].field_1024) = 0
            return _3669
}

function confirmTransaction(bytes32 arg1) payable {
    mem[64] = 96
    require not msg.value
    mem[100] = msg.sender
    require ext_code.size(sub_eb362f80Address)
    call sub_eb362f80Address.0x2f54bf6e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not uint8(stor1[arg1][address(msg.sender)])
    uint8(stor1[arg1][address(msg.sender)]) = 1
    emit 0x93ce35c8: arg1, msg.sender
    mem[0] = arg1
    mem[32] = 0
    require not uint8(stor0[arg1].field_1024)
    mem[96] = 0xbfda7e3000000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_eb362f80Address)
    call sub_eb362f80Address.mem[var26004 len 4] with:
         gas gas_remaining wei
        args mem[var26004 + 4 len var26005 - 4]
    mem[var26006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var30006 < mem[var30002]:
        mem[0] = arg1
        mem[32] = 1
        mem[96] = 0x25e7c2700000000000000000000000000000000000000000000000000000000
        mem[100] = var32004
        require ext_code.size(sub_eb362f80Address)
        call sub_eb362f80Address.mem[var34004 len 4] with:
             gas gas_remaining wei
            args mem[var34004 + 4 len var34005 - 4]
        mem[var34006] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            mem[0] = mem[var38002 + 12 len 20]
            mem[32] = var38004
            require ext_code.size(sub_eb362f80Address)
            call sub_eb362f80Address.0xbfda7e30 with:
                 gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not uint8(stor[var38004][mem[0]]):
                s = var38008
                t = var38009
                while ext_call.success:
                    require return_data.size >= 32
                    if s + 1 < mem[96]:
                        mem[100] = s + 1
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.owners(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s + 1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = address(ext_call.return_data[0])
                        mem[32] = sha3(arg1, 1)
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.0xbfda7e30 with:
                             gas gas_remaining wei
                        mem[96] = ext_call.return_data[0]
                        if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                    if t < required:
                    if not uint8(stor5.field_0):
                        if t >= required:
                            if uint8(stor5.field_0):
                                mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var55004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var55004 + 4 len var55005 - 4]
                                mem[var55006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var59004 < mem[var59002]:
                                    mem[0] = arg1
                                    mem[32] = 1
                                    mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                    mem[100] = var61002
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var63004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var63004 + 4 len var63005 - 4]
                                    mem[var63006] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = mem[var67002 + 12 len 20]
                                    if not uint8(stor[var67004][mem[0]]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = var67006
                                        while ext_call.success:
                                            require return_data.size >= 32
                                            if s + 1 < mem[96]:
                                                mem[100] = s + 1
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xefa8154e with:
                                                     gas gas_remaining wei
                                                    args (s + 1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = sha3(arg1, 1)
                                                if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                    require ext_code.size(sub_eb362f80Address)
                                                    call sub_eb362f80Address.0xbfda7e30 with:
                                                         gas gas_remaining wei
                                                    require ext_code.size(sub_eb362f80Address)
                                                    call sub_eb362f80Address.0xf084b83e with:
                                                         gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    s = s + 1
                                                    continue 
                                                uint8(stor0[arg1].field_1024) = 1
                                                mem[96] = uint256(stor0[arg1][2].field_0)
                                                idx = 96
                                                s = sha3(sha3(arg1, 0) + 2)
                                                while stor0[arg1][2].length + 96 > idx + 32:
                                                    require ext_code.size(sub_eb362f80Address)
                                                    call sub_eb362f80Address.0xbfda7e30 with:
                                                         gas gas_remaining wei
                                                    require ext_code.size(sub_eb362f80Address)
                                                    call sub_eb362f80Address.0xf084b83e with:
                                                         gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    mem[idx + 32] = uint256(stor1[s])
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                call address(stor0[arg1].field_0).mem[96 len 4] with:
                                                   value uint256(stor0[arg1].field_256) wei
                                                     gas gas_remaining wei
                                                    args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                                if ext_call.success:
                                                    emit 0x5e0c8305: arg1
                                                else:
                                                    emit 0x95a8dfe7: arg1
                                                    uint8(stor0[arg1].field_1024) = 0
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor0[arg1].field_1024) = 1
                                    mem[96] = uint256(stor0[arg1][2].field_0)
                                    idx = 96
                                    s = sha3(sha3(arg1, 0) + 2)
                                    while stor0[arg1][2].length + 96 > idx + 32:
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        mem[idx + 32] = uint256(stor1[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    call address(stor0[arg1].field_0).mem[96 len 4] with:
                                       value uint256(stor0[arg1].field_256) wei
                                         gas gas_remaining wei
                                        args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                    if ext_call.success:
                                        emit 0x5e0c8305: arg1
                                    else:
                                        emit 0x95a8dfe7: arg1
                                        uint8(stor0[arg1].field_1024) = 0
                            else:
                                if t >= required:
                                    if uint8(stor5.field_8):
                                        mem[96] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.mem[var58004 len 4] with:
                                             gas gas_remaining wei
                                            args mem[var58004 + 4 len var58005 - 4]
                                        mem[var58006] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if var62003 < mem[var62002]:
                                            mem[0] = arg1
                                            mem[32] = 1
                                            mem[96] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                            mem[100] = var64001
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.mem[var66004 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[var66004 + 4 len var66005 - 4]
                                            mem[var66006] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = mem[var70002 + 12 len 20]
                                            if not uint8(stor[var70004][mem[0]]):
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xc833f2 with:
                                                     gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                s = var70005
                                                while ext_call.success:
                                                    require return_data.size >= 32
                                                    if s + 1 < mem[96]:
                                                        mem[100] = s + 1
                                                        require ext_code.size(sub_eb362f80Address)
                                                        call sub_eb362f80Address.0x3d39c260 with:
                                                             gas gas_remaining wei
                                                            args (s + 1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[0] = address(ext_call.return_data[0])
                                                        mem[32] = sha3(arg1, 1)
                                                        if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                            require ext_code.size(sub_eb362f80Address)
                                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                                 gas gas_remaining wei
                                                            require ext_code.size(sub_eb362f80Address)
                                                            call sub_eb362f80Address.0xc833f2 with:
                                                                 gas gas_remaining wei
                                                            mem[96] = ext_call.return_data[0]
                                                            s = s + 1
                                                            continue 
                                                        uint8(stor0[arg1].field_1024) = 1
                                                        mem[96] = uint256(stor0[arg1][2].field_0)
                                                        idx = 96
                                                        s = sha3(sha3(arg1, 0) + 2)
                                                        while stor0[arg1][2].length + 96 > idx + 32:
                                                            require ext_code.size(sub_eb362f80Address)
                                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                                 gas gas_remaining wei
                                                            require ext_code.size(sub_eb362f80Address)
                                                            call sub_eb362f80Address.0xc833f2 with:
                                                                 gas gas_remaining wei
                                                            mem[96] = ext_call.return_data[0]
                                                            mem[idx + 32] = uint256(stor1[s])
                                                            idx = idx + 32
                                                            s = s + 1
                                                            continue 
                                                        call address(stor0[arg1].field_0).mem[96 len 4] with:
                                                           value uint256(stor0[arg1].field_256) wei
                                                             gas gas_remaining wei
                                                            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                                        if ext_call.success:
                                                            emit 0x5e0c8305: arg1
                                                        else:
                                                            emit 0x95a8dfe7: arg1
                                                            uint8(stor0[arg1].field_1024) = 0
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor0[arg1].field_1024) = 1
                                            mem[96] = uint256(stor0[arg1][2].field_0)
                                            idx = 96
                                            s = sha3(sha3(arg1, 0) + 2)
                                            while stor0[arg1][2].length + 96 > idx + 32:
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xbfda7e30 with:
                                                     gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                mem[idx + 32] = uint256(stor1[s])
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            call address(stor0[arg1].field_0).mem[96 len 4] with:
                                               value uint256(stor0[arg1].field_256) wei
                                                 gas gas_remaining wei
                                                args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                            if ext_call.success:
                                                emit 0x5e0c8305: arg1
                                            else:
                                                emit 0x95a8dfe7: arg1
                                                uint8(stor0[arg1].field_1024) = 0
                    if uint8(stor5.field_16):
                        mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var58004 len 4] with:
                             gas gas_remaining wei
                            args mem[var58004 + 4 len var58005 - 4]
                        mem[var58006] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if var62005 >= mem[var62002]:
                        mem[0] = arg1
                        mem[32] = 1
                        mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                        mem[100] = var64003
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var66004 len 4] with:
                             gas gas_remaining wei
                            args mem[var66004 + 4 len var66005 - 4]
                        mem[var66006] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = mem[var70002 + 12 len 20]
                        if uint8(stor[var70004][mem[0]]):
                            mem[0] = arg1
                            mem[32] = 1
                            mem[96] = 0x375b74c300000000000000000000000000000000000000000000000000000000
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var74004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var74004 + 4 len var74005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                        else:
                            if not var72001:
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xf084b83e with:
                                     gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                s = var72004
                                while ext_call.success:
                                    require return_data.size >= 32
                                    if s + 1 >= mem[96]:
                                    mem[100] = s + 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xefa8154e with:
                                         gas gas_remaining wei
                                        args (s + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = sha3(arg1, 1)
                                    if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0x375b74c3 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = sha3(arg1, 1)
                                    if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                        uint8(stor0[arg1].field_1024) = 1
                                        # nil
                                    else:
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = s + 1
                                        continue 
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor0[arg1].field_1024) = 1
                            mem[96] = uint256(stor0[arg1][2].field_0)
                            idx = 96
                            s = sha3(sha3(arg1, 0) + 2)
                            while stor0[arg1][2].length + 96 > idx + 32:
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xbfda7e30 with:
                                     gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                mem[idx + 32] = uint256(stor1[s])
                                idx = idx + 32
                                s = s + 1
                                continue 
                            call address(stor0[arg1].field_0).mem[96 len 4] with:
                               value uint256(stor0[arg1].field_256) wei
                                 gas gas_remaining wei
                                args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                            if ext_call.success:
                                emit 0x5e0c8305: arg1
                            else:
                                emit 0x95a8dfe7: arg1
                                uint8(stor0[arg1].field_1024) = 0
                    else:
                        if t >= required:
                            if uint8(stor5.field_0):
                                mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var56004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var56004 + 4 len var56005 - 4]
                                mem[var56006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var60004 < mem[var60002]:
                                    mem[0] = arg1
                                    mem[32] = 1
                                    mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                    mem[100] = var62002
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var64004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var64004 + 4 len var64005 - 4]
                                    mem[var64006] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = mem[var68002 + 12 len 20]
                                    if not uint8(stor[var68004][mem[0]]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = var68006
                                        while ext_call.success:
                                            require return_data.size >= 32
                                            if s + 1 < mem[96]:
                                                mem[100] = s + 1
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xefa8154e with:
                                                     gas gas_remaining wei
                                                    args (s + 1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = sha3(arg1, 1)
                                                if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                    require ext_code.size(sub_eb362f80Address)
                                                    call sub_eb362f80Address.0xbfda7e30 with:
                                                         gas gas_remaining wei
                                                    require ext_code.size(sub_eb362f80Address)
                                                    call sub_eb362f80Address.0xf084b83e with:
                                                         gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    s = s + 1
                                                    continue 
                                                uint8(stor0[arg1].field_1024) = 1
                                                mem[96] = uint256(stor0[arg1][2].field_0)
                                                idx = 96
                                                s = sha3(sha3(arg1, 0) + 2)
                                                while stor0[arg1][2].length + 96 > idx + 32:
                                                    require ext_code.size(sub_eb362f80Address)
                                                    call sub_eb362f80Address.0xbfda7e30 with:
                                                         gas gas_remaining wei
                                                    require ext_code.size(sub_eb362f80Address)
                                                    call sub_eb362f80Address.0xf084b83e with:
                                                         gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    mem[idx + 32] = uint256(stor1[s])
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                call address(stor0[arg1].field_0).mem[96 len 4] with:
                                                   value uint256(stor0[arg1].field_256) wei
                                                     gas gas_remaining wei
                                                    args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                                if ext_call.success:
                                                    emit 0x5e0c8305: arg1
                                                else:
                                                    emit 0x95a8dfe7: arg1
                                                    uint8(stor0[arg1].field_1024) = 0
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor0[arg1].field_1024) = 1
                                    mem[96] = uint256(stor0[arg1][2].field_0)
                                    idx = 96
                                    s = sha3(sha3(arg1, 0) + 2)
                                    while stor0[arg1][2].length + 96 > idx + 32:
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        mem[idx + 32] = uint256(stor1[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    call address(stor0[arg1].field_0).mem[96 len 4] with:
                                       value uint256(stor0[arg1].field_256) wei
                                         gas gas_remaining wei
                                        args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                    if ext_call.success:
                                        emit 0x5e0c8305: arg1
                                    else:
                                        emit 0x95a8dfe7: arg1
                                        uint8(stor0[arg1].field_1024) = 0
                            else:
                                if t >= required:
                                    if uint8(stor5.field_8):
                                        mem[96] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.mem[var59004 len 4] with:
                                             gas gas_remaining wei
                                            args mem[var59004 + 4 len var59005 - 4]
                                        mem[var59006] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if var63003 < mem[var63002]:
                                            mem[0] = arg1
                                            mem[32] = 1
                                            mem[96] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                            mem[100] = var65001
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.mem[var67004 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[var67004 + 4 len var67005 - 4]
                                            mem[var67006] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = mem[var71002 + 12 len 20]
                                            if not uint8(stor[var71004][mem[0]]):
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xc833f2 with:
                                                     gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                s = var71005
                                                while ext_call.success:
                                                    require return_data.size >= 32
                                                    if s + 1 < mem[96]:
                                                        mem[100] = s + 1
                                                        require ext_code.size(sub_eb362f80Address)
                                                        call sub_eb362f80Address.0x3d39c260 with:
                                                             gas gas_remaining wei
                                                            args (s + 1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[0] = address(ext_call.return_data[0])
                                                        mem[32] = sha3(arg1, 1)
                                                        if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                            require ext_code.size(sub_eb362f80Address)
                                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                                 gas gas_remaining wei
                                                            require ext_code.size(sub_eb362f80Address)
                                                            call sub_eb362f80Address.0xc833f2 with:
                                                                 gas gas_remaining wei
                                                            mem[96] = ext_call.return_data[0]
                                                            s = s + 1
                                                            continue 
                                                        uint8(stor0[arg1].field_1024) = 1
                                                        mem[96] = uint256(stor0[arg1][2].field_0)
                                                        idx = 96
                                                        s = sha3(sha3(arg1, 0) + 2)
                                                        while stor0[arg1][2].length + 96 > idx + 32:
                                                            require ext_code.size(sub_eb362f80Address)
                                                            call sub_eb362f80Address.0xbfda7e30 with:
                                                                 gas gas_remaining wei
                                                            require ext_code.size(sub_eb362f80Address)
                                                            call sub_eb362f80Address.0xc833f2 with:
                                                                 gas gas_remaining wei
                                                            mem[96] = ext_call.return_data[0]
                                                            mem[idx + 32] = uint256(stor1[s])
                                                            idx = idx + 32
                                                            s = s + 1
                                                            continue 
                                                        call address(stor0[arg1].field_0).mem[96 len 4] with:
                                                           value uint256(stor0[arg1].field_256) wei
                                                             gas gas_remaining wei
                                                            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                                        if ext_call.success:
                                                            emit 0x5e0c8305: arg1
                                                        else:
                                                            emit 0x95a8dfe7: arg1
                                                            uint8(stor0[arg1].field_1024) = 0
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor0[arg1].field_1024) = 1
                                            mem[96] = uint256(stor0[arg1][2].field_0)
                                            idx = 96
                                            s = sha3(sha3(arg1, 0) + 2)
                                            while stor0[arg1][2].length + 96 > idx + 32:
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xbfda7e30 with:
                                                     gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                mem[idx + 32] = uint256(stor1[s])
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            call address(stor0[arg1].field_0).mem[96 len 4] with:
                                               value uint256(stor0[arg1].field_256) wei
                                                 gas gas_remaining wei
                                                args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                            if ext_call.success:
                                                emit 0x5e0c8305: arg1
                                            else:
                                                emit 0x95a8dfe7: arg1
                                                uint8(stor0[arg1].field_1024) = 0
            else:
                s = var38008
                s = var38009
                while ext_call.success:
                    require return_data.size >= 32
                    if var41004 + 1 < mem[96]:
                        mem[100] = var41004 + 1
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.owners(uint256 arg1) with:
                             gas gas_remaining wei
                            args (var41004 + 1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = address(ext_call.return_data[0])
                        mem[32] = sha3(arg1, 1)
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.0xbfda7e30 with:
                             gas gas_remaining wei
                        mem[96] = ext_call.return_data[0]
                        if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                            var41004 = var41004 + 1
                            continue 
                        s = var41004 + 1
                        s = s + 1
                        continue 
                    if s + 1 < required:
                    if not uint8(stor5.field_0):
                        if s + 1 >= required:
                            if uint8(stor5.field_0):
                                mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var57004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var57004 + 4 len var57005 - 4]
                                mem[var57006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var61004 < mem[var61002]:
                                    mem[0] = arg1
                                    mem[32] = 1
                                    mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                    mem[100] = var63002
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var65004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var65004 + 4 len var65005 - 4]
                                    mem[var65006] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = mem[var69002 + 12 len 20]
                                    if not uint8(stor[var69004][mem[0]]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = var69006
                                        while ext_call.success:
                                            require return_data.size >= 32
                                            if s + 1 >= mem[96]:
                                            mem[100] = s + 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xefa8154e with:
                                                 gas gas_remaining wei
                                                args (s + 1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(arg1, 1)
                                            if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                uint8(stor0[arg1].field_1024) = 1
                                                # nil
                                            else:
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xbfda7e30 with:
                                                     gas gas_remaining wei
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xf084b83e with:
                                                     gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                s = s + 1
                                                continue 
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor0[arg1].field_1024) = 1
                                    mem[96] = uint256(stor0[arg1][2].field_0)
                                    idx = 96
                                    s = sha3(sha3(arg1, 0) + 2)
                                    while stor0[arg1][2].length + 96 > idx + 32:
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        mem[idx + 32] = uint256(stor1[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    call address(stor0[arg1].field_0).mem[96 len 4] with:
                                       value uint256(stor0[arg1].field_256) wei
                                         gas gas_remaining wei
                                        args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                    if ext_call.success:
                                        emit 0x5e0c8305: arg1
                                    else:
                                        emit 0x95a8dfe7: arg1
                                        uint8(stor0[arg1].field_1024) = 0
                            else:
                                if s + 1 >= required:
                                    if uint8(stor5.field_8):
                                        mem[96] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.mem[var60004 len 4] with:
                                             gas gas_remaining wei
                                            args mem[var60004 + 4 len var60005 - 4]
                                        mem[var60006] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if var64003 < mem[var64002]:
                                            mem[0] = arg1
                                            mem[32] = 1
                                            mem[96] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                            mem[100] = var66001
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.mem[var68004 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[var68004 + 4 len var68005 - 4]
                                            mem[var68006] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = mem[var72002 + 12 len 20]
                                            if not uint8(stor[var72004][mem[0]]):
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xc833f2 with:
                                                     gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                s = var72005
                                                while ext_call.success:
                                                    require return_data.size >= 32
                                                    if s + 1 >= mem[96]:
                                                    mem[100] = s + 1
                                                    require ext_code.size(sub_eb362f80Address)
                                                    call sub_eb362f80Address.0x3d39c260 with:
                                                         gas gas_remaining wei
                                                        args (s + 1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[0] = address(ext_call.return_data[0])
                                                    mem[32] = sha3(arg1, 1)
                                                    if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                        uint8(stor0[arg1].field_1024) = 1
                                                        # nil
                                                    else:
                                                        require ext_code.size(sub_eb362f80Address)
                                                        call sub_eb362f80Address.0xbfda7e30 with:
                                                             gas gas_remaining wei
                                                        require ext_code.size(sub_eb362f80Address)
                                                        call sub_eb362f80Address.0xc833f2 with:
                                                             gas gas_remaining wei
                                                        mem[96] = ext_call.return_data[0]
                                                        s = s + 1
                                                        continue 
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor0[arg1].field_1024) = 1
                                            mem[96] = uint256(stor0[arg1][2].field_0)
                                            idx = 96
                                            s = sha3(sha3(arg1, 0) + 2)
                                            while stor0[arg1][2].length + 96 > idx + 32:
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xbfda7e30 with:
                                                     gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                mem[idx + 32] = uint256(stor1[s])
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            call address(stor0[arg1].field_0).mem[96 len 4] with:
                                               value uint256(stor0[arg1].field_256) wei
                                                 gas gas_remaining wei
                                                args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                            if ext_call.success:
                                                emit 0x5e0c8305: arg1
                                            else:
                                                emit 0x95a8dfe7: arg1
                                                uint8(stor0[arg1].field_1024) = 0
                    if uint8(stor5.field_16):
                        mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var60004 len 4] with:
                             gas gas_remaining wei
                            args mem[var60004 + 4 len var60005 - 4]
                        mem[var60006] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if var64005 >= mem[var64002]:
                        mem[0] = arg1
                        mem[32] = 1
                        mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                        mem[100] = var66003
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var68004 len 4] with:
                             gas gas_remaining wei
                            args mem[var68004 + 4 len var68005 - 4]
                        mem[var68006] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = mem[var72002 + 12 len 20]
                        if uint8(stor[var72004][mem[0]]):
                            require ext_code.size(sub_eb362f80Address)
                            # nil
                        else:
                            if var74001:
                                uint8(stor0[arg1].field_1024) = 1
                            # nil
                    else:
                        if s + 1 >= required:
                            if uint8(stor5.field_0):
                                mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var58004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var58004 + 4 len var58005 - 4]
                                mem[var58006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var62004 < mem[var62002]:
                                    mem[0] = arg1
                                    mem[32] = 1
                                    mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                                    mem[100] = var64002
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var66004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var66004 + 4 len var66005 - 4]
                                    mem[var66006] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = mem[var70002 + 12 len 20]
                                    if not uint8(stor[var70004][mem[0]]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = var70006
                                        while ext_call.success:
                                            require return_data.size >= 32
                                            if s + 1 >= mem[96]:
                                            mem[100] = s + 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xefa8154e with:
                                                 gas gas_remaining wei
                                                args (s + 1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(arg1, 1)
                                            if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                uint8(stor0[arg1].field_1024) = 1
                                                # nil
                                            else:
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xbfda7e30 with:
                                                     gas gas_remaining wei
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xf084b83e with:
                                                     gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                s = s + 1
                                                continue 
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor0[arg1].field_1024) = 1
                                    mem[96] = uint256(stor0[arg1][2].field_0)
                                    idx = 96
                                    s = sha3(sha3(arg1, 0) + 2)
                                    while stor0[arg1][2].length + 96 > idx + 32:
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xbfda7e30 with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        mem[idx + 32] = uint256(stor1[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    call address(stor0[arg1].field_0).mem[96 len 4] with:
                                       value uint256(stor0[arg1].field_256) wei
                                         gas gas_remaining wei
                                        args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                    if ext_call.success:
                                        emit 0x5e0c8305: arg1
                                    else:
                                        emit 0x95a8dfe7: arg1
                                        uint8(stor0[arg1].field_1024) = 0
                            else:
                                if s + 1 >= required:
                                    if uint8(stor5.field_8):
                                        mem[96] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.mem[var61004 len 4] with:
                                             gas gas_remaining wei
                                            args mem[var61004 + 4 len var61005 - 4]
                                        mem[var61006] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if var65003 < mem[var65002]:
                                            mem[0] = arg1
                                            mem[32] = 1
                                            mem[96] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                            mem[100] = var67001
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.mem[var69004 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[var69004 + 4 len var69005 - 4]
                                            mem[var69006] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = mem[var73002 + 12 len 20]
                                            if not uint8(stor[var73004][mem[0]]):
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xc833f2 with:
                                                     gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                s = var73005
                                                while ext_call.success:
                                                    require return_data.size >= 32
                                                    if s + 1 >= mem[96]:
                                                    mem[100] = s + 1
                                                    require ext_code.size(sub_eb362f80Address)
                                                    call sub_eb362f80Address.0x3d39c260 with:
                                                         gas gas_remaining wei
                                                        args (s + 1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[0] = address(ext_call.return_data[0])
                                                    mem[32] = sha3(arg1, 1)
                                                    if uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                        uint8(stor0[arg1].field_1024) = 1
                                                        # nil
                                                    else:
                                                        require ext_code.size(sub_eb362f80Address)
                                                        call sub_eb362f80Address.0xbfda7e30 with:
                                                             gas gas_remaining wei
                                                        require ext_code.size(sub_eb362f80Address)
                                                        call sub_eb362f80Address.0xc833f2 with:
                                                             gas gas_remaining wei
                                                        mem[96] = ext_call.return_data[0]
                                                        s = s + 1
                                                        continue 
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor0[arg1].field_1024) = 1
                                            mem[96] = uint256(stor0[arg1][2].field_0)
                                            idx = 96
                                            s = sha3(sha3(arg1, 0) + 2)
                                            while stor0[arg1][2].length + 96 > idx + 32:
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xbfda7e30 with:
                                                     gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                mem[idx + 32] = uint256(stor1[s])
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            call address(stor0[arg1].field_0).mem[96 len 4] with:
                                               value uint256(stor0[arg1].field_256) wei
                                                 gas gas_remaining wei
                                                args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                            if ext_call.success:
                                                emit 0x5e0c8305: arg1
                                            else:
                                                emit 0x95a8dfe7: arg1
                                                uint8(stor0[arg1].field_1024) = 0
        revert with ext_call.return_data[0 len return_data.size]
    if var30007 >= required:
        if not uint8(stor5.field_0):
            if var30007 >= required:
                if uint8(stor5.field_0):
                    mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.mem[var41004 len 4] with:
                         gas gas_remaining wei
                        args mem[var41004 + 4 len var41005 - 4]
                    mem[var41006] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var45004 < mem[var45002]:
                        mem[0] = arg1
                        mem[32] = 1
                        mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                        mem[100] = var47002
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var49004 len 4] with:
                             gas gas_remaining wei
                            args mem[var49004 + 4 len var49005 - 4]
                        mem[var49006] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = mem[var53002 + 12 len 20]
                        if not uint8(stor[var53004][mem[0]]):
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xf084b83e with:
                                 gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            s = var53006
                            while ext_call.success:
                                require return_data.size >= 32
                                if s + 1 < mem[96]:
                                    mem[100] = s + 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xefa8154e with:
                                         gas gas_remaining wei
                                        args (s + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = sha3(arg1, 1)
                                    if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = s + 1
                                        continue 
                                    uint8(stor0[arg1].field_1024) = 1
                                    mem[96] = uint256(stor0[arg1][2].field_0)
                                    idx = 96
                                    s = sha3(sha3(arg1, 0) + 2)
                                    while stor0[arg1][2].length + 96 > idx + 32:
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        mem[idx + 32] = uint256(stor1[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    call address(stor0[arg1].field_0).mem[96 len 4] with:
                                       value uint256(stor0[arg1].field_256) wei
                                         gas gas_remaining wei
                                        args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                    if ext_call.success:
                                        emit 0x5e0c8305: arg1
                                    else:
                                        emit 0x95a8dfe7: arg1
                                        uint8(stor0[arg1].field_1024) = 0
                            revert with ext_call.return_data[0 len return_data.size]
                        uint8(stor0[arg1].field_1024) = 1
                        mem[96] = uint256(stor0[arg1][2].field_0)
                        idx = 96
                        s = 0
                        while stor0[arg1][2].length + 96 > idx + 32:
                            mem[idx + 32] = uint256(stor0[arg1][s + 2].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        call address(stor0[arg1].field_0).mem[96 len 4] with:
                           value uint256(stor0[arg1].field_256) wei
                             gas gas_remaining wei
                            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                        if ext_call.success:
                            emit 0x5e0c8305: arg1
                        else:
                            emit 0x95a8dfe7: arg1
                            uint8(stor0[arg1].field_1024) = 0
                else:
                    if var30007 >= required:
                        if uint8(stor5.field_8):
                            mem[96] = 0xc833f200000000000000000000000000000000000000000000000000000000
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var44004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var44004 + 4 len var44005 - 4]
                            mem[var44006] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if var48003 < mem[var48002]:
                                mem[0] = arg1
                                mem[32] = 1
                                mem[96] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                mem[100] = var50001
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var52004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var52004 + 4 len var52005 - 4]
                                mem[var52006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[0] = mem[var56002 + 12 len 20]
                                if not uint8(stor[var56004][mem[0]]):
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xc833f2 with:
                                         gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    s = var56005
                                    while ext_call.success:
                                        require return_data.size >= 32
                                        if s + 1 < mem[96]:
                                            mem[100] = s + 1
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0x3d39c260 with:
                                                 gas gas_remaining wei
                                                args (s + 1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[0] = address(ext_call.return_data[0])
                                            mem[32] = sha3(arg1, 1)
                                            if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xc833f2 with:
                                                     gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                s = s + 1
                                                continue 
                                            uint8(stor0[arg1].field_1024) = 1
                                            mem[96] = uint256(stor0[arg1][2].field_0)
                                            idx = 96
                                            s = sha3(sha3(arg1, 0) + 2)
                                            while stor0[arg1][2].length + 96 > idx + 32:
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0xc833f2 with:
                                                     gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                mem[idx + 32] = uint256(stor1[s])
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            call address(stor0[arg1].field_0).mem[96 len 4] with:
                                               value uint256(stor0[arg1].field_256) wei
                                                 gas gas_remaining wei
                                                args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                            if ext_call.success:
                                                emit 0x5e0c8305: arg1
                                            else:
                                                emit 0x95a8dfe7: arg1
                                                uint8(stor0[arg1].field_1024) = 0
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor0[arg1].field_1024) = 1
                                mem[96] = uint256(stor0[arg1][2].field_0)
                                idx = 96
                                s = 0
                                while stor0[arg1][2].length + 96 > idx + 32:
                                    mem[idx + 32] = uint256(stor0[arg1][s + 2].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                call address(stor0[arg1].field_0).mem[96 len 4] with:
                                   value uint256(stor0[arg1].field_256) wei
                                     gas gas_remaining wei
                                    args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                if ext_call.success:
                                    emit 0x5e0c8305: arg1
                                else:
                                    emit 0x95a8dfe7: arg1
                                    uint8(stor0[arg1].field_1024) = 0
        else:
            if not uint8(stor5.field_16):
                if var30007 >= required:
                    if uint8(stor5.field_0):
                        mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var42004 len 4] with:
                             gas gas_remaining wei
                            args mem[var42004 + 4 len var42005 - 4]
                        mem[var42006] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if var46004 < mem[var46002]:
                            mem[0] = arg1
                            mem[32] = 1
                            mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                            mem[100] = var48002
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.mem[var50004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var50004 + 4 len var50005 - 4]
                            mem[var50006] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[0] = mem[var54002 + 12 len 20]
                            if not uint8(stor[var54004][mem[0]]):
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.0xf084b83e with:
                                     gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                s = var54006
                                while ext_call.success:
                                    require return_data.size >= 32
                                    if s + 1 < mem[96]:
                                        mem[100] = s + 1
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xefa8154e with:
                                             gas gas_remaining wei
                                            args (s + 1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[0] = address(ext_call.return_data[0])
                                        mem[32] = sha3(arg1, 1)
                                        if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xf084b83e with:
                                                 gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            s = s + 1
                                            continue 
                                        uint8(stor0[arg1].field_1024) = 1
                                        mem[96] = uint256(stor0[arg1][2].field_0)
                                        idx = 96
                                        s = sha3(sha3(arg1, 0) + 2)
                                        while stor0[arg1][2].length + 96 > idx + 32:
                                            require ext_code.size(sub_eb362f80Address)
                                            call sub_eb362f80Address.0xf084b83e with:
                                                 gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            mem[idx + 32] = uint256(stor1[s])
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        call address(stor0[arg1].field_0).mem[96 len 4] with:
                                           value uint256(stor0[arg1].field_256) wei
                                             gas gas_remaining wei
                                            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                        if ext_call.success:
                                            emit 0x5e0c8305: arg1
                                        else:
                                            emit 0x95a8dfe7: arg1
                                            uint8(stor0[arg1].field_1024) = 0
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor0[arg1].field_1024) = 1
                            mem[96] = uint256(stor0[arg1][2].field_0)
                            idx = 96
                            s = 0
                            while stor0[arg1][2].length + 96 > idx + 32:
                                mem[idx + 32] = uint256(stor0[arg1][s + 2].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            call address(stor0[arg1].field_0).mem[96 len 4] with:
                               value uint256(stor0[arg1].field_256) wei
                                 gas gas_remaining wei
                                args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                            if ext_call.success:
                                emit 0x5e0c8305: arg1
                            else:
                                emit 0x95a8dfe7: arg1
                                uint8(stor0[arg1].field_1024) = 0
                    else:
                        if var30007 >= required:
                            if uint8(stor5.field_8):
                                mem[96] = 0xc833f200000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_eb362f80Address)
                                call sub_eb362f80Address.mem[var45004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var45004 + 4 len var45005 - 4]
                                mem[var45006] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if var49003 < mem[var49002]:
                                    mem[0] = arg1
                                    mem[32] = 1
                                    mem[96] = 0x3d39c26000000000000000000000000000000000000000000000000000000000
                                    mem[100] = var51001
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.mem[var53004 len 4] with:
                                         gas gas_remaining wei
                                        args mem[var53004 + 4 len var53005 - 4]
                                    mem[var53006] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = mem[var57002 + 12 len 20]
                                    if not uint8(stor[var57004][mem[0]]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xc833f2 with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = var57005
                                        while ext_call.success:
                                            require return_data.size >= 32
                                            if s + 1 < mem[96]:
                                                mem[100] = s + 1
                                                require ext_code.size(sub_eb362f80Address)
                                                call sub_eb362f80Address.0x3d39c260 with:
                                                     gas gas_remaining wei
                                                    args (s + 1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[0] = address(ext_call.return_data[0])
                                                mem[32] = sha3(arg1, 1)
                                                if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                                    require ext_code.size(sub_eb362f80Address)
                                                    call sub_eb362f80Address.0xc833f2 with:
                                                         gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    s = s + 1
                                                    continue 
                                                uint8(stor0[arg1].field_1024) = 1
                                                mem[96] = uint256(stor0[arg1][2].field_0)
                                                idx = 96
                                                s = sha3(sha3(arg1, 0) + 2)
                                                while stor0[arg1][2].length + 96 > idx + 32:
                                                    require ext_code.size(sub_eb362f80Address)
                                                    call sub_eb362f80Address.0xc833f2 with:
                                                         gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    mem[idx + 32] = uint256(stor1[s])
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                call address(stor0[arg1].field_0).mem[96 len 4] with:
                                                   value uint256(stor0[arg1].field_256) wei
                                                     gas gas_remaining wei
                                                    args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                                if ext_call.success:
                                                    emit 0x5e0c8305: arg1
                                                else:
                                                    emit 0x95a8dfe7: arg1
                                                    uint8(stor0[arg1].field_1024) = 0
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor0[arg1].field_1024) = 1
                                    mem[96] = uint256(stor0[arg1][2].field_0)
                                    idx = 96
                                    s = 0
                                    while stor0[arg1][2].length + 96 > idx + 32:
                                        mem[idx + 32] = uint256(stor0[arg1][s + 2].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    call address(stor0[arg1].field_0).mem[96 len 4] with:
                                       value uint256(stor0[arg1].field_256) wei
                                         gas gas_remaining wei
                                        args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                    if ext_call.success:
                                        emit 0x5e0c8305: arg1
                                    else:
                                        emit 0x95a8dfe7: arg1
                                        uint8(stor0[arg1].field_1024) = 0
            else:
                mem[96] = 0xf084b83e00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_eb362f80Address)
                call sub_eb362f80Address.mem[var44004 len 4] with:
                     gas gas_remaining wei
                    args mem[var44004 + 4 len var44005 - 4]
                mem[var44006] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var48005 < mem[var48002]:
                    mem[0] = arg1
                    mem[32] = 1
                    mem[96] = 0xefa8154e00000000000000000000000000000000000000000000000000000000
                    mem[100] = var50003
                    require ext_code.size(sub_eb362f80Address)
                    call sub_eb362f80Address.mem[var52004 len 4] with:
                         gas gas_remaining wei
                        args mem[var52004 + 4 len var52005 - 4]
                    mem[var52006] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = mem[var56002 + 12 len 20]
                    if not uint8(stor[var56004][mem[0]]):
                        if not var58001:
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xf084b83e with:
                                 gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            s = var58004
                            while ext_call.success:
                                require return_data.size >= 32
                                if s + 1 < mem[96]:
                                    mem[100] = s + 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xefa8154e with:
                                         gas gas_remaining wei
                                        args (s + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = sha3(arg1, 1)
                                    if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0x375b74c3 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = sha3(arg1, 1)
                                    if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = s + 1
                                        continue 
                                    uint8(stor0[arg1].field_1024) = 1
                                    mem[96] = uint256(stor0[arg1][2].field_0)
                                    idx = 96
                                    s = sha3(sha3(arg1, 0) + 2)
                                    while stor0[arg1][2].length + 96 > idx + 32:
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        mem[idx + 32] = uint256(stor1[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    call address(stor0[arg1].field_0).mem[96 len 4] with:
                                       value uint256(stor0[arg1].field_256) wei
                                         gas gas_remaining wei
                                        args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                    if ext_call.success:
                                        emit 0x5e0c8305: arg1
                                    else:
                                        emit 0x95a8dfe7: arg1
                                        uint8(stor0[arg1].field_1024) = 0
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0] = arg1
                        mem[32] = 1
                        mem[96] = 0x375b74c300000000000000000000000000000000000000000000000000000000
                        require ext_code.size(sub_eb362f80Address)
                        call sub_eb362f80Address.mem[var60004 len 4] with:
                             gas gas_remaining wei
                            args mem[var60004 + 4 len var60005 - 4]
                        mem[var60006] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not var66001:
                            require ext_code.size(sub_eb362f80Address)
                            call sub_eb362f80Address.0xf084b83e with:
                                 gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            s = var66004
                            while ext_call.success:
                                require return_data.size >= 32
                                if s + 1 < mem[96]:
                                    mem[100] = s + 1
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0xefa8154e with:
                                         gas gas_remaining wei
                                        args (s + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = sha3(arg1, 1)
                                    if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_eb362f80Address)
                                    call sub_eb362f80Address.0x375b74c3 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[0] = address(ext_call.return_data[0])
                                    mem[32] = sha3(arg1, 1)
                                    if not uint8(stor1[arg1][address(ext_call.return_data[0])]):
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        s = s + 1
                                        continue 
                                    uint8(stor0[arg1].field_1024) = 1
                                    mem[96] = uint256(stor0[arg1][2].field_0)
                                    idx = 96
                                    s = sha3(sha3(arg1, 0) + 2)
                                    while stor0[arg1][2].length + 96 > idx + 32:
                                        require ext_code.size(sub_eb362f80Address)
                                        call sub_eb362f80Address.0xf084b83e with:
                                             gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        mem[idx + 32] = uint256(stor1[s])
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    call address(stor0[arg1].field_0).mem[96 len 4] with:
                                       value uint256(stor0[arg1].field_256) wei
                                         gas gas_remaining wei
                                        args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                                    if ext_call.success:
                                        emit 0x5e0c8305: arg1
                                    else:
                                        emit 0x95a8dfe7: arg1
                                        uint8(stor0[arg1].field_1024) = 0
                            revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor0[arg1].field_1024) = 1
                    mem[96] = uint256(stor0[arg1][2].field_0)
                    idx = 96
                    s = 0
                    while stor0[arg1][2].length + 96 > idx + 32:
                        mem[idx + 32] = uint256(stor0[arg1][s + 2].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call address(stor0[arg1].field_0).mem[96 len 4] with:
                       value uint256(stor0[arg1].field_256) wei
                         gas gas_remaining wei
                        args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                    if ext_call.success:
                        emit 0x5e0c8305: arg1
                    else:
                        emit 0x95a8dfe7: arg1
                        uint8(stor0[arg1].field_1024) = 0
}



}
