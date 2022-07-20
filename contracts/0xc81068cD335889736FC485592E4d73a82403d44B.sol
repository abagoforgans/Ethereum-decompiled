contract main {




// =====================  Runtime code  =====================


const MAX_SIZE = 40


address stor0;
address stor1;
mapping of struct stor2;
mapping of uint32 stor3;
mapping of uint8 stor4;
address stor5;

function tileBonuses(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg3 < 8
    return tileBonuses[uint8(arg3)]
}

function _fallback() payable {
    revert
}

function setUnits(address arg1) {
    require msg.sender == stor5
    stor0 = arg1
}

function setInventory(address arg1) {
    require msg.sender == stor5
    stor1 = arg1
}

function getAddressDigit(address arg1, uint8 arg2) {
    return (arg1 / 2^uint8(-(4 * uint8(arg2)) + 156) % 16)
}

function setOperator(address arg1, bool arg2) {
    require msg.sender == stor5
    stor4[address(arg1)] = uint8(arg2)
}

function addTileBonus(uint256 arg1, uint256 arg2, uint32[8] arg3) {
    require stor4[msg.sender]
    s = 0
    idx = 68
    while 324 > idx:
        stor3[arg1][arg2].field_0 = uint32(cd[idx]) * 256^s or !(test266151307() * 256^s) and stor3[arg1][arg2].field_0
        s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
        idx = idx + 32
        continue 
    idx = 32
    s = sha3(arg2, sha3(arg1, 3))
    while idx:
        stor[s] = !(test266151307() * 256^idx) and stor[s]
        idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
        s = (idx + 7 / 32) + s
        continue 
    idx = Mask(252, 2, None - 27) + 39 / 32 * Mask(254, 0, None - 27) >> 2
    while 1 > idx:
        uint32(stor3[arg1][arg2][idx].field_0) = 0
        idx = idx + 1
        continue 
}

function getFactories(address arg1) {
    if not stor2[address(arg1)].field_0:
        mem[(32 * stor2[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
        mem[(32 * stor2[address(arg1)].field_0) + 192 len floor32(stor2[address(arg1)].field_0)] = mem[128 len floor32(stor2[address(arg1)].field_0)]
        return memory
          from (32 * stor2[address(arg1)].field_0) + 128
           len (96 * stor2[address(arg1)].field_0) + 64
    mem[128] = stor2[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor2[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor2[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2[address(arg1)].field_0) + 192 len floor32(stor2[address(arg1)].field_0)] = mem[128 len floor32(stor2[address(arg1)].field_0)]
    return Array(len=stor2[address(arg1)].field_0, data=mem[128 len floor32(stor2[address(arg1)].field_0)], mem[(32 * stor2[address(arg1)].field_0) + floor32(stor2[address(arg1)].field_0) + 192 len (32 * stor2[address(arg1)].field_0) - floor32(stor2[address(arg1)].field_0)]), 
}

function moveFactory(uint8 arg1, uint8 arg2) {
    require arg2 < 40
    require arg1 < stor2[msg.sender].field_0
    require stor2[msg.sender][arg1].field_0 > 0
    if arg2 < stor2[msg.sender].field_0:
        require not stor2[msg.sender][arg2].field_0
    else:
        uint8(stor2[msg.sender].field_0) = uint8(arg2 + 1)
        Mask(248, 0, stor2[msg.sender].field_8) = 0
        if stor2[msg.sender].field_0 > uint8(arg2 + 1):
            idx = uint8(arg2 + 1)
            while stor2[msg.sender].field_0 > idx:
                stor2[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    require arg2 < stor2[msg.sender].field_0
    stor2[msg.sender][arg2].field_0 = stor2[msg.sender][arg1].field_0
    require arg1 < stor2[msg.sender].field_0
    stor2[msg.sender][arg1].field_0 = 0
    idx = 608
    s = 0
    while 864 > idx + 32:
        mem[idx + 32] = uint32(stor3[msg.sender / 2^uint8(-(4 * uint8(arg2)) + 156) << 252][stor2[msg.sender][arg1].field_0].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    idx = 864
    s = 0
    while 1120 > idx + 32:
        mem[idx + 32] = uint32(stor3[msg.sender / 2^uint8(-(4 * uint8(arg1)) + 156) << 252][stor2[msg.sender][arg1].field_0].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    require ext_code.size(stor0)
    call stor0.0x454764ac with:
         gas gas_remaining wei
        args msg.sender, stor2[msg.sender][arg1].field_0, mem[640 len 224] >> 1792, uint32(stor3[msg.sender / 2^uint8(-(4 * uint8(arg1)) + 156) << 252][stor2[msg.sender][arg1].field_0].field_0), mem[896 len 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addFactory(address arg1, uint8 arg2, uint256 arg3) {
    require arg2 < 40
    require msg.sender == stor0
    if arg2 < stor2[address(arg1)].field_0:
        require not stor2[address(arg1)][arg2].field_0
    else:
        uint8(stor2[address(arg1)].field_0) = uint8(arg2 + 1)
        Mask(248, 0, stor2[address(arg1)].field_8) = 0
        if stor2[address(arg1)].field_0 > uint8(arg2 + 1):
            idx = uint8(arg2 + 1)
            while stor2[address(arg1)].field_0 > idx:
                stor2[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    require arg2 < stor2[address(arg1)].field_0
    stor2[address(arg1)][arg2].field_0 = arg3
    idx = 352
    s = 0
    while 608 > idx + 32:
        mem[idx + 32] = uint32(stor3[arg1 / 2^uint8(-(4 * uint8(arg2)) + 156) << 252][arg3].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    if uint32(stor3[arg1 / 2^uint8(-(4 * uint8(arg2)) + 156) << 252][arg3].field_0) > 0:
        mem[708] = mem[412 len 4]
        mem[740] = mem[444 len 4]
        mem[772] = mem[476 len 4]
        mem[804] = mem[508 len 4]
        mem[836] = mem[540 len 4]
        mem[868] = mem[572 len 4]
        mem[900] = mem[604 len 4]
        require ext_code.size(stor0)
        call stor0.0xa9ed5b43 with:
             gas gas_remaining wei
            args address(arg1), arg3, uint32(stor3[arg1 / 2^uint8(-(4 * uint8(arg2)) + 156) << 252][arg3].field_0), mem[708 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if mem[412 len 4] > 0:
            mem[708] = mem[412 len 4]
            mem[740] = mem[444 len 4]
            mem[772] = mem[476 len 4]
            mem[804] = mem[508 len 4]
            mem[836] = mem[540 len 4]
            mem[868] = mem[572 len 4]
            mem[900] = mem[604 len 4]
            require ext_code.size(stor0)
            call stor0.0xa9ed5b43 with:
                 gas gas_remaining wei
                args address(arg1), arg3, uint32(stor3[arg1 / 2^uint8(-(4 * uint8(arg2)) + 156) << 252][arg3].field_0), mem[708 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[444 len 4] > 0:
                mem[708] = mem[412 len 4]
                mem[740] = mem[444 len 4]
                mem[772] = mem[476 len 4]
                mem[804] = mem[508 len 4]
                mem[836] = mem[540 len 4]
                mem[868] = mem[572 len 4]
                mem[900] = mem[604 len 4]
                require ext_code.size(stor0)
                call stor0.0xa9ed5b43 with:
                     gas gas_remaining wei
                    args address(arg1), arg3, uint32(stor3[arg1 / 2^uint8(-(4 * uint8(arg2)) + 156) << 252][arg3].field_0), mem[708 len 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if mem[476 len 4] > 0:
                    mem[708] = mem[412 len 4]
                    mem[740] = mem[444 len 4]
                    mem[772] = mem[476 len 4]
                    mem[804] = mem[508 len 4]
                    mem[836] = mem[540 len 4]
                    mem[868] = mem[572 len 4]
                    mem[900] = mem[604 len 4]
                    require ext_code.size(stor0)
                    call stor0.0xa9ed5b43 with:
                         gas gas_remaining wei
                        args address(arg1), arg3, uint32(stor3[arg1 / 2^uint8(-(4 * uint8(arg2)) + 156) << 252][arg3].field_0), mem[708 len 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if mem[508 len 4] > 0:
                        mem[708] = mem[412 len 4]
                        mem[740] = mem[444 len 4]
                        mem[772] = mem[476 len 4]
                        mem[804] = mem[508 len 4]
                        mem[836] = mem[540 len 4]
                        mem[868] = mem[572 len 4]
                        mem[900] = mem[604 len 4]
                        require ext_code.size(stor0)
                        call stor0.0xa9ed5b43 with:
                             gas gas_remaining wei
                            args address(arg1), arg3, uint32(stor3[arg1 / 2^uint8(-(4 * uint8(arg2)) + 156) << 252][arg3].field_0), mem[708 len 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if mem[540 len 4] > 0:
                            mem[708] = mem[412 len 4]
                            mem[740] = mem[444 len 4]
                            mem[772] = mem[476 len 4]
                            mem[804] = mem[508 len 4]
                            mem[836] = mem[540 len 4]
                            mem[868] = mem[572 len 4]
                            mem[900] = mem[604 len 4]
                            require ext_code.size(stor0)
                            call stor0.0xa9ed5b43 with:
                                 gas gas_remaining wei
                                args address(arg1), arg3, uint32(stor3[arg1 / 2^uint8(-(4 * uint8(arg2)) + 156) << 252][arg3].field_0), mem[708 len 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if mem[572 len 4] > 0:
                                mem[708] = mem[412 len 4]
                                mem[740] = mem[444 len 4]
                                mem[772] = mem[476 len 4]
                                mem[804] = mem[508 len 4]
                                mem[836] = mem[540 len 4]
                                mem[868] = mem[572 len 4]
                                mem[900] = mem[604 len 4]
                                require ext_code.size(stor0)
                                call stor0.0xa9ed5b43 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg3, uint32(stor3[arg1 / 2^uint8(-(4 * uint8(arg2)) + 156) << 252][arg3].field_0), mem[708 len 224]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[604 len 4] > 0:
                                    mem[708] = mem[412 len 4]
                                    mem[740] = mem[444 len 4]
                                    mem[772] = mem[476 len 4]
                                    mem[804] = mem[508 len 4]
                                    mem[836] = mem[540 len 4]
                                    mem[868] = mem[572 len 4]
                                    mem[900] = mem[604 len 4]
                                    require ext_code.size(stor0)
                                    call stor0.0xa9ed5b43 with:
                                         gas gas_remaining wei
                                        args address(arg1), arg3, uint32(stor3[arg1 / 2^uint8(-(4 * uint8(arg2)) + 156) << 252][arg3].field_0), mem[708 len 224]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
}

function getPlayersUnits(address arg1) {
    mem[96] = stor2[address(arg1)].field_0
    if not stor2[address(arg1)].field_0:
        mem[(32 * stor2[address(arg1)].field_0) + 128] = stor2[address(arg1)].field_0
        if not stor2[address(arg1)].field_0:
            mem[(64 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
            if not stor2[address(arg1)].field_0:
                mem[(98 * stor2[address(arg1)].field_0) + 192] = stor2[address(arg1)].field_0
                mem[64] = (131 * stor2[address(arg1)].field_0) + 224
                if not stor2[address(arg1)].field_0:
                    idx = 0
                    while idx < stor2[address(arg1)].field_0:
                        require idx < stor2[address(arg1)].field_0
                        require ext_code.size(stor0)
                        call stor0.unitsOwned(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), stor2[address(arg1)][idx].field_0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
                        require idx < stor2[address(arg1)].field_0
                        mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                        require ext_code.size(stor0)
                        call stor0.0xcdddceb with:
                             gas gas_remaining wei
                            args address(arg1), stor2[address(arg1)][idx].field_0
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
                        require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
                        mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
                        mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
                        require idx < stor2[address(arg1)].field_0
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                        require ext_code.size(stor1)
                        call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), stor2[address(arg1)][idx].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
                        mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
                        mem[0] = arg1
                        mem[32] = 2
                        idx = idx + 1
                        continue 
                    mem[0] = arg1
                    mem[32] = 2
                    _752 = mem[64]
                    mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
                    mem[_752] = stor2[address(arg1)].field_0
                    if not stor2[address(arg1)].field_0:
                        _863 = mem[64]
                        mem[mem[64]] = 160
                        mem[mem[64] + 160] = stor2[address(arg1)].field_0
                        mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_752 + 32 len floor32(stor2[address(arg1)].field_0)]
                        mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                        mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                        _1440 = mem[96]
                        mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                        mem[(32 * _1440) + (32 * stor2[address(arg1)].field_0) + _863 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                        _1664 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                        mem[(32 * _1440) + (32 * stor2[address(arg1)].field_0) + _863 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                        mem[_863 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1440) + (32 * stor2[address(arg1)].field_0) + 256
                        mem[(32 * _1664) + (32 * _1440) + (32 * stor2[address(arg1)].field_0) + _863 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                        _2112 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                        mem[(32 * _1664) + (32 * _1440) + (32 * stor2[address(arg1)].field_0) + _863 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                        mem[_863 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1664) + (32 * _1440) + (32 * stor2[address(arg1)].field_0) + 288
                        mem[(32 * _2112) + (32 * _1664) + (32 * _1440) + (32 * stor2[address(arg1)].field_0) + _863 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                        _2464 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                        mem[(32 * _2112) + (32 * _1664) + (32 * _1440) + (32 * stor2[address(arg1)].field_0) + _863 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                        return memory
                          from mem[64]
                           len (32 * _2464) + (32 * _2112) + (32 * _1664) + (32 * _1440) + (32 * stor2[address(arg1)].field_0) + _863 + -mem[64] + 320
                    mem[0] = sha3(address(arg1), 2)
                    mem[_752 + 32] = stor2[address(arg1)].field_0
                    idx = _752 + 32
                    s = 0
                    while _752 + (32 * stor2[address(arg1)].field_0) > idx:
                        mem[idx + 32] = stor2[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _1666 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = stor2[address(arg1)].field_0
                    mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_752 + 32 len floor32(stor2[address(arg1)].field_0)]
                    mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                    mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                    _2115 = mem[96]
                    mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                    mem[(32 * _2115) + (32 * stor2[address(arg1)].field_0) + _1666 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                    _2467 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                    mem[(32 * _2115) + (32 * stor2[address(arg1)].field_0) + _1666 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                    mem[_1666 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2115) + (32 * stor2[address(arg1)].field_0) + 256
                    mem[(32 * _2467) + (32 * _2115) + (32 * stor2[address(arg1)].field_0) + _1666 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                    _2722 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                    mem[(32 * _2467) + (32 * _2115) + (32 * stor2[address(arg1)].field_0) + _1666 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                    mem[_1666 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2467) + (32 * _2115) + (32 * stor2[address(arg1)].field_0) + 288
                    mem[(32 * _2722) + (32 * _2467) + (32 * _2115) + (32 * stor2[address(arg1)].field_0) + _1666 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                    _2880 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                    mem[(32 * _2722) + (32 * _2467) + (32 * _2115) + (32 * stor2[address(arg1)].field_0) + _1666 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                    return memory
                      from mem[64]
                       len (32 * _2880) + (32 * _2722) + (32 * _2467) + (32 * _2115) + (32 * stor2[address(arg1)].field_0) + _1666 + -mem[64] + 320
                mem[(98 * stor2[address(arg1)].field_0) + 224 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
                idx = 0
                while idx < stor2[address(arg1)].field_0:
                    require idx < stor2[address(arg1)].field_0
                    require ext_code.size(stor0)
                    call stor0.unitsOwned(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor2[address(arg1)][idx].field_0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
                    require idx < stor2[address(arg1)].field_0
                    mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                    require ext_code.size(stor0)
                    call stor0.0xcdddceb with:
                         gas gas_remaining wei
                        args address(arg1), stor2[address(arg1)][idx].field_0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
                    require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
                    mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
                    mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
                    require idx < stor2[address(arg1)].field_0
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                    require ext_code.size(stor1)
                    call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor2[address(arg1)][idx].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
                    mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
                    mem[0] = arg1
                    mem[32] = 2
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 2
                _755 = mem[64]
                mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
                mem[_755] = stor2[address(arg1)].field_0
                if not stor2[address(arg1)].field_0:
                    _866 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = stor2[address(arg1)].field_0
                    mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_755 + 32 len floor32(stor2[address(arg1)].field_0)]
                    mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                    mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                    _1443 = mem[96]
                    mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                    mem[(32 * _1443) + (32 * stor2[address(arg1)].field_0) + _866 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                    _1670 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                    mem[(32 * _1443) + (32 * stor2[address(arg1)].field_0) + _866 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                    mem[_866 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1443) + (32 * stor2[address(arg1)].field_0) + 256
                    mem[(32 * _1670) + (32 * _1443) + (32 * stor2[address(arg1)].field_0) + _866 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                    _2118 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                    mem[(32 * _1670) + (32 * _1443) + (32 * stor2[address(arg1)].field_0) + _866 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                    mem[_866 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1670) + (32 * _1443) + (32 * stor2[address(arg1)].field_0) + 288
                    mem[(32 * _2118) + (32 * _1670) + (32 * _1443) + (32 * stor2[address(arg1)].field_0) + _866 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                    _2470 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                    mem[(32 * _2118) + (32 * _1670) + (32 * _1443) + (32 * stor2[address(arg1)].field_0) + _866 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                    return memory
                      from mem[64]
                       len (32 * _2470) + (32 * _2118) + (32 * _1670) + (32 * _1443) + (32 * stor2[address(arg1)].field_0) + _866 + -mem[64] + 320
                mem[0] = sha3(address(arg1), 2)
                mem[_755 + 32] = stor2[address(arg1)].field_0
                idx = _755 + 32
                s = 0
                while _755 + (32 * stor2[address(arg1)].field_0) > idx:
                    mem[idx + 32] = stor2[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1672 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = stor2[address(arg1)].field_0
                mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_755 + 32 len floor32(stor2[address(arg1)].field_0)]
                mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                _2121 = mem[96]
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                mem[(32 * _2121) + (32 * stor2[address(arg1)].field_0) + _1672 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                _2473 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                mem[(32 * _2121) + (32 * stor2[address(arg1)].field_0) + _1672 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                mem[_1672 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2121) + (32 * stor2[address(arg1)].field_0) + 256
                mem[(32 * _2473) + (32 * _2121) + (32 * stor2[address(arg1)].field_0) + _1672 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                _2727 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(32 * _2473) + (32 * _2121) + (32 * stor2[address(arg1)].field_0) + _1672 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                mem[_1672 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2473) + (32 * _2121) + (32 * stor2[address(arg1)].field_0) + 288
                mem[(32 * _2727) + (32 * _2473) + (32 * _2121) + (32 * stor2[address(arg1)].field_0) + _1672 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                _2883 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(32 * _2727) + (32 * _2473) + (32 * _2121) + (32 * stor2[address(arg1)].field_0) + _1672 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                return memory
                  from mem[64]
                   len (32 * _2883) + (32 * _2727) + (32 * _2473) + (32 * _2121) + (32 * stor2[address(arg1)].field_0) + _1672 + -mem[64] + 320
            mem[(64 * stor2[address(arg1)].field_0) + 192 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
            mem[(98 * stor2[address(arg1)].field_0) + 192] = stor2[address(arg1)].field_0
            mem[64] = (131 * stor2[address(arg1)].field_0) + 224
            if not stor2[address(arg1)].field_0:
                idx = 0
                while idx < stor2[address(arg1)].field_0:
                    require idx < stor2[address(arg1)].field_0
                    require ext_code.size(stor0)
                    call stor0.unitsOwned(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor2[address(arg1)][idx].field_0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
                    require idx < stor2[address(arg1)].field_0
                    mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                    require ext_code.size(stor0)
                    call stor0.0xcdddceb with:
                         gas gas_remaining wei
                        args address(arg1), stor2[address(arg1)][idx].field_0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
                    require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
                    mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
                    mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
                    require idx < stor2[address(arg1)].field_0
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                    require ext_code.size(stor1)
                    call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor2[address(arg1)][idx].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
                    mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
                    mem[0] = arg1
                    mem[32] = 2
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 2
                _758 = mem[64]
                mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
                mem[_758] = stor2[address(arg1)].field_0
                if not stor2[address(arg1)].field_0:
                    _869 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = stor2[address(arg1)].field_0
                    mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_758 + 32 len floor32(stor2[address(arg1)].field_0)]
                    mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                    mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                    _1446 = mem[96]
                    mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                    mem[(32 * _1446) + (32 * stor2[address(arg1)].field_0) + _869 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                    _1676 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                    mem[(32 * _1446) + (32 * stor2[address(arg1)].field_0) + _869 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                    mem[_869 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1446) + (32 * stor2[address(arg1)].field_0) + 256
                    mem[(32 * _1676) + (32 * _1446) + (32 * stor2[address(arg1)].field_0) + _869 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                    _2124 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                    mem[(32 * _1676) + (32 * _1446) + (32 * stor2[address(arg1)].field_0) + _869 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                    mem[_869 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1676) + (32 * _1446) + (32 * stor2[address(arg1)].field_0) + 288
                    mem[(32 * _2124) + (32 * _1676) + (32 * _1446) + (32 * stor2[address(arg1)].field_0) + _869 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                    _2476 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                    mem[(32 * _2124) + (32 * _1676) + (32 * _1446) + (32 * stor2[address(arg1)].field_0) + _869 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                    return memory
                      from mem[64]
                       len (32 * _2476) + (32 * _2124) + (32 * _1676) + (32 * _1446) + (32 * stor2[address(arg1)].field_0) + _869 + -mem[64] + 320
                mem[0] = sha3(address(arg1), 2)
                mem[_758 + 32] = stor2[address(arg1)].field_0
                idx = _758 + 32
                s = 0
                while _758 + (32 * stor2[address(arg1)].field_0) > idx:
                    mem[idx + 32] = stor2[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1678 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = stor2[address(arg1)].field_0
                mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_758 + 32 len floor32(stor2[address(arg1)].field_0)]
                mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                _2127 = mem[96]
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                mem[(32 * _2127) + (32 * stor2[address(arg1)].field_0) + _1678 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                _2479 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                mem[(32 * _2127) + (32 * stor2[address(arg1)].field_0) + _1678 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                mem[_1678 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2127) + (32 * stor2[address(arg1)].field_0) + 256
                mem[(32 * _2479) + (32 * _2127) + (32 * stor2[address(arg1)].field_0) + _1678 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                _2732 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(32 * _2479) + (32 * _2127) + (32 * stor2[address(arg1)].field_0) + _1678 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                mem[_1678 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2479) + (32 * _2127) + (32 * stor2[address(arg1)].field_0) + 288
                mem[(32 * _2732) + (32 * _2479) + (32 * _2127) + (32 * stor2[address(arg1)].field_0) + _1678 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                _2886 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(32 * _2732) + (32 * _2479) + (32 * _2127) + (32 * stor2[address(arg1)].field_0) + _1678 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                return memory
                  from mem[64]
                   len (32 * _2886) + (32 * _2732) + (32 * _2479) + (32 * _2127) + (32 * stor2[address(arg1)].field_0) + _1678 + -mem[64] + 320
            mem[(98 * stor2[address(arg1)].field_0) + 224 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
            idx = 0
            while idx < stor2[address(arg1)].field_0:
                require idx < stor2[address(arg1)].field_0
                require ext_code.size(stor0)
                call stor0.unitsOwned(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[96]
                mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
                require idx < stor2[address(arg1)].field_0
                mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                require ext_code.size(stor0)
                call stor0.0xcdddceb with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
                require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
                mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
                require idx < stor2[address(arg1)].field_0
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                require ext_code.size(stor1)
                call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
                mem[0] = arg1
                mem[32] = 2
                idx = idx + 1
                continue 
            mem[0] = arg1
            mem[32] = 2
            _761 = mem[64]
            mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
            mem[_761] = stor2[address(arg1)].field_0
            if not stor2[address(arg1)].field_0:
                _872 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = stor2[address(arg1)].field_0
                mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_761 + 32 len floor32(stor2[address(arg1)].field_0)]
                mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                _1449 = mem[96]
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                mem[(32 * _1449) + (32 * stor2[address(arg1)].field_0) + _872 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                _1682 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                mem[(32 * _1449) + (32 * stor2[address(arg1)].field_0) + _872 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                mem[_872 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1449) + (32 * stor2[address(arg1)].field_0) + 256
                mem[(32 * _1682) + (32 * _1449) + (32 * stor2[address(arg1)].field_0) + _872 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                _2130 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(32 * _1682) + (32 * _1449) + (32 * stor2[address(arg1)].field_0) + _872 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                mem[_872 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1682) + (32 * _1449) + (32 * stor2[address(arg1)].field_0) + 288
                mem[(32 * _2130) + (32 * _1682) + (32 * _1449) + (32 * stor2[address(arg1)].field_0) + _872 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                _2482 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(32 * _2130) + (32 * _1682) + (32 * _1449) + (32 * stor2[address(arg1)].field_0) + _872 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                return memory
                  from mem[64]
                   len (32 * _2482) + (32 * _2130) + (32 * _1682) + (32 * _1449) + (32 * stor2[address(arg1)].field_0) + _872 + -mem[64] + 320
            mem[0] = sha3(address(arg1), 2)
            mem[_761 + 32] = stor2[address(arg1)].field_0
            idx = _761 + 32
            s = 0
            while _761 + (32 * stor2[address(arg1)].field_0) > idx:
                mem[idx + 32] = stor2[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _1684 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = stor2[address(arg1)].field_0
            mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_761 + 32 len floor32(stor2[address(arg1)].field_0)]
            mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
            _2133 = mem[96]
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
            mem[(32 * _2133) + (32 * stor2[address(arg1)].field_0) + _1684 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
            _2485 = mem[(32 * stor2[address(arg1)].field_0) + 128]
            mem[(32 * _2133) + (32 * stor2[address(arg1)].field_0) + _1684 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
            mem[_1684 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2133) + (32 * stor2[address(arg1)].field_0) + 256
            mem[(32 * _2485) + (32 * _2133) + (32 * stor2[address(arg1)].field_0) + _1684 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
            _2737 = mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(32 * _2485) + (32 * _2133) + (32 * stor2[address(arg1)].field_0) + _1684 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
            mem[_1684 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2485) + (32 * _2133) + (32 * stor2[address(arg1)].field_0) + 288
            mem[(32 * _2737) + (32 * _2485) + (32 * _2133) + (32 * stor2[address(arg1)].field_0) + _1684 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
            _2889 = mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(32 * _2737) + (32 * _2485) + (32 * _2133) + (32 * stor2[address(arg1)].field_0) + _1684 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
            return memory
              from mem[64]
               len (32 * _2889) + (32 * _2737) + (32 * _2485) + (32 * _2133) + (32 * stor2[address(arg1)].field_0) + _1684 + -mem[64] + 320
        mem[(32 * stor2[address(arg1)].field_0) + 160 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
        mem[(64 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
        if not stor2[address(arg1)].field_0:
            mem[(98 * stor2[address(arg1)].field_0) + 192] = stor2[address(arg1)].field_0
            mem[64] = (131 * stor2[address(arg1)].field_0) + 224
            if not stor2[address(arg1)].field_0:
                idx = 0
                while idx < stor2[address(arg1)].field_0:
                    require idx < stor2[address(arg1)].field_0
                    require ext_code.size(stor0)
                    call stor0.unitsOwned(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor2[address(arg1)][idx].field_0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
                    require idx < stor2[address(arg1)].field_0
                    mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                    require ext_code.size(stor0)
                    call stor0.0xcdddceb with:
                         gas gas_remaining wei
                        args address(arg1), stor2[address(arg1)][idx].field_0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
                    require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
                    mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
                    mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
                    require idx < stor2[address(arg1)].field_0
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                    require ext_code.size(stor1)
                    call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor2[address(arg1)][idx].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
                    mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
                    mem[0] = arg1
                    mem[32] = 2
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 2
                _764 = mem[64]
                mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
                mem[_764] = stor2[address(arg1)].field_0
                if not stor2[address(arg1)].field_0:
                    _875 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = stor2[address(arg1)].field_0
                    mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_764 + 32 len floor32(stor2[address(arg1)].field_0)]
                    mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                    mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                    _1452 = mem[96]
                    mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                    mem[(32 * _1452) + (32 * stor2[address(arg1)].field_0) + _875 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                    _1688 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                    mem[(32 * _1452) + (32 * stor2[address(arg1)].field_0) + _875 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                    mem[_875 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1452) + (32 * stor2[address(arg1)].field_0) + 256
                    mem[(32 * _1688) + (32 * _1452) + (32 * stor2[address(arg1)].field_0) + _875 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                    _2136 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                    mem[(32 * _1688) + (32 * _1452) + (32 * stor2[address(arg1)].field_0) + _875 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                    mem[_875 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1688) + (32 * _1452) + (32 * stor2[address(arg1)].field_0) + 288
                    mem[(32 * _2136) + (32 * _1688) + (32 * _1452) + (32 * stor2[address(arg1)].field_0) + _875 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                    _2488 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                    mem[(32 * _2136) + (32 * _1688) + (32 * _1452) + (32 * stor2[address(arg1)].field_0) + _875 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                    return memory
                      from mem[64]
                       len (32 * _2488) + (32 * _2136) + (32 * _1688) + (32 * _1452) + (32 * stor2[address(arg1)].field_0) + _875 + -mem[64] + 320
                mem[0] = sha3(address(arg1), 2)
                mem[_764 + 32] = stor2[address(arg1)].field_0
                idx = _764 + 32
                s = 0
                while _764 + (32 * stor2[address(arg1)].field_0) > idx:
                    mem[idx + 32] = stor2[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1690 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = stor2[address(arg1)].field_0
                mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_764 + 32 len floor32(stor2[address(arg1)].field_0)]
                mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                _2139 = mem[96]
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                mem[(32 * _2139) + (32 * stor2[address(arg1)].field_0) + _1690 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                _2491 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                mem[(32 * _2139) + (32 * stor2[address(arg1)].field_0) + _1690 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                mem[_1690 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2139) + (32 * stor2[address(arg1)].field_0) + 256
                mem[(32 * _2491) + (32 * _2139) + (32 * stor2[address(arg1)].field_0) + _1690 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                _2742 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(32 * _2491) + (32 * _2139) + (32 * stor2[address(arg1)].field_0) + _1690 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                mem[_1690 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2491) + (32 * _2139) + (32 * stor2[address(arg1)].field_0) + 288
                mem[(32 * _2742) + (32 * _2491) + (32 * _2139) + (32 * stor2[address(arg1)].field_0) + _1690 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                _2892 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(32 * _2742) + (32 * _2491) + (32 * _2139) + (32 * stor2[address(arg1)].field_0) + _1690 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                return memory
                  from mem[64]
                   len (32 * _2892) + (32 * _2742) + (32 * _2491) + (32 * _2139) + (32 * stor2[address(arg1)].field_0) + _1690 + -mem[64] + 320
            mem[(98 * stor2[address(arg1)].field_0) + 224 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
            idx = 0
            while idx < stor2[address(arg1)].field_0:
                require idx < stor2[address(arg1)].field_0
                require ext_code.size(stor0)
                call stor0.unitsOwned(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[96]
                mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
                require idx < stor2[address(arg1)].field_0
                mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                require ext_code.size(stor0)
                call stor0.0xcdddceb with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
                require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
                mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
                require idx < stor2[address(arg1)].field_0
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                require ext_code.size(stor1)
                call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
                mem[0] = arg1
                mem[32] = 2
                idx = idx + 1
                continue 
            mem[0] = arg1
            mem[32] = 2
            _767 = mem[64]
            mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
            mem[_767] = stor2[address(arg1)].field_0
            if not stor2[address(arg1)].field_0:
                _878 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = stor2[address(arg1)].field_0
                mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_767 + 32 len floor32(stor2[address(arg1)].field_0)]
                mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                _1455 = mem[96]
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                mem[(32 * _1455) + (32 * stor2[address(arg1)].field_0) + _878 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                _1694 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                mem[(32 * _1455) + (32 * stor2[address(arg1)].field_0) + _878 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                mem[_878 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1455) + (32 * stor2[address(arg1)].field_0) + 256
                mem[(32 * _1694) + (32 * _1455) + (32 * stor2[address(arg1)].field_0) + _878 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                _2142 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(32 * _1694) + (32 * _1455) + (32 * stor2[address(arg1)].field_0) + _878 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                mem[_878 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1694) + (32 * _1455) + (32 * stor2[address(arg1)].field_0) + 288
                mem[(32 * _2142) + (32 * _1694) + (32 * _1455) + (32 * stor2[address(arg1)].field_0) + _878 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                _2494 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(32 * _2142) + (32 * _1694) + (32 * _1455) + (32 * stor2[address(arg1)].field_0) + _878 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                return memory
                  from mem[64]
                   len (32 * _2494) + (32 * _2142) + (32 * _1694) + (32 * _1455) + (32 * stor2[address(arg1)].field_0) + _878 + -mem[64] + 320
            mem[0] = sha3(address(arg1), 2)
            mem[_767 + 32] = stor2[address(arg1)].field_0
            idx = _767 + 32
            s = 0
            while _767 + (32 * stor2[address(arg1)].field_0) > idx:
                mem[idx + 32] = stor2[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _1696 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = stor2[address(arg1)].field_0
            mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_767 + 32 len floor32(stor2[address(arg1)].field_0)]
            mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
            _2145 = mem[96]
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
            mem[(32 * _2145) + (32 * stor2[address(arg1)].field_0) + _1696 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
            _2497 = mem[(32 * stor2[address(arg1)].field_0) + 128]
            mem[(32 * _2145) + (32 * stor2[address(arg1)].field_0) + _1696 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
            mem[_1696 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2145) + (32 * stor2[address(arg1)].field_0) + 256
            mem[(32 * _2497) + (32 * _2145) + (32 * stor2[address(arg1)].field_0) + _1696 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
            _2747 = mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(32 * _2497) + (32 * _2145) + (32 * stor2[address(arg1)].field_0) + _1696 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
            mem[_1696 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2497) + (32 * _2145) + (32 * stor2[address(arg1)].field_0) + 288
            mem[(32 * _2747) + (32 * _2497) + (32 * _2145) + (32 * stor2[address(arg1)].field_0) + _1696 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
            _2895 = mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(32 * _2747) + (32 * _2497) + (32 * _2145) + (32 * stor2[address(arg1)].field_0) + _1696 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
            return memory
              from mem[64]
               len (32 * _2895) + (32 * _2747) + (32 * _2497) + (32 * _2145) + (32 * stor2[address(arg1)].field_0) + _1696 + -mem[64] + 320
        mem[(64 * stor2[address(arg1)].field_0) + 192 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
        mem[(98 * stor2[address(arg1)].field_0) + 192] = stor2[address(arg1)].field_0
        mem[64] = (131 * stor2[address(arg1)].field_0) + 224
        if not stor2[address(arg1)].field_0:
            idx = 0
            while idx < stor2[address(arg1)].field_0:
                require idx < stor2[address(arg1)].field_0
                require ext_code.size(stor0)
                call stor0.unitsOwned(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[96]
                mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
                require idx < stor2[address(arg1)].field_0
                mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                require ext_code.size(stor0)
                call stor0.0xcdddceb with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
                require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
                mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
                require idx < stor2[address(arg1)].field_0
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                require ext_code.size(stor1)
                call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
                mem[0] = arg1
                mem[32] = 2
                idx = idx + 1
                continue 
            mem[0] = arg1
            mem[32] = 2
            _770 = mem[64]
            mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
            mem[_770] = stor2[address(arg1)].field_0
            if not stor2[address(arg1)].field_0:
                _881 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = stor2[address(arg1)].field_0
                mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_770 + 32 len floor32(stor2[address(arg1)].field_0)]
                mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                _1458 = mem[96]
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                mem[(32 * _1458) + (32 * stor2[address(arg1)].field_0) + _881 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                _1700 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                mem[(32 * _1458) + (32 * stor2[address(arg1)].field_0) + _881 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                mem[_881 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1458) + (32 * stor2[address(arg1)].field_0) + 256
                mem[(32 * _1700) + (32 * _1458) + (32 * stor2[address(arg1)].field_0) + _881 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                _2148 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(32 * _1700) + (32 * _1458) + (32 * stor2[address(arg1)].field_0) + _881 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                mem[_881 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1700) + (32 * _1458) + (32 * stor2[address(arg1)].field_0) + 288
                mem[(32 * _2148) + (32 * _1700) + (32 * _1458) + (32 * stor2[address(arg1)].field_0) + _881 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                _2500 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(32 * _2148) + (32 * _1700) + (32 * _1458) + (32 * stor2[address(arg1)].field_0) + _881 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                return memory
                  from mem[64]
                   len (32 * _2500) + (32 * _2148) + (32 * _1700) + (32 * _1458) + (32 * stor2[address(arg1)].field_0) + _881 + -mem[64] + 320
            mem[0] = sha3(address(arg1), 2)
            mem[_770 + 32] = stor2[address(arg1)].field_0
            idx = _770 + 32
            s = 0
            while _770 + (32 * stor2[address(arg1)].field_0) > idx:
                mem[idx + 32] = stor2[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _1702 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = stor2[address(arg1)].field_0
            mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_770 + 32 len floor32(stor2[address(arg1)].field_0)]
            mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
            _2151 = mem[96]
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
            mem[(32 * _2151) + (32 * stor2[address(arg1)].field_0) + _1702 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
            _2503 = mem[(32 * stor2[address(arg1)].field_0) + 128]
            mem[(32 * _2151) + (32 * stor2[address(arg1)].field_0) + _1702 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
            mem[_1702 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2151) + (32 * stor2[address(arg1)].field_0) + 256
            mem[(32 * _2503) + (32 * _2151) + (32 * stor2[address(arg1)].field_0) + _1702 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
            _2752 = mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(32 * _2503) + (32 * _2151) + (32 * stor2[address(arg1)].field_0) + _1702 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
            mem[_1702 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2503) + (32 * _2151) + (32 * stor2[address(arg1)].field_0) + 288
            mem[(32 * _2752) + (32 * _2503) + (32 * _2151) + (32 * stor2[address(arg1)].field_0) + _1702 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
            _2898 = mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(32 * _2752) + (32 * _2503) + (32 * _2151) + (32 * stor2[address(arg1)].field_0) + _1702 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
            return memory
              from mem[64]
               len (32 * _2898) + (32 * _2752) + (32 * _2503) + (32 * _2151) + (32 * stor2[address(arg1)].field_0) + _1702 + -mem[64] + 320
        mem[(98 * stor2[address(arg1)].field_0) + 224 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
        idx = 0
        while idx < stor2[address(arg1)].field_0:
            require idx < stor2[address(arg1)].field_0
            require ext_code.size(stor0)
            call stor0.unitsOwned(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), stor2[address(arg1)][idx].field_0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[96]
            mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
            require idx < stor2[address(arg1)].field_0
            mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
            require ext_code.size(stor0)
            call stor0.0xcdddceb with:
                 gas gas_remaining wei
                args address(arg1), stor2[address(arg1)][idx].field_0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
            require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
            mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
            require idx < stor2[address(arg1)].field_0
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
            require ext_code.size(stor1)
            call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), stor2[address(arg1)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 2
        _773 = mem[64]
        mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
        mem[_773] = stor2[address(arg1)].field_0
        if not stor2[address(arg1)].field_0:
            _884 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = stor2[address(arg1)].field_0
            mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_773 + 32 len floor32(stor2[address(arg1)].field_0)]
            mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
            _1461 = mem[96]
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
            mem[(32 * _1461) + (32 * stor2[address(arg1)].field_0) + _884 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
            _1706 = mem[(32 * stor2[address(arg1)].field_0) + 128]
            mem[(32 * _1461) + (32 * stor2[address(arg1)].field_0) + _884 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
            mem[_884 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1461) + (32 * stor2[address(arg1)].field_0) + 256
            mem[(32 * _1706) + (32 * _1461) + (32 * stor2[address(arg1)].field_0) + _884 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
            _2154 = mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(32 * _1706) + (32 * _1461) + (32 * stor2[address(arg1)].field_0) + _884 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
            mem[_884 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1706) + (32 * _1461) + (32 * stor2[address(arg1)].field_0) + 288
            mem[(32 * _2154) + (32 * _1706) + (32 * _1461) + (32 * stor2[address(arg1)].field_0) + _884 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
            _2506 = mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(32 * _2154) + (32 * _1706) + (32 * _1461) + (32 * stor2[address(arg1)].field_0) + _884 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
            return memory
              from mem[64]
               len (32 * _2506) + (32 * _2154) + (32 * _1706) + (32 * _1461) + (32 * stor2[address(arg1)].field_0) + _884 + -mem[64] + 320
        mem[0] = sha3(address(arg1), 2)
        mem[_773 + 32] = stor2[address(arg1)].field_0
        idx = _773 + 32
        s = 0
        while _773 + (32 * stor2[address(arg1)].field_0) > idx:
            mem[idx + 32] = stor2[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _1708 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = stor2[address(arg1)].field_0
        mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_773 + 32 len floor32(stor2[address(arg1)].field_0)]
        mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
        mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
        _2157 = mem[96]
        mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
        mem[(32 * _2157) + (32 * stor2[address(arg1)].field_0) + _1708 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
        _2509 = mem[(32 * stor2[address(arg1)].field_0) + 128]
        mem[(32 * _2157) + (32 * stor2[address(arg1)].field_0) + _1708 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
        mem[_1708 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2157) + (32 * stor2[address(arg1)].field_0) + 256
        mem[(32 * _2509) + (32 * _2157) + (32 * stor2[address(arg1)].field_0) + _1708 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
        _2757 = mem[(64 * stor2[address(arg1)].field_0) + 160]
        mem[(32 * _2509) + (32 * _2157) + (32 * stor2[address(arg1)].field_0) + _1708 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
        mem[_1708 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2509) + (32 * _2157) + (32 * stor2[address(arg1)].field_0) + 288
        mem[(32 * _2757) + (32 * _2509) + (32 * _2157) + (32 * stor2[address(arg1)].field_0) + _1708 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
        _2901 = mem[(98 * stor2[address(arg1)].field_0) + 192]
        mem[(32 * _2757) + (32 * _2509) + (32 * _2157) + (32 * stor2[address(arg1)].field_0) + _1708 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
        return memory
          from mem[64]
           len (32 * _2901) + (32 * _2757) + (32 * _2509) + (32 * _2157) + (32 * stor2[address(arg1)].field_0) + _1708 + -mem[64] + 320
    mem[128 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
    mem[(32 * stor2[address(arg1)].field_0) + 128] = stor2[address(arg1)].field_0
    if not stor2[address(arg1)].field_0:
        mem[(64 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
        if not stor2[address(arg1)].field_0:
            mem[(98 * stor2[address(arg1)].field_0) + 192] = stor2[address(arg1)].field_0
            mem[64] = (131 * stor2[address(arg1)].field_0) + 224
            if not stor2[address(arg1)].field_0:
                idx = 0
                while idx < stor2[address(arg1)].field_0:
                    require idx < stor2[address(arg1)].field_0
                    require ext_code.size(stor0)
                    call stor0.unitsOwned(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor2[address(arg1)][idx].field_0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
                    require idx < stor2[address(arg1)].field_0
                    mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                    require ext_code.size(stor0)
                    call stor0.0xcdddceb with:
                         gas gas_remaining wei
                        args address(arg1), stor2[address(arg1)][idx].field_0
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
                    require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
                    mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
                    mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
                    require idx < stor2[address(arg1)].field_0
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                    require ext_code.size(stor1)
                    call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor2[address(arg1)][idx].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
                    mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
                    mem[0] = arg1
                    mem[32] = 2
                    idx = idx + 1
                    continue 
                mem[0] = arg1
                mem[32] = 2
                _776 = mem[64]
                mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
                mem[_776] = stor2[address(arg1)].field_0
                if not stor2[address(arg1)].field_0:
                    _887 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = stor2[address(arg1)].field_0
                    mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_776 + 32 len floor32(stor2[address(arg1)].field_0)]
                    mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                    mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                    _1464 = mem[96]
                    mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                    mem[(32 * _1464) + (32 * stor2[address(arg1)].field_0) + _887 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                    _1712 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                    mem[(32 * _1464) + (32 * stor2[address(arg1)].field_0) + _887 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                    mem[_887 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1464) + (32 * stor2[address(arg1)].field_0) + 256
                    mem[(32 * _1712) + (32 * _1464) + (32 * stor2[address(arg1)].field_0) + _887 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                    _2160 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                    mem[(32 * _1712) + (32 * _1464) + (32 * stor2[address(arg1)].field_0) + _887 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                    mem[_887 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1712) + (32 * _1464) + (32 * stor2[address(arg1)].field_0) + 288
                    mem[(32 * _2160) + (32 * _1712) + (32 * _1464) + (32 * stor2[address(arg1)].field_0) + _887 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                    _2512 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                    mem[(32 * _2160) + (32 * _1712) + (32 * _1464) + (32 * stor2[address(arg1)].field_0) + _887 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                    return memory
                      from mem[64]
                       len (32 * _2512) + (32 * _2160) + (32 * _1712) + (32 * _1464) + (32 * stor2[address(arg1)].field_0) + _887 + -mem[64] + 320
                mem[0] = sha3(address(arg1), 2)
                mem[_776 + 32] = stor2[address(arg1)].field_0
                idx = _776 + 32
                s = 0
                while _776 + (32 * stor2[address(arg1)].field_0) > idx:
                    mem[idx + 32] = stor2[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1714 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = stor2[address(arg1)].field_0
                mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_776 + 32 len floor32(stor2[address(arg1)].field_0)]
                mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                _2163 = mem[96]
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                mem[(32 * _2163) + (32 * stor2[address(arg1)].field_0) + _1714 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                _2515 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                mem[(32 * _2163) + (32 * stor2[address(arg1)].field_0) + _1714 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                mem[_1714 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2163) + (32 * stor2[address(arg1)].field_0) + 256
                mem[(32 * _2515) + (32 * _2163) + (32 * stor2[address(arg1)].field_0) + _1714 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                _2762 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(32 * _2515) + (32 * _2163) + (32 * stor2[address(arg1)].field_0) + _1714 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                mem[_1714 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2515) + (32 * _2163) + (32 * stor2[address(arg1)].field_0) + 288
                mem[(32 * _2762) + (32 * _2515) + (32 * _2163) + (32 * stor2[address(arg1)].field_0) + _1714 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                _2904 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(32 * _2762) + (32 * _2515) + (32 * _2163) + (32 * stor2[address(arg1)].field_0) + _1714 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                return memory
                  from mem[64]
                   len (32 * _2904) + (32 * _2762) + (32 * _2515) + (32 * _2163) + (32 * stor2[address(arg1)].field_0) + _1714 + -mem[64] + 320
            mem[(98 * stor2[address(arg1)].field_0) + 224 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
            idx = 0
            while idx < stor2[address(arg1)].field_0:
                require idx < stor2[address(arg1)].field_0
                require ext_code.size(stor0)
                call stor0.unitsOwned(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[96]
                mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
                require idx < stor2[address(arg1)].field_0
                mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                require ext_code.size(stor0)
                call stor0.0xcdddceb with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
                require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
                mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
                require idx < stor2[address(arg1)].field_0
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                require ext_code.size(stor1)
                call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
                mem[0] = arg1
                mem[32] = 2
                idx = idx + 1
                continue 
            mem[0] = arg1
            mem[32] = 2
            _779 = mem[64]
            mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
            mem[_779] = stor2[address(arg1)].field_0
            if not stor2[address(arg1)].field_0:
                _890 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = stor2[address(arg1)].field_0
                mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_779 + 32 len floor32(stor2[address(arg1)].field_0)]
                mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                _1467 = mem[96]
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                mem[(32 * _1467) + (32 * stor2[address(arg1)].field_0) + _890 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                _1718 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                mem[(32 * _1467) + (32 * stor2[address(arg1)].field_0) + _890 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                mem[_890 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1467) + (32 * stor2[address(arg1)].field_0) + 256
                mem[(32 * _1718) + (32 * _1467) + (32 * stor2[address(arg1)].field_0) + _890 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                _2166 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(32 * _1718) + (32 * _1467) + (32 * stor2[address(arg1)].field_0) + _890 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                mem[_890 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1718) + (32 * _1467) + (32 * stor2[address(arg1)].field_0) + 288
                mem[(32 * _2166) + (32 * _1718) + (32 * _1467) + (32 * stor2[address(arg1)].field_0) + _890 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                _2518 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(32 * _2166) + (32 * _1718) + (32 * _1467) + (32 * stor2[address(arg1)].field_0) + _890 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                return memory
                  from mem[64]
                   len (32 * _2518) + (32 * _2166) + (32 * _1718) + (32 * _1467) + (32 * stor2[address(arg1)].field_0) + _890 + -mem[64] + 320
            mem[0] = sha3(address(arg1), 2)
            mem[_779 + 32] = stor2[address(arg1)].field_0
            idx = _779 + 32
            s = 0
            while _779 + (32 * stor2[address(arg1)].field_0) > idx:
                mem[idx + 32] = stor2[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _1720 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = stor2[address(arg1)].field_0
            mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_779 + 32 len floor32(stor2[address(arg1)].field_0)]
            mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
            _2169 = mem[96]
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
            mem[(32 * _2169) + (32 * stor2[address(arg1)].field_0) + _1720 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
            _2521 = mem[(32 * stor2[address(arg1)].field_0) + 128]
            mem[(32 * _2169) + (32 * stor2[address(arg1)].field_0) + _1720 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
            mem[_1720 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2169) + (32 * stor2[address(arg1)].field_0) + 256
            mem[(32 * _2521) + (32 * _2169) + (32 * stor2[address(arg1)].field_0) + _1720 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
            _2767 = mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(32 * _2521) + (32 * _2169) + (32 * stor2[address(arg1)].field_0) + _1720 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
            mem[_1720 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2521) + (32 * _2169) + (32 * stor2[address(arg1)].field_0) + 288
            mem[(32 * _2767) + (32 * _2521) + (32 * _2169) + (32 * stor2[address(arg1)].field_0) + _1720 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
            _2907 = mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(32 * _2767) + (32 * _2521) + (32 * _2169) + (32 * stor2[address(arg1)].field_0) + _1720 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
            return memory
              from mem[64]
               len (32 * _2907) + (32 * _2767) + (32 * _2521) + (32 * _2169) + (32 * stor2[address(arg1)].field_0) + _1720 + -mem[64] + 320
        mem[(64 * stor2[address(arg1)].field_0) + 192 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
        mem[(98 * stor2[address(arg1)].field_0) + 192] = stor2[address(arg1)].field_0
        mem[64] = (131 * stor2[address(arg1)].field_0) + 224
        if not stor2[address(arg1)].field_0:
            idx = 0
            while idx < stor2[address(arg1)].field_0:
                require idx < stor2[address(arg1)].field_0
                require ext_code.size(stor0)
                call stor0.unitsOwned(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[96]
                mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
                require idx < stor2[address(arg1)].field_0
                mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                require ext_code.size(stor0)
                call stor0.0xcdddceb with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
                require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
                mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
                require idx < stor2[address(arg1)].field_0
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                require ext_code.size(stor1)
                call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
                mem[0] = arg1
                mem[32] = 2
                idx = idx + 1
                continue 
            mem[0] = arg1
            mem[32] = 2
            _782 = mem[64]
            mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
            mem[_782] = stor2[address(arg1)].field_0
            if not stor2[address(arg1)].field_0:
                _893 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = stor2[address(arg1)].field_0
                mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_782 + 32 len floor32(stor2[address(arg1)].field_0)]
                mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                _1470 = mem[96]
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                mem[(32 * _1470) + (32 * stor2[address(arg1)].field_0) + _893 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                _1724 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                mem[(32 * _1470) + (32 * stor2[address(arg1)].field_0) + _893 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                mem[_893 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1470) + (32 * stor2[address(arg1)].field_0) + 256
                mem[(32 * _1724) + (32 * _1470) + (32 * stor2[address(arg1)].field_0) + _893 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                _2172 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(32 * _1724) + (32 * _1470) + (32 * stor2[address(arg1)].field_0) + _893 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                mem[_893 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1724) + (32 * _1470) + (32 * stor2[address(arg1)].field_0) + 288
                mem[(32 * _2172) + (32 * _1724) + (32 * _1470) + (32 * stor2[address(arg1)].field_0) + _893 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                _2524 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(32 * _2172) + (32 * _1724) + (32 * _1470) + (32 * stor2[address(arg1)].field_0) + _893 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                return memory
                  from mem[64]
                   len (32 * _2524) + (32 * _2172) + (32 * _1724) + (32 * _1470) + (32 * stor2[address(arg1)].field_0) + _893 + -mem[64] + 320
            mem[0] = sha3(address(arg1), 2)
            mem[_782 + 32] = stor2[address(arg1)].field_0
            idx = _782 + 32
            s = 0
            while _782 + (32 * stor2[address(arg1)].field_0) > idx:
                mem[idx + 32] = stor2[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _1726 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = stor2[address(arg1)].field_0
            mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_782 + 32 len floor32(stor2[address(arg1)].field_0)]
            mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
            _2175 = mem[96]
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
            mem[(32 * _2175) + (32 * stor2[address(arg1)].field_0) + _1726 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
            _2527 = mem[(32 * stor2[address(arg1)].field_0) + 128]
            mem[(32 * _2175) + (32 * stor2[address(arg1)].field_0) + _1726 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
            mem[_1726 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2175) + (32 * stor2[address(arg1)].field_0) + 256
            mem[(32 * _2527) + (32 * _2175) + (32 * stor2[address(arg1)].field_0) + _1726 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
            _2772 = mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(32 * _2527) + (32 * _2175) + (32 * stor2[address(arg1)].field_0) + _1726 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
            mem[_1726 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2527) + (32 * _2175) + (32 * stor2[address(arg1)].field_0) + 288
            mem[(32 * _2772) + (32 * _2527) + (32 * _2175) + (32 * stor2[address(arg1)].field_0) + _1726 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
            _2910 = mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(32 * _2772) + (32 * _2527) + (32 * _2175) + (32 * stor2[address(arg1)].field_0) + _1726 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
            return memory
              from mem[64]
               len (32 * _2910) + (32 * _2772) + (32 * _2527) + (32 * _2175) + (32 * stor2[address(arg1)].field_0) + _1726 + -mem[64] + 320
        mem[(98 * stor2[address(arg1)].field_0) + 224 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
        idx = 0
        while idx < stor2[address(arg1)].field_0:
            require idx < stor2[address(arg1)].field_0
            require ext_code.size(stor0)
            call stor0.unitsOwned(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), stor2[address(arg1)][idx].field_0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[96]
            mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
            require idx < stor2[address(arg1)].field_0
            mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
            require ext_code.size(stor0)
            call stor0.0xcdddceb with:
                 gas gas_remaining wei
                args address(arg1), stor2[address(arg1)][idx].field_0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
            require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
            mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
            require idx < stor2[address(arg1)].field_0
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
            require ext_code.size(stor1)
            call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), stor2[address(arg1)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 2
        _785 = mem[64]
        mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
        mem[_785] = stor2[address(arg1)].field_0
        if not stor2[address(arg1)].field_0:
            _896 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = stor2[address(arg1)].field_0
            mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_785 + 32 len floor32(stor2[address(arg1)].field_0)]
            mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
            _1473 = mem[96]
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
            mem[(32 * _1473) + (32 * stor2[address(arg1)].field_0) + _896 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
            _1730 = mem[(32 * stor2[address(arg1)].field_0) + 128]
            mem[(32 * _1473) + (32 * stor2[address(arg1)].field_0) + _896 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
            mem[_896 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1473) + (32 * stor2[address(arg1)].field_0) + 256
            mem[(32 * _1730) + (32 * _1473) + (32 * stor2[address(arg1)].field_0) + _896 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
            _2178 = mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(32 * _1730) + (32 * _1473) + (32 * stor2[address(arg1)].field_0) + _896 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
            mem[_896 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1730) + (32 * _1473) + (32 * stor2[address(arg1)].field_0) + 288
            mem[(32 * _2178) + (32 * _1730) + (32 * _1473) + (32 * stor2[address(arg1)].field_0) + _896 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
            _2530 = mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(32 * _2178) + (32 * _1730) + (32 * _1473) + (32 * stor2[address(arg1)].field_0) + _896 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
            return memory
              from mem[64]
               len (32 * _2530) + (32 * _2178) + (32 * _1730) + (32 * _1473) + (32 * stor2[address(arg1)].field_0) + _896 + -mem[64] + 320
        mem[0] = sha3(address(arg1), 2)
        mem[_785 + 32] = stor2[address(arg1)].field_0
        idx = _785 + 32
        s = 0
        while _785 + (32 * stor2[address(arg1)].field_0) > idx:
            mem[idx + 32] = stor2[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _1732 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = stor2[address(arg1)].field_0
        mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_785 + 32 len floor32(stor2[address(arg1)].field_0)]
        mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
        mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
        _2181 = mem[96]
        mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
        mem[(32 * _2181) + (32 * stor2[address(arg1)].field_0) + _1732 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
        _2533 = mem[(32 * stor2[address(arg1)].field_0) + 128]
        mem[(32 * _2181) + (32 * stor2[address(arg1)].field_0) + _1732 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
        mem[_1732 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2181) + (32 * stor2[address(arg1)].field_0) + 256
        mem[(32 * _2533) + (32 * _2181) + (32 * stor2[address(arg1)].field_0) + _1732 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
        _2777 = mem[(64 * stor2[address(arg1)].field_0) + 160]
        mem[(32 * _2533) + (32 * _2181) + (32 * stor2[address(arg1)].field_0) + _1732 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
        mem[_1732 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2533) + (32 * _2181) + (32 * stor2[address(arg1)].field_0) + 288
        mem[(32 * _2777) + (32 * _2533) + (32 * _2181) + (32 * stor2[address(arg1)].field_0) + _1732 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
        _2913 = mem[(98 * stor2[address(arg1)].field_0) + 192]
        mem[(32 * _2777) + (32 * _2533) + (32 * _2181) + (32 * stor2[address(arg1)].field_0) + _1732 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
        return memory
          from mem[64]
           len (32 * _2913) + (32 * _2777) + (32 * _2533) + (32 * _2181) + (32 * stor2[address(arg1)].field_0) + _1732 + -mem[64] + 320
    mem[(32 * stor2[address(arg1)].field_0) + 160 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
    mem[(64 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
    if not stor2[address(arg1)].field_0:
        mem[(98 * stor2[address(arg1)].field_0) + 192] = stor2[address(arg1)].field_0
        mem[64] = (131 * stor2[address(arg1)].field_0) + 224
        if not stor2[address(arg1)].field_0:
            idx = 0
            while idx < stor2[address(arg1)].field_0:
                require idx < stor2[address(arg1)].field_0
                require ext_code.size(stor0)
                call stor0.unitsOwned(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[96]
                mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
                require idx < stor2[address(arg1)].field_0
                mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                require ext_code.size(stor0)
                call stor0.0xcdddceb with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
                require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
                mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
                require idx < stor2[address(arg1)].field_0
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
                require ext_code.size(stor1)
                call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor2[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
                mem[0] = arg1
                mem[32] = 2
                idx = idx + 1
                continue 
            mem[0] = arg1
            mem[32] = 2
            _788 = mem[64]
            mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
            mem[_788] = stor2[address(arg1)].field_0
            if not stor2[address(arg1)].field_0:
                _899 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = stor2[address(arg1)].field_0
                mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_788 + 32 len floor32(stor2[address(arg1)].field_0)]
                mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
                _1476 = mem[96]
                mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
                mem[(32 * _1476) + (32 * stor2[address(arg1)].field_0) + _899 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
                _1736 = mem[(32 * stor2[address(arg1)].field_0) + 128]
                mem[(32 * _1476) + (32 * stor2[address(arg1)].field_0) + _899 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
                mem[_899 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1476) + (32 * stor2[address(arg1)].field_0) + 256
                mem[(32 * _1736) + (32 * _1476) + (32 * stor2[address(arg1)].field_0) + _899 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
                _2184 = mem[(64 * stor2[address(arg1)].field_0) + 160]
                mem[(32 * _1736) + (32 * _1476) + (32 * stor2[address(arg1)].field_0) + _899 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
                mem[_899 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1736) + (32 * _1476) + (32 * stor2[address(arg1)].field_0) + 288
                mem[(32 * _2184) + (32 * _1736) + (32 * _1476) + (32 * stor2[address(arg1)].field_0) + _899 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
                _2536 = mem[(98 * stor2[address(arg1)].field_0) + 192]
                mem[(32 * _2184) + (32 * _1736) + (32 * _1476) + (32 * stor2[address(arg1)].field_0) + _899 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
                return memory
                  from mem[64]
                   len (32 * _2536) + (32 * _2184) + (32 * _1736) + (32 * _1476) + (32 * stor2[address(arg1)].field_0) + _899 + -mem[64] + 320
            mem[0] = sha3(address(arg1), 2)
            mem[_788 + 32] = stor2[address(arg1)].field_0
            idx = _788 + 32
            s = 0
            while _788 + (32 * stor2[address(arg1)].field_0) > idx:
                mem[idx + 32] = stor2[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _1738 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = stor2[address(arg1)].field_0
            mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_788 + 32 len floor32(stor2[address(arg1)].field_0)]
            mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
            _2187 = mem[96]
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
            mem[(32 * _2187) + (32 * stor2[address(arg1)].field_0) + _1738 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
            _2539 = mem[(32 * stor2[address(arg1)].field_0) + 128]
            mem[(32 * _2187) + (32 * stor2[address(arg1)].field_0) + _1738 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
            mem[_1738 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2187) + (32 * stor2[address(arg1)].field_0) + 256
            mem[(32 * _2539) + (32 * _2187) + (32 * stor2[address(arg1)].field_0) + _1738 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
            _2782 = mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(32 * _2539) + (32 * _2187) + (32 * stor2[address(arg1)].field_0) + _1738 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
            mem[_1738 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2539) + (32 * _2187) + (32 * stor2[address(arg1)].field_0) + 288
            mem[(32 * _2782) + (32 * _2539) + (32 * _2187) + (32 * stor2[address(arg1)].field_0) + _1738 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
            _2916 = mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(32 * _2782) + (32 * _2539) + (32 * _2187) + (32 * stor2[address(arg1)].field_0) + _1738 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
            return memory
              from mem[64]
               len (32 * _2916) + (32 * _2782) + (32 * _2539) + (32 * _2187) + (32 * stor2[address(arg1)].field_0) + _1738 + -mem[64] + 320
        mem[(98 * stor2[address(arg1)].field_0) + 224 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
        idx = 0
        while idx < stor2[address(arg1)].field_0:
            require idx < stor2[address(arg1)].field_0
            require ext_code.size(stor0)
            call stor0.unitsOwned(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), stor2[address(arg1)][idx].field_0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[96]
            mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
            require idx < stor2[address(arg1)].field_0
            mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
            require ext_code.size(stor0)
            call stor0.0xcdddceb with:
                 gas gas_remaining wei
                args address(arg1), stor2[address(arg1)][idx].field_0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
            require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
            mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
            require idx < stor2[address(arg1)].field_0
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
            require ext_code.size(stor1)
            call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), stor2[address(arg1)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 2
        _791 = mem[64]
        mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
        mem[_791] = stor2[address(arg1)].field_0
        if not stor2[address(arg1)].field_0:
            _902 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = stor2[address(arg1)].field_0
            mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_791 + 32 len floor32(stor2[address(arg1)].field_0)]
            mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
            _1479 = mem[96]
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
            mem[(32 * _1479) + (32 * stor2[address(arg1)].field_0) + _902 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
            _1742 = mem[(32 * stor2[address(arg1)].field_0) + 128]
            mem[(32 * _1479) + (32 * stor2[address(arg1)].field_0) + _902 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
            mem[_902 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1479) + (32 * stor2[address(arg1)].field_0) + 256
            mem[(32 * _1742) + (32 * _1479) + (32 * stor2[address(arg1)].field_0) + _902 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
            _2190 = mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(32 * _1742) + (32 * _1479) + (32 * stor2[address(arg1)].field_0) + _902 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
            mem[_902 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1742) + (32 * _1479) + (32 * stor2[address(arg1)].field_0) + 288
            mem[(32 * _2190) + (32 * _1742) + (32 * _1479) + (32 * stor2[address(arg1)].field_0) + _902 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
            _2542 = mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(32 * _2190) + (32 * _1742) + (32 * _1479) + (32 * stor2[address(arg1)].field_0) + _902 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
            return memory
              from mem[64]
               len (32 * _2542) + (32 * _2190) + (32 * _1742) + (32 * _1479) + (32 * stor2[address(arg1)].field_0) + _902 + -mem[64] + 320
        mem[0] = sha3(address(arg1), 2)
        mem[_791 + 32] = stor2[address(arg1)].field_0
        idx = _791 + 32
        s = 0
        while _791 + (32 * stor2[address(arg1)].field_0) > idx:
            mem[idx + 32] = stor2[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _1744 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = stor2[address(arg1)].field_0
        mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_791 + 32 len floor32(stor2[address(arg1)].field_0)]
        mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
        mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
        _2193 = mem[96]
        mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
        mem[(32 * _2193) + (32 * stor2[address(arg1)].field_0) + _1744 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
        _2545 = mem[(32 * stor2[address(arg1)].field_0) + 128]
        mem[(32 * _2193) + (32 * stor2[address(arg1)].field_0) + _1744 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
        mem[_1744 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2193) + (32 * stor2[address(arg1)].field_0) + 256
        mem[(32 * _2545) + (32 * _2193) + (32 * stor2[address(arg1)].field_0) + _1744 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
        _2787 = mem[(64 * stor2[address(arg1)].field_0) + 160]
        mem[(32 * _2545) + (32 * _2193) + (32 * stor2[address(arg1)].field_0) + _1744 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
        mem[_1744 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2545) + (32 * _2193) + (32 * stor2[address(arg1)].field_0) + 288
        mem[(32 * _2787) + (32 * _2545) + (32 * _2193) + (32 * stor2[address(arg1)].field_0) + _1744 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
        _2919 = mem[(98 * stor2[address(arg1)].field_0) + 192]
        mem[(32 * _2787) + (32 * _2545) + (32 * _2193) + (32 * stor2[address(arg1)].field_0) + _1744 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
        return memory
          from mem[64]
           len (32 * _2919) + (32 * _2787) + (32 * _2545) + (32 * _2193) + (32 * stor2[address(arg1)].field_0) + _1744 + -mem[64] + 320
    mem[(64 * stor2[address(arg1)].field_0) + 192 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
    mem[(98 * stor2[address(arg1)].field_0) + 192] = stor2[address(arg1)].field_0
    mem[64] = (131 * stor2[address(arg1)].field_0) + 224
    if not stor2[address(arg1)].field_0:
        idx = 0
        while idx < stor2[address(arg1)].field_0:
            require idx < stor2[address(arg1)].field_0
            require ext_code.size(stor0)
            call stor0.unitsOwned(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), stor2[address(arg1)][idx].field_0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[96]
            mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
            require idx < stor2[address(arg1)].field_0
            mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
            require ext_code.size(stor0)
            call stor0.0xcdddceb with:
                 gas gas_remaining wei
                args address(arg1), stor2[address(arg1)][idx].field_0
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
            require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
            mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
            require idx < stor2[address(arg1)].field_0
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
            require ext_code.size(stor1)
            call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), stor2[address(arg1)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 2
        _794 = mem[64]
        mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
        mem[_794] = stor2[address(arg1)].field_0
        if not stor2[address(arg1)].field_0:
            _905 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = stor2[address(arg1)].field_0
            mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_794 + 32 len floor32(stor2[address(arg1)].field_0)]
            mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
            _1482 = mem[96]
            mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
            mem[(32 * _1482) + (32 * stor2[address(arg1)].field_0) + _905 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
            _1748 = mem[(32 * stor2[address(arg1)].field_0) + 128]
            mem[(32 * _1482) + (32 * stor2[address(arg1)].field_0) + _905 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
            mem[_905 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1482) + (32 * stor2[address(arg1)].field_0) + 256
            mem[(32 * _1748) + (32 * _1482) + (32 * stor2[address(arg1)].field_0) + _905 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
            _2196 = mem[(64 * stor2[address(arg1)].field_0) + 160]
            mem[(32 * _1748) + (32 * _1482) + (32 * stor2[address(arg1)].field_0) + _905 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
            mem[_905 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1748) + (32 * _1482) + (32 * stor2[address(arg1)].field_0) + 288
            mem[(32 * _2196) + (32 * _1748) + (32 * _1482) + (32 * stor2[address(arg1)].field_0) + _905 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
            _2548 = mem[(98 * stor2[address(arg1)].field_0) + 192]
            mem[(32 * _2196) + (32 * _1748) + (32 * _1482) + (32 * stor2[address(arg1)].field_0) + _905 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
            return memory
              from mem[64]
               len (32 * _2548) + (32 * _2196) + (32 * _1748) + (32 * _1482) + (32 * stor2[address(arg1)].field_0) + _905 + -mem[64] + 320
        mem[0] = sha3(address(arg1), 2)
        mem[_794 + 32] = stor2[address(arg1)].field_0
        idx = _794 + 32
        s = 0
        while _794 + (32 * stor2[address(arg1)].field_0) > idx:
            mem[idx + 32] = stor2[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _1750 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = stor2[address(arg1)].field_0
        mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_794 + 32 len floor32(stor2[address(arg1)].field_0)]
        mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
        mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
        _2199 = mem[96]
        mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
        mem[(32 * _2199) + (32 * stor2[address(arg1)].field_0) + _1750 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
        _2551 = mem[(32 * stor2[address(arg1)].field_0) + 128]
        mem[(32 * _2199) + (32 * stor2[address(arg1)].field_0) + _1750 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
        mem[_1750 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2199) + (32 * stor2[address(arg1)].field_0) + 256
        mem[(32 * _2551) + (32 * _2199) + (32 * stor2[address(arg1)].field_0) + _1750 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
        _2792 = mem[(64 * stor2[address(arg1)].field_0) + 160]
        mem[(32 * _2551) + (32 * _2199) + (32 * stor2[address(arg1)].field_0) + _1750 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
        mem[_1750 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2551) + (32 * _2199) + (32 * stor2[address(arg1)].field_0) + 288
        mem[(32 * _2792) + (32 * _2551) + (32 * _2199) + (32 * stor2[address(arg1)].field_0) + _1750 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
        _2922 = mem[(98 * stor2[address(arg1)].field_0) + 192]
        mem[(32 * _2792) + (32 * _2551) + (32 * _2199) + (32 * stor2[address(arg1)].field_0) + _1750 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
        return memory
          from mem[64]
           len (32 * _2922) + (32 * _2792) + (32 * _2551) + (32 * _2199) + (32 * stor2[address(arg1)].field_0) + _1750 + -mem[64] + 320
    mem[(98 * stor2[address(arg1)].field_0) + 224 len 32 * stor2[address(arg1)].field_0] = code.data[4586 len 32 * stor2[address(arg1)].field_0]
    idx = 0
    while idx < stor2[address(arg1)].field_0:
        require idx < stor2[address(arg1)].field_0
        require ext_code.size(stor0)
        call stor0.unitsOwned(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor2[address(arg1)][idx].field_0
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require idx < mem[96]
        mem[(32 * idx) + 128] = Mask(80, 0, ext_call.return_data[0])
        require idx < stor2[address(arg1)].field_0
        mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
        require ext_code.size(stor0)
        call stor0.0xcdddceb with:
             gas gas_remaining wei
            args address(arg1), stor2[address(arg1)][idx].field_0
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
        require idx < mem[(64 * stor2[address(arg1)].field_0) + 160]
        mem[(64 * stor2[address(arg1)].field_0) + (32 * idx) + 192] = uint32(ext_call.return_data[32])
        mem[(32 * idx) + (32 * stor2[address(arg1)].field_0) + 160] = Mask(224, 0, ext_call.return_data[0])
        require idx < stor2[address(arg1)].field_0
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = stor2[address(arg1)][idx].field_0
        require ext_code.size(stor1)
        call stor1.getEquippedItemId(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor2[address(arg1)][idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(98 * stor2[address(arg1)].field_0) + 192]
        mem[(98 * stor2[address(arg1)].field_0) + (32 * idx) + 224] = ext_call.return_data[0]
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        continue 
    mem[0] = arg1
    mem[32] = 2
    _797 = mem[64]
    mem[64] = mem[64] + (32 * stor2[address(arg1)].field_0) + 32
    mem[_797] = stor2[address(arg1)].field_0
    if not stor2[address(arg1)].field_0:
        _908 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = stor2[address(arg1)].field_0
        mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_797 + 32 len floor32(stor2[address(arg1)].field_0)]
        mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
        mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
        _1485 = mem[96]
        mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
        mem[(32 * _1485) + (32 * stor2[address(arg1)].field_0) + _908 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
        _1754 = mem[(32 * stor2[address(arg1)].field_0) + 128]
        mem[(32 * _1485) + (32 * stor2[address(arg1)].field_0) + _908 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
        mem[_908 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _1485) + (32 * stor2[address(arg1)].field_0) + 256
        mem[(32 * _1754) + (32 * _1485) + (32 * stor2[address(arg1)].field_0) + _908 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
        _2202 = mem[(64 * stor2[address(arg1)].field_0) + 160]
        mem[(32 * _1754) + (32 * _1485) + (32 * stor2[address(arg1)].field_0) + _908 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
        mem[_908 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _1754) + (32 * _1485) + (32 * stor2[address(arg1)].field_0) + 288
        mem[(32 * _2202) + (32 * _1754) + (32 * _1485) + (32 * stor2[address(arg1)].field_0) + _908 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
        _2554 = mem[(98 * stor2[address(arg1)].field_0) + 192]
        mem[(32 * _2202) + (32 * _1754) + (32 * _1485) + (32 * stor2[address(arg1)].field_0) + _908 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
        return memory
          from mem[64]
           len (32 * _2554) + (32 * _2202) + (32 * _1754) + (32 * _1485) + (32 * stor2[address(arg1)].field_0) + _908 + -mem[64] + 320
    mem[0] = sha3(address(arg1), 2)
    mem[_797 + 32] = stor2[address(arg1)].field_0
    idx = _797 + 32
    s = 0
    while _797 + (32 * stor2[address(arg1)].field_0) > idx:
        mem[idx + 32] = stor2[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _1756 = mem[64]
    mem[mem[64]] = 160
    mem[mem[64] + 160] = stor2[address(arg1)].field_0
    mem[mem[64] + 192 len floor32(stor2[address(arg1)].field_0)] = mem[_797 + 32 len floor32(stor2[address(arg1)].field_0)]
    mem[mem[64] + 32] = (32 * stor2[address(arg1)].field_0) + 192
    mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 192] = mem[96]
    _2205 = mem[96]
    mem[(32 * stor2[address(arg1)].field_0) + mem[64] + 224 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 64] = (32 * mem[96]) + (32 * stor2[address(arg1)].field_0) + 224
    mem[(32 * _2205) + (32 * stor2[address(arg1)].field_0) + _1756 + 224] = mem[(32 * stor2[address(arg1)].field_0) + 128]
    _2557 = mem[(32 * stor2[address(arg1)].field_0) + 128]
    mem[(32 * _2205) + (32 * stor2[address(arg1)].field_0) + _1756 + 256 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
    mem[_1756 + 96] = (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (32 * _2205) + (32 * stor2[address(arg1)].field_0) + 256
    mem[(32 * _2557) + (32 * _2205) + (32 * stor2[address(arg1)].field_0) + _1756 + 256] = mem[(64 * stor2[address(arg1)].field_0) + 160]
    _2797 = mem[(64 * stor2[address(arg1)].field_0) + 160]
    mem[(32 * _2557) + (32 * _2205) + (32 * stor2[address(arg1)].field_0) + _1756 + 288 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])] = mem[(64 * stor2[address(arg1)].field_0) + 192 len floor32(mem[(64 * stor2[address(arg1)].field_0) + 160])]
    mem[_1756 + 128] = (32 * mem[(64 * stor2[address(arg1)].field_0) + 160]) + (32 * _2557) + (32 * _2205) + (32 * stor2[address(arg1)].field_0) + 288
    mem[(32 * _2797) + (32 * _2557) + (32 * _2205) + (32 * stor2[address(arg1)].field_0) + _1756 + 288] = mem[(98 * stor2[address(arg1)].field_0) + 192]
    _2925 = mem[(98 * stor2[address(arg1)].field_0) + 192]
    mem[(32 * _2797) + (32 * _2557) + (32 * _2205) + (32 * stor2[address(arg1)].field_0) + _1756 + 320 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])] = mem[(98 * stor2[address(arg1)].field_0) + 224 len floor32(mem[(98 * stor2[address(arg1)].field_0) + 192])]
    return memory
      from mem[64]
       len (32 * _2925) + (32 * _2797) + (32 * _2557) + (32 * _2205) + (32 * stor2[address(arg1)].field_0) + _1756 + -mem[64] + 320
}



}
