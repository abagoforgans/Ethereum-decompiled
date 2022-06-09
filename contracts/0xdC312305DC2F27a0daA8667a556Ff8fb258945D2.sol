contract main {




// =====================  Runtime code  =====================


uint256 totalPlayers;
mapping of uint256 sub_17e0f93c;
mapping of uint256 stor2;
mapping of struct sub_1755d05d;
address stor4;
address stor5;

function sub_1755d05d(?) {
    if not arg1:
        revert with 0, 'pid can't be zero'
    return sub_1755d05d[arg1].field_256
}

function sub_17e0f93c(?) {
    return sub_17e0f93c[address(arg1)]
}

function getNameByAddress(address arg1) {
    if not sub_17e0f93c[address(arg1)]:
        revert with 0, 'pid can't be zero'
    return sub_1755d05d[stor1[address(arg1)]].field_512
}

function sub_90272a93(?) {
    if not sub_17e0f93c[address(arg1)]:
        revert with 0, 'pid can't be zero'
    return sub_1755d05d[stor1[address(arg1)]].field_256
}

function sub_b5d6f6e0(?) {
    if not arg1:
        revert with 0, 'pid can't be zero'
    return address(sub_1755d05d[arg1].field_0)
}

function sub_e3b58581(?) {
    if not arg1:
        revert with 0, 'pid can't be zero'
    return sub_1755d05d[arg1].field_512
}

function totalPlayers() {
    return totalPlayers
}

function _fallback() payable {
    revert
}

function setReceiver(address arg1) {
    require ext_code.size(stor5)
    call stor5.0x24d7806c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'team admin only'
    if not arg1:
        revert with 0, 'address can't be zero'
    stor4 = arg1
}

function sub_71bf2fdf(?) {
    if not arg1:
        revert with 0, 'pid can't be zero'
    if not sub_1755d05d[arg1].field_768:
        mem[(32 * sub_1755d05d[arg1].field_768) + 128] = 32
        mem[(32 * sub_1755d05d[arg1].field_768) + 160] = sub_1755d05d[arg1].field_768
        mem[(32 * sub_1755d05d[arg1].field_768) + 192 len floor32(sub_1755d05d[arg1].field_768)] = mem[128 len floor32(sub_1755d05d[arg1].field_768)]
        return memory
          from (32 * sub_1755d05d[arg1].field_768) + 128
           len (96 * sub_1755d05d[arg1].field_768) + 64
    mem[128] = sub_1755d05d[arg1][3].field_0
    idx = 128
    s = 0
    while (32 * sub_1755d05d[arg1].field_768) + 96 > idx:
        mem[idx + 32] = sub_1755d05d[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_1755d05d[arg1].field_768) + 192 len floor32(sub_1755d05d[arg1].field_768)] = mem[128 len floor32(sub_1755d05d[arg1].field_768)]
    return Array(len=sub_1755d05d[arg1].field_768, data=mem[128 len floor32(sub_1755d05d[arg1].field_768)], mem[(32 * sub_1755d05d[arg1].field_768) + floor32(sub_1755d05d[arg1].field_768) + 192 len (32 * sub_1755d05d[arg1].field_768) - floor32(sub_1755d05d[arg1].field_768)]), 
}

function sub_994caaf3(?) {
    if not sub_17e0f93c[address(arg1)]:
        revert with 0, 'pid can't be zero'
    if not sub_1755d05d[stor1[address(arg1)]].field_768:
        mem[(32 * sub_1755d05d[stor1[address(arg1)]].field_768) + 128] = 32
        mem[(32 * sub_1755d05d[stor1[address(arg1)]].field_768) + 160] = sub_1755d05d[stor1[address(arg1)]].field_768
        mem[(32 * sub_1755d05d[stor1[address(arg1)]].field_768) + 192 len floor32(sub_1755d05d[stor1[address(arg1)]].field_768)] = mem[128 len floor32(sub_1755d05d[stor1[address(arg1)]].field_768)]
        return memory
          from (32 * sub_1755d05d[stor1[address(arg1)]].field_768) + 128
           len (96 * sub_1755d05d[stor1[address(arg1)]].field_768) + 64
    mem[128] = sub_1755d05d[stor1[address(arg1)]][3].field_0
    idx = 128
    s = 0
    while (32 * sub_1755d05d[stor1[address(arg1)]].field_768) + 96 > idx:
        mem[idx + 32] = sub_1755d05d[stor1[address(arg1)]][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_1755d05d[stor1[address(arg1)]].field_768) + 192 len floor32(sub_1755d05d[stor1[address(arg1)]].field_768)] = mem[128 len floor32(sub_1755d05d[stor1[address(arg1)]].field_768)]
    return Array(len=sub_1755d05d[stor1[address(arg1)]].field_768, data=mem[128 len floor32(sub_1755d05d[stor1[address(arg1)]].field_768)], mem[(32 * sub_1755d05d[stor1[address(arg1)]].field_768) + floor32(sub_1755d05d[stor1[address(arg1)]].field_768) + 192 len (32 * sub_1755d05d[stor1[address(arg1)]].field_768) - floor32(sub_1755d05d[stor1[address(arg1)]].field_768)]), 
}

function getAddressByName(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length != 8:
        revert with 0, 'string must be 8 characters'
    require 0 < arg1.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if Mask(8, 248, mem[idx + 128]) <= '`':
                if Mask(8, 248, mem[idx + 128]) <= '/':
                    revert with 0, 'string contains invalid characters'
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= ':':
                    revert with 0, 'string contains invalid characters'
            else:
                if Mask(8, 248, mem[idx + 128]) >= '{':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < '[':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
            else:
                if Mask(8, 248, mem[idx + 128]) <= '`':
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
        idx = idx + 1
        continue 
    mem[mem[64]] = address(sub_1755d05d[stor2[mem[128]]].field_0)
    return memory
      from mem[64]
       len 32
}

function sub_5571f59f(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length != 8:
        revert with 0, 'string must be 8 characters'
    require 0 < arg1.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if Mask(8, 248, mem[idx + 128]) <= '`':
                if Mask(8, 248, mem[idx + 128]) <= '/':
                    revert with 0, 'string contains invalid characters'
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= ':':
                    revert with 0, 'string contains invalid characters'
            else:
                if Mask(8, 248, mem[idx + 128]) >= '{':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < '[':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
            else:
                if Mask(8, 248, mem[idx + 128]) <= '`':
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
        idx = idx + 1
        continue 
    if stor2[mem[128]]:
        mem[mem[64]] = bool(stor2[mem[128]])
    else:
        mem[mem[64]] = mem[128] == 0x39393939393939390000000000000000000000000000000000000000000000
    return memory
      from mem[64]
       len 32
}

function sub_7df950ad(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if tx.origin != msg.sender:
        revert with 0, 'sorry, human only'
    if arg1.length != 8:
        revert with 0, 'string must be 8 characters'
    require 0 < arg1.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if Mask(8, 248, mem[idx + 128]) <= '`':
                if Mask(8, 248, mem[idx + 128]) <= '/':
                    revert with 0, 'string contains invalid characters'
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= ':':
                    revert with 0, 'string contains invalid characters'
            else:
                if Mask(8, 248, mem[idx + 128]) >= '{':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < '[':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
            else:
                if Mask(8, 248, mem[idx + 128]) <= '`':
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
        idx = idx + 1
        continue 
    if stor2[mem[128]]:
        revert with 0, 'name already be taken'
    if mem[128] == 0x39393939393939390000000000000000000000000000000000000000000000:
        revert with 0, 'you can't register system name'
    if not sub_17e0f93c[msg.sender]:
        revert with 0, 'you have to register before'
    if sub_1755d05d[stor1[msg.sender]].field_512:
        revert with 0, 'you can't register two names'
    stor2[mem[128]] = sub_17e0f93c[msg.sender]
    sub_1755d05d[stor1[msg.sender]].field_512 = mem[128]
    emit 0xe6e1648f: sub_17e0f93c[msg.sender], mem[128], block.timestamp, msg.sender
    return 1
}

function sub_f403d445(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if tx.origin != msg.sender:
        revert with 0, 'sorry, human only'
    mem[32] = 1
    if sub_17e0f93c[msg.sender]:
        revert with 0, 'you can't register twice'
    if not arg1.length:
        totalPlayers++
        sub_17e0f93c[address(msg.sender)] = totalPlayers + 1
        address(sub_1755d05d[stor0 + 1].field_0) = msg.sender
        require ext_code.size(stor4)
        call stor4.0xf97bd139 with:
             gas gas_remaining wei
            args totalPlayers, msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x825d1e28: totalPlayers, 0, block.timestamp, msg.sender, 0
    else:
        mem[0] = msg.sender
        if arg1.length != 8:
            revert with 0, 'string must be 8 characters'
        require 0 < arg1.length
        if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
            require 1 < arg1.length
            if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                revert with 0, 'string cannot start with 0x'
            require 1 < arg1.length
            if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                revert with 0, 'string cannot start with 0X'
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) <= '`':
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                else:
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
            idx = idx + 1
            continue 
        if mem[128] == 0x39393939393939390000000000000000000000000000000000000000000000:
            totalPlayers++
            sub_17e0f93c[address(msg.sender)] = totalPlayers + 1
            address(sub_1755d05d[stor0 + 1].field_0) = msg.sender
            require ext_code.size(stor4)
            call stor4.0xf97bd139 with:
                 gas gas_remaining wei
                args totalPlayers, msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x825d1e28: totalPlayers, 0, block.timestamp, msg.sender, 0
        else:
            if arg1.length != 8:
                revert with 0, 'string must be 8 characters'
            require 0 < arg1.length
            if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
                require 1 < arg1.length
                if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                    revert with 0, 'string cannot start with 0x'
                require 1 < arg1.length
                if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                    revert with 0, 'string cannot start with 0X'
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < arg1.length
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= '@':
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                else:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) < '[':
                        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    else:
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                idx = idx + 1
                continue 
            if not stor2[mem[128]]:
                revert with 0, 'nick name of referer should be registered'
            totalPlayers++
            sub_17e0f93c[address(msg.sender)] = totalPlayers + 1
            address(sub_1755d05d[stor0 + 1].field_0) = msg.sender
            sub_1755d05d[stor0].field_256 = stor2[mem[128]]
            sub_1755d05d[stor2[mem[128]]].field_768++
            stor[sub_1755d05d[stor2[mem[128]]].field_768 + ('array', 3, ('map', ('stor', ('map', ('mem', ('range', 128, 32)), ('name', 'stor2', 2))), ('name', 'sub_1755d05d', 3)))].field_0 = totalPlayers
            require ext_code.size(stor4)
            call stor4.0xf97bd139 with:
                 gas gas_remaining wei
                args totalPlayers, msg.sender, stor2[mem[128]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x825d1e28: totalPlayers, stor2[mem[128]], block.timestamp, msg.sender, address(sub_1755d05d[stor2[mem[128]]].field_0)
    return 1
}

function sub_9eeedf19(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if tx.origin != msg.sender:
        revert with 0, 'sorry, human only'
    mem[0] = msg.sender
    mem[32] = 1
    if sub_17e0f93c[msg.sender]:
        if ext_code.size(msg.sender):
            revert with 0, 'sorry humans only'
        if tx.origin != msg.sender:
            revert with 0, 'sorry, human only'
        if arg1.length != 8:
            revert with 0, 'string must be 8 characters'
        require 0 < arg1.length
        if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
            require 1 < arg1.length
            if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                revert with 0, 'string cannot start with 0x'
            require 1 < arg1.length
            if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                revert with 0, 'string cannot start with 0X'
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) <= '`':
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                else:
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
            idx = idx + 1
            continue 
        if stor2[mem[128]]:
            revert with 0, 'name already be taken'
        if mem[128] == 0x39393939393939390000000000000000000000000000000000000000000000:
            revert with 0, 'you can't register system name'
        if not sub_17e0f93c[msg.sender]:
            revert with 0, 'you have to register before'
        if sub_1755d05d[stor1[msg.sender]].field_512:
            revert with 0, 'you can't register two names'
        stor2[mem[128]] = sub_17e0f93c[msg.sender]
        sub_1755d05d[stor1[msg.sender]].field_512 = mem[128]
        emit 0xe6e1648f: sub_17e0f93c[msg.sender], mem[128], block.timestamp, msg.sender
    else:
        if arg1.length != 8:
            revert with 0, 'string must be 8 characters'
        require 0 < arg1.length
        if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
            require 1 < arg1.length
            if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                revert with 0, 'string cannot start with 0x'
            require 1 < arg1.length
            if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
                revert with 0, 'string cannot start with 0X'
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) <= '`':
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                else:
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
            idx = idx + 1
            continue 
        if stor2[mem[128]]:
            revert with 0, 'nick name shouldn't be registered'
        if mem[128] == 0x39393939393939390000000000000000000000000000000000000000000000:
            revert with 0, 'you can't register system name'
        if not mem[ceil32(arg1.length) + 128]:
            totalPlayers++
            stor2[mem[128]] = totalPlayers + 1
            sub_17e0f93c[address(msg.sender)] = totalPlayers + 1
            sub_1755d05d[stor0 + 1].field_512 = mem[128]
            address(sub_1755d05d[stor0].field_0) = msg.sender
            require ext_code.size(stor4)
            call stor4.0xf97bd139 with:
                 gas gas_remaining wei
                args totalPlayers, msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x511859e6: totalPlayers, mem[128], 0, block.timestamp, msg.sender, 0
        else:
            if mem[ceil32(arg1.length) + 128] != 8:
                revert with 0, 'string must be 8 characters'
            require 0 < mem[ceil32(arg1.length) + 128]
            if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[ceil32(arg1.length) + 160]):
                require 1 < mem[ceil32(arg1.length) + 128]
                if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[ceil32(arg1.length) + 161]):
                    revert with 0, 'string cannot start with 0x'
                require 1 < mem[ceil32(arg1.length) + 128]
                if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[ceil32(arg1.length) + 161]):
                    revert with 0, 'string cannot start with 0X'
            idx = 0
            while idx < mem[ceil32(arg1.length) + 128]:
                require idx < mem[ceil32(arg1.length) + 128]
                require idx < mem[ceil32(arg1.length) + 128]
                require idx < mem[ceil32(arg1.length) + 128]
                if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '@':
                    if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '`':
                        if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < mem[ceil32(arg1.length) + 128]
                        if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= '{':
                            require idx < mem[ceil32(arg1.length) + 128]
                            if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < mem[ceil32(arg1.length) + 128]
                            if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= ':':
                                revert with 0, 'string contains invalid characters'
                else:
                    require idx < mem[ceil32(arg1.length) + 128]
                    if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) < '[':
                        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 1)))), 0) - 256
                    else:
                        if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '`':
                            if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < mem[ceil32(arg1.length) + 128]
                            if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= '{':
                                require idx < mem[ceil32(arg1.length) + 128]
                                if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < mem[ceil32(arg1.length) + 128]
                                if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                idx = idx + 1
                continue 
            if mem[ceil32(arg1.length) + 160] == 0x39393939393939390000000000000000000000000000000000000000000000:
                totalPlayers++
                stor2[mem[128]] = totalPlayers + 1
                sub_17e0f93c[address(msg.sender)] = totalPlayers + 1
                sub_1755d05d[stor0 + 1].field_512 = mem[128]
                address(sub_1755d05d[stor0].field_0) = msg.sender
                require ext_code.size(stor4)
                call stor4.0xf97bd139 with:
                     gas gas_remaining wei
                    args totalPlayers, msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x511859e6: totalPlayers, mem[128], 0, block.timestamp, msg.sender, 0
            else:
                if mem[ceil32(arg1.length) + 128] != 8:
                    revert with 0, 'string must be 8 characters'
                require 0 < mem[ceil32(arg1.length) + 128]
                if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[ceil32(arg1.length) + 160]):
                    require 1 < mem[ceil32(arg1.length) + 128]
                    if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[ceil32(arg1.length) + 161]):
                        revert with 0, 'string cannot start with 0x'
                    require 1 < mem[ceil32(arg1.length) + 128]
                    if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[ceil32(arg1.length) + 161]):
                        revert with 0, 'string cannot start with 0X'
                idx = 0
                while idx < mem[ceil32(arg1.length) + 128]:
                    require idx < mem[ceil32(arg1.length) + 128]
                    require idx < mem[ceil32(arg1.length) + 128]
                    require idx < mem[ceil32(arg1.length) + 128]
                    if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '@':
                        if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '`':
                            if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < mem[ceil32(arg1.length) + 128]
                            if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= '{':
                                require idx < mem[ceil32(arg1.length) + 128]
                                if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < mem[ceil32(arg1.length) + 128]
                                if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                    else:
                        require idx < mem[ceil32(arg1.length) + 128]
                        if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) < '[':
                            mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('var', 0)), 1)))), 0) - 256
                        else:
                            if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '`':
                                if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < mem[ceil32(arg1.length) + 128]
                                if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                            else:
                                if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= '{':
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) <= '/':
                                        revert with 0, 'string contains invalid characters'
                                    require idx < mem[ceil32(arg1.length) + 128]
                                    if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) >= ':':
                                        revert with 0, 'string contains invalid characters'
                    idx = idx + 1
                    continue 
                if not stor2[mem[ceil32(arg1.length) + 160]]:
                    revert with 0, 'nick name of referer should be registered'
                totalPlayers++
                stor2[mem[128]] = totalPlayers + 1
                sub_17e0f93c[address(msg.sender)] = totalPlayers + 1
                sub_1755d05d[stor0 + 1].field_512 = mem[128]
                address(sub_1755d05d[stor0].field_0) = msg.sender
                sub_1755d05d[stor0].field_256 = stor2[mem[ceil32(arg1.length) + 160]]
                sub_1755d05d[stor2[mem[ceil32(arg1.length) + 160]]].field_768++
                stor[sub_1755d05d[stor2[mem[ceil32(arg1.length) + 160]]].field_768 + ('array', 3, ('map', ('stor', ('map', ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), 32)), ('name', 'stor2', 2))), ('name', 'sub_1755d05d', 3)))].field_0 = totalPlayers
                require ext_code.size(stor4)
                call stor4.0xf97bd139 with:
                     gas gas_remaining wei
                    args totalPlayers, msg.sender, stor2[mem[ceil32(arg1.length) + 160]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x511859e6: totalPlayers, mem[128], stor2[mem[ceil32(arg1.length) + 160]], block.timestamp, msg.sender, address(sub_1755d05d[stor2[mem[ceil32(arg1.length) + 160]]].field_0)
    return 1
}

function sub_c49ce6a9(?) {
    if not arg1:
        revert with 0, 'address can't be zero'
    if stor4 != msg.sender:
        revert with 0, 'game contract only'
    mem[32] = 1
    if sub_17e0f93c[address(arg1)]:
        return sub_17e0f93c[address(arg1)], sub_1755d05d[stor1[address(arg1)]].field_256, 1
    if not arg2.length:
        totalPlayers++
        sub_17e0f93c[address(arg1)] = totalPlayers + 1
        address(sub_1755d05d[stor0 + 1].field_0) = arg1
        require ext_code.size(stor4)
        call stor4.0xf97bd139 with:
             gas gas_remaining wei
            args totalPlayers, address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x825d1e28: totalPlayers, 0, block.timestamp, arg1, 0
        return totalPlayers, 0, 1
    mem[0] = arg1
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if arg2.length != 8:
        revert with 0, 'string must be 8 characters'
    require 0 < arg2.length
    if Mask(8, 248, mem[128]) != 0x3000000000000000000000000000000000000000000000000000000000000000:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg2.length
            require idx < arg2.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) <= '`':
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg2.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg2.length
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg2.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
            else:
                require idx < arg2.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                else:
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg2.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg2.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg2.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
            idx = idx + 1
            continue 
        if mem[128] == 0x39393939393939390000000000000000000000000000000000000000000000:
            totalPlayers++
            sub_17e0f93c[address(arg1)] = totalPlayers + 1
            address(sub_1755d05d[stor0 + 1].field_0) = arg1
            require ext_code.size(stor4)
            call stor4.0xf97bd139 with:
                 gas gas_remaining wei
                args totalPlayers, address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x825d1e28: totalPlayers, 0, block.timestamp, arg1, 0
            return totalPlayers, 0, 1
        _433 = mem[64]
        mem[64] = mem[64] + ceil32(arg2.length) + 32
        mem[_433 + 32 len arg2.length] = arg2[all]
        if arg2.length != 8:
            revert with 0, 'string must be 8 characters'
        require 0 < arg2.length
        if Mask(8, 248, mem[_433 + 32]) != 0x3000000000000000000000000000000000000000000000000000000000000000:
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg2.length
                require idx < arg2.length
                if Mask(8, 248, mem[_433 + idx + 32]) <= '@':
                    if Mask(8, 248, mem[_433 + idx + 32]) <= '`':
                        if Mask(8, 248, mem[_433 + idx + 32]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg2.length
                        if Mask(8, 248, mem[_433 + idx + 32]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[_433 + idx + 32]) >= '{':
                            require idx < arg2.length
                            if Mask(8, 248, mem[_433 + idx + 32]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg2.length
                            if Mask(8, 248, mem[_433 + idx + 32]) >= ':':
                                revert with 0, 'string contains invalid characters'
                else:
                    require idx < arg2.length
                    if Mask(8, 248, mem[_433 + idx + 32]) < '[':
                        mem[_433 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 32, ('var', '_433'), ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 32, ('var', '_433'), ('var', 0)), 1)))), 0) - 256
                    else:
                        if Mask(8, 248, mem[_433 + idx + 32]) <= '`':
                            if Mask(8, 248, mem[_433 + idx + 32]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg2.length
                            if Mask(8, 248, mem[_433 + idx + 32]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[_433 + idx + 32]) >= '{':
                                require idx < arg2.length
                                if Mask(8, 248, mem[_433 + idx + 32]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg2.length
                                if Mask(8, 248, mem[_433 + idx + 32]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                idx = idx + 1
                continue 
            mem[0] = mem[_433 + 32]
            _825 = sha3(mem[0], 2)
            if not stor2[mem[0]]:
                revert with 0, 'nick name should be registered'
            mem[0] = stor2[mem[0]]
            totalPlayers++
            sub_17e0f93c[address(arg1)] = totalPlayers + 1
            address(sub_1755d05d[stor0 + 1].field_0) = arg1
            sub_1755d05d[stor0].field_256 = stor[_825]
            sub_1755d05d[stor[_825]].field_768++
            stor[sub_1755d05d[stor[_825]].field_768 + ('array', 3, ('map', ('stor', ('var', '_825')), ('name', 'sub_1755d05d', 3)))].field_0 = totalPlayers
            require ext_code.size(stor4)
            call stor4.0xf97bd139 with:
                 gas gas_remaining wei
                args totalPlayers, address(arg1), stor[_825]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x825d1e28: totalPlayers, stor[_825], block.timestamp, arg1, address(sub_1755d05d[mem[0]].field_0)
            return totalPlayers, stor[_825], 1
        require 1 < arg2.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[_433 + 33]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg2.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[_433 + 33]):
            revert with 0, 'string cannot start with 0X'
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg2.length
            require idx < arg2.length
            if Mask(8, 248, mem[_433 + idx + 32]) <= '@':
                if Mask(8, 248, mem[_433 + idx + 32]) <= '`':
                    if Mask(8, 248, mem[_433 + idx + 32]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg2.length
                    if Mask(8, 248, mem[_433 + idx + 32]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[_433 + idx + 32]) >= '{':
                        require idx < arg2.length
                        if Mask(8, 248, mem[_433 + idx + 32]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg2.length
                        if Mask(8, 248, mem[_433 + idx + 32]) >= ':':
                            revert with 0, 'string contains invalid characters'
            else:
                require idx < arg2.length
                if Mask(8, 248, mem[_433 + idx + 32]) < '[':
                    mem[_433 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 32, ('var', '_433'), ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 32, ('var', '_433'), ('var', 0)), 1)))), 0) - 256
                else:
                    if Mask(8, 248, mem[_433 + idx + 32]) <= '`':
                        if Mask(8, 248, mem[_433 + idx + 32]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg2.length
                        if Mask(8, 248, mem[_433 + idx + 32]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[_433 + idx + 32]) >= '{':
                            require idx < arg2.length
                            if Mask(8, 248, mem[_433 + idx + 32]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg2.length
                            if Mask(8, 248, mem[_433 + idx + 32]) >= ':':
                                revert with 0, 'string contains invalid characters'
            idx = idx + 1
            continue 
        mem[0] = mem[_433 + 32]
        _827 = sha3(mem[0], 2)
        if not stor2[mem[0]]:
            revert with 0, 'nick name should be registered'
        mem[0] = stor2[mem[0]]
        totalPlayers++
        sub_17e0f93c[address(arg1)] = totalPlayers + 1
        address(sub_1755d05d[stor0 + 1].field_0) = arg1
        sub_1755d05d[stor0].field_256 = stor[_827]
        sub_1755d05d[stor[_827]].field_768++
        stor[sub_1755d05d[stor[_827]].field_768 + ('array', 3, ('map', ('stor', ('var', '_827')), ('name', 'sub_1755d05d', 3)))].field_0 = totalPlayers
        require ext_code.size(stor4)
        call stor4.0xf97bd139 with:
             gas gas_remaining wei
            args totalPlayers, address(arg1), stor[_827]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x825d1e28: totalPlayers, stor[_827], block.timestamp, arg1, address(sub_1755d05d[mem[0]].field_0)
        return totalPlayers, stor[_827], 1
    require 1 < arg2.length
    if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
        revert with 0, 'string cannot start with 0x'
    require 1 < arg2.length
    if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
        revert with 0, 'string cannot start with 0X'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if Mask(8, 248, mem[idx + 128]) <= '`':
                if Mask(8, 248, mem[idx + 128]) <= '/':
                    revert with 0, 'string contains invalid characters'
                require idx < arg2.length
                if Mask(8, 248, mem[idx + 128]) >= ':':
                    revert with 0, 'string contains invalid characters'
            else:
                if Mask(8, 248, mem[idx + 128]) >= '{':
                    require idx < arg2.length
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg2.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
        else:
            require idx < arg2.length
            if Mask(8, 248, mem[idx + 128]) < '[':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
            else:
                if Mask(8, 248, mem[idx + 128]) <= '`':
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg2.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg2.length
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg2.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
        idx = idx + 1
        continue 
    if mem[128] == 0x39393939393939390000000000000000000000000000000000000000000000:
        totalPlayers++
        sub_17e0f93c[address(arg1)] = totalPlayers + 1
        address(sub_1755d05d[stor0 + 1].field_0) = arg1
        require ext_code.size(stor4)
        call stor4.0xf97bd139 with:
             gas gas_remaining wei
            args totalPlayers, address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x825d1e28: totalPlayers, 0, block.timestamp, arg1, 0
        return totalPlayers, 0, 1
    _436 = mem[64]
    mem[64] = mem[64] + ceil32(arg2.length) + 32
    mem[_436 + 32 len arg2.length] = arg2[all]
    if arg2.length != 8:
        revert with 0, 'string must be 8 characters'
    require 0 < arg2.length
    if Mask(8, 248, mem[_436 + 32]) != 0x3000000000000000000000000000000000000000000000000000000000000000:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg2.length
            require idx < arg2.length
            if Mask(8, 248, mem[_436 + idx + 32]) <= '@':
                if Mask(8, 248, mem[_436 + idx + 32]) <= '`':
                    if Mask(8, 248, mem[_436 + idx + 32]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg2.length
                    if Mask(8, 248, mem[_436 + idx + 32]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[_436 + idx + 32]) >= '{':
                        require idx < arg2.length
                        if Mask(8, 248, mem[_436 + idx + 32]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg2.length
                        if Mask(8, 248, mem[_436 + idx + 32]) >= ':':
                            revert with 0, 'string contains invalid characters'
            else:
                require idx < arg2.length
                if Mask(8, 248, mem[_436 + idx + 32]) < '[':
                    mem[_436 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 32, ('var', '_436'), ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 32, ('var', '_436'), ('var', 0)), 1)))), 0) - 256
                else:
                    if Mask(8, 248, mem[_436 + idx + 32]) <= '`':
                        if Mask(8, 248, mem[_436 + idx + 32]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg2.length
                        if Mask(8, 248, mem[_436 + idx + 32]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[_436 + idx + 32]) >= '{':
                            require idx < arg2.length
                            if Mask(8, 248, mem[_436 + idx + 32]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg2.length
                            if Mask(8, 248, mem[_436 + idx + 32]) >= ':':
                                revert with 0, 'string contains invalid characters'
            idx = idx + 1
            continue 
        mem[0] = mem[_436 + 32]
        _829 = sha3(mem[0], 2)
        if not stor2[mem[0]]:
            revert with 0, 'nick name should be registered'
        mem[0] = stor2[mem[0]]
        totalPlayers++
        sub_17e0f93c[address(arg1)] = totalPlayers + 1
        address(sub_1755d05d[stor0 + 1].field_0) = arg1
        sub_1755d05d[stor0].field_256 = stor[_829]
        sub_1755d05d[stor[_829]].field_768++
        stor[sub_1755d05d[stor[_829]].field_768 + ('array', 3, ('map', ('stor', ('var', '_829')), ('name', 'sub_1755d05d', 3)))].field_0 = totalPlayers
        require ext_code.size(stor4)
        call stor4.0xf97bd139 with:
             gas gas_remaining wei
            args totalPlayers, address(arg1), stor[_829]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x825d1e28: totalPlayers, stor[_829], block.timestamp, arg1, address(sub_1755d05d[mem[0]].field_0)
        return totalPlayers, stor[_829], 1
    require 1 < arg2.length
    if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[_436 + 33]):
        revert with 0, 'string cannot start with 0x'
    require 1 < arg2.length
    if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[_436 + 33]):
        revert with 0, 'string cannot start with 0X'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[_436 + idx + 32]) <= '@':
            if Mask(8, 248, mem[_436 + idx + 32]) <= '`':
                if Mask(8, 248, mem[_436 + idx + 32]) <= '/':
                    revert with 0, 'string contains invalid characters'
                require idx < arg2.length
                if Mask(8, 248, mem[_436 + idx + 32]) >= ':':
                    revert with 0, 'string contains invalid characters'
            else:
                if Mask(8, 248, mem[_436 + idx + 32]) >= '{':
                    require idx < arg2.length
                    if Mask(8, 248, mem[_436 + idx + 32]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg2.length
                    if Mask(8, 248, mem[_436 + idx + 32]) >= ':':
                        revert with 0, 'string contains invalid characters'
        else:
            require idx < arg2.length
            if Mask(8, 248, mem[_436 + idx + 32]) < '[':
                mem[_436 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 32, ('var', '_436'), ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 32, ('var', '_436'), ('var', 0)), 1)))), 0) - 256
            else:
                if Mask(8, 248, mem[_436 + idx + 32]) <= '`':
                    if Mask(8, 248, mem[_436 + idx + 32]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg2.length
                    if Mask(8, 248, mem[_436 + idx + 32]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[_436 + idx + 32]) >= '{':
                        require idx < arg2.length
                        if Mask(8, 248, mem[_436 + idx + 32]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg2.length
                        if Mask(8, 248, mem[_436 + idx + 32]) >= ':':
                            revert with 0, 'string contains invalid characters'
        idx = idx + 1
        continue 
    mem[0] = mem[_436 + 32]
    _831 = sha3(mem[0], 2)
    if not stor2[mem[0]]:
        revert with 0, 'nick name should be registered'
    mem[0] = stor2[mem[0]]
    totalPlayers++
    sub_17e0f93c[address(arg1)] = totalPlayers + 1
    address(sub_1755d05d[stor0 + 1].field_0) = arg1
    sub_1755d05d[stor0].field_256 = stor[_831]
    sub_1755d05d[stor[_831]].field_768++
    stor[sub_1755d05d[stor[_831]].field_768 + ('array', 3, ('map', ('stor', ('var', '_831')), ('name', 'sub_1755d05d', 3)))].field_0 = totalPlayers
    require ext_code.size(stor4)
    call stor4.0xf97bd139 with:
         gas gas_remaining wei
        args totalPlayers, address(arg1), stor[_831]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x825d1e28: totalPlayers, stor[_831], block.timestamp, arg1, address(sub_1755d05d[mem[0]].field_0)
    return totalPlayers, stor[_831], 1
}



}
