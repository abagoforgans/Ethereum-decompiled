contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 stor14;

function _fallback() payable {
    stor4 = 10^18
    stor5 = 10^18
    stor6 = 70
    stor7 = 8760 * 24 * 3600
    stor8 = 336 * 24 * 3600
    stor9 = block.timestamp
    stor10 = 10^18
    stor11 = 120 * 24 * 3600
    stor12 = 900
    stor13 = 30
    stor14 = 1
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[113 len 11203]
}



// =====================  Runtime code  =====================


#
#  - getAuctionAtIndex(uint256 arg1)
#  - sub_76e7ae04(?)
#
address stor0;
mapping of struct record;
array of uint256 stor2;
array of struct stor3;
array of address stor4;
array of address stor5;
uint256 VALUE_DISTRIBUTION_KEY_OWNERS;
uint256 sub_c3cecfdc;
uint256 sub_de5c48e0;
uint256 sub_d4de5314;
uint256 sub_a271e525;
uint256 sub_7f61500d;
uint256 sub_052747d6;
uint8 sub_6e18ead3;
mapping of struct stor15;
uint256 numAuctions;
array of uint256 stor17;
array of bool stor87903029871075914254377627908054574944891091886930582284385770809450030037082;

function sub_052747d6(?) payable {
    return sub_052747d6
}

function getTotalRecords() payable {
    return stor2.length
}

function getRecord(string arg1) payable {
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 160] = 1
    mem[ceil32(arg1.length) + 192] = uint256(record[arg1[all]][3].field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + record[arg1[all]][3].length + 160 > idx:
        mem[idx + 32] = uint256(record[arg1[all]][s + 3].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(record[arg1[all]].field_0), 
           uint256(record[arg1[all]].field_256),
           Array(len=record[arg1[all]][3].length, data=mem[ceil32(arg1.length) + 192 len record[arg1[all]][3].length]),
           address(record[arg1[all]].field_1024),
           address(record[arg1[all]].field_1280)
}

function VALUE_DISTRIBUTION_KEY_OWNERS() payable {
    return VALUE_DISTRIBUTION_KEY_OWNERS
}

function getOwner(string arg1) payable {
    return address(record[arg1[all]].field_0)
}

function numAuctions() payable {
    return numAuctions
}

function sub_6e18ead3(?) payable {
    return sub_6e18ead3
}

function sub_7f61500d(?) payable {
    return sub_7f61500d
}

function sub_a271e525(?) payable {
    return sub_a271e525
}

function getTime(string arg1) payable {
    return uint256(record[arg1[all]].field_256)
}

function numRecords() payable {
    return stor2.length
}

function sub_c3cecfdc(?) payable {
    return sub_c3cecfdc
}

function sub_d4de5314(?) payable {
    return sub_d4de5314
}

function REGISTRATION_COST() payable {
    return stor4.length
}

function sub_de5c48e0(?) payable {
    return sub_de5c48e0
}

function TRANSFER_COST() payable {
    return stor5.length
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function withdraw(address arg1, uint256 arg2) payable {
    if msg.sender == stor0:
        call arg1 with:
           value arg2 wei
             gas 0 wei
}

function isRegistered(string arg1) payable {
    if uint256(record[arg1[all]].field_256) != 0:
        if block.timestamp - uint256(record[arg1[all]].field_256) <= sub_c3cecfdc:
            return 1
        else:
            return 0
    else:
        return 0
}

function sub_d3e44a5a(?) payable {
    if uint256(record[arg1[all]].field_256) != 0:
        if block.timestamp - uint256(record[arg1[all]].field_256) <= sub_c3cecfdc:
            return 0
    if address(stor15[arg1[all]].field_0) != 0:
        return uint256(stor15[arg1[all]].field_512)
    return sub_d4de5314
}

function sub_b03205b0(?) payable {
    if msg.sender == address(record[arg1[all]].field_0):
        uint256(record[arg1[all]][3][].field_0) = Array(len=arg2.length, data=arg2[all])
        uint256(record[arg1[all]].field_1024) = arg3 or Mask(96, 160, uint256(record[arg1[all]].field_1024))
        uint256(record[arg1[all]].field_1280) = arg4 or Mask(96, 160, uint256(record[arg1[all]].field_1280))
}

function distributeValue() payable {
    mem[64] = 96
    if msg.value != 0:
        if 0 == VALUE_DISTRIBUTION_KEY_OWNERS:
            call stor0 with:
               value msg.value wei
                 gas 0 wei
        else:
            if -VALUE_DISTRIBUTION_KEY_OWNERS + 100 <= 0:
                idx = 0
                while idx < stor2.length:
                    require idx < stor3.length
                    _21 = mem[64]
                    mem[0] = code.data[11171 len 32] + idx
                    mem[mem[64]] = uint256(stor[sha3(code.data[11171 len 32] + idx)])
                    s = mem[64]
                    t = sha3(mem[0])
                    while _21 + stor[code.data[11171 len 32] + idx].length > s + 32:
                        mem[s + 32] = uint256(record[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_21 + stor[code.data[11171 len 32] + idx].length] = 1
                    call address(stor[sha3(mem[mem[64] len _21 + stor[code.data[11171 len 32] + idx].length + -mem[64] + 32])]) with:
                       value msg.value / stor2.length wei
                         gas 0 wei
                    idx = idx + 1
                    continue 
            else:
                call stor0 with:
                   value (100 * msg.value) - (VALUE_DISTRIBUTION_KEY_OWNERS * msg.value) / 100 wei
                     gas 0 wei
                idx = 0
                while idx < stor2.length:
                    require idx < stor3.length
                    _24 = mem[64]
                    mem[0] = code.data[11171 len 32] + idx
                    mem[mem[64]] = uint256(stor[sha3(code.data[11171 len 32] + idx)])
                    s = mem[64]
                    t = sha3(mem[0])
                    while _24 + stor[code.data[11171 len 32] + idx].length > s + 32:
                        mem[s + 32] = uint256(record[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_24 + stor[code.data[11171 len 32] + idx].length] = 1
                    call address(stor[sha3(mem[mem[64] len _24 + stor[code.data[11171 len 32] + idx].length + -mem[64] + 32])]) with:
                       value msg.value - ((100 * msg.value) - (VALUE_DISTRIBUTION_KEY_OWNERS * msg.value) / 100) / stor2.length wei
                         gas 0 wei
                    idx = idx + 1
                    continue 
}

function transfer(string arg1, address arg2) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if msg.value < stor5.length:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if address(record[arg1[all]].field_0) != msg.sender:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
            mem[ceil32(arg1.length) + arg1.length + 128] = 1
            uint256(record[arg1[all]].field_0) = arg2 or Mask(96, 160, uint256(record[arg1[all]].field_0))
            if msg.value != 0:
                if 0 == VALUE_DISTRIBUTION_KEY_OWNERS:
                    call stor0 with:
                       value msg.value wei
                         gas 0 wei
                else:
                    if -VALUE_DISTRIBUTION_KEY_OWNERS + 100 <= 0:
                        idx = 0
                        while idx < stor2.length:
                            require idx < stor3.length
                            _32 = mem[64]
                            mem[0] = code.data[11171 len 32] + idx
                            mem[mem[64]] = uint256(stor[sha3(code.data[11171 len 32] + idx)])
                            s = mem[64]
                            t = sha3(mem[0])
                            while _32 + stor[code.data[11171 len 32] + idx].length > s + 32:
                                mem[s + 32] = uint256(record[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_32 + stor[code.data[11171 len 32] + idx].length] = 1
                            call address(stor[sha3(mem[mem[64] len _32 + stor[code.data[11171 len 32] + idx].length + -mem[64] + 32])]) with:
                               value msg.value / stor2.length wei
                                 gas 0 wei
                            idx = idx + 1
                            continue 
                    else:
                        call stor0 with:
                           value (100 * msg.value) - (VALUE_DISTRIBUTION_KEY_OWNERS * msg.value) / 100 wei
                             gas 0 wei
                        idx = 0
                        while idx < stor2.length:
                            require idx < stor3.length
                            _35 = mem[64]
                            mem[0] = code.data[11171 len 32] + idx
                            mem[mem[64]] = uint256(stor[sha3(code.data[11171 len 32] + idx)])
                            s = mem[64]
                            t = sha3(mem[0])
                            while _35 + stor[code.data[11171 len 32] + idx].length > s + 32:
                                mem[s + 32] = uint256(record[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_35 + stor[code.data[11171 len 32] + idx].length] = 1
                            call address(stor[sha3(mem[mem[64] len _35 + stor[code.data[11171 len 32] + idx].length + -mem[64] + 32])]) with:
                               value msg.value - ((100 * msg.value) - (VALUE_DISTRIBUTION_KEY_OWNERS * msg.value) / 100) / stor2.length wei
                                 gas 0 wei
                            idx = idx + 1
                            continue 
}

function sub_6598a1ae(?) payable {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == address(record[arg1[all]].field_0):
        mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
        mem[ceil32(arg1.length) + arg1.length + 128] = 1
        address(record[arg1[all]].field_0) = 0
        uint256(record[arg1[all]].field_256) = 0
        uint256(record[arg1[all]].field_512) = 0
        uint256(record[arg1[all]].field_768) = 0
        if 31 < record[arg1[all]][3].length:
            idx = 0
            while record[arg1[all]][3].length + 31 / 32 > idx:
                uint256(record[arg1[all]][idx + 3].field_0) = 0
                idx = idx + 1
                continue 
        address(record[arg1[all]].field_1024) = 0
        address(record[arg1[all]].field_1280) = 0
        stor2.length--
        require stor3.length - 1 < stor3.length
        require uint256(record[arg1[all]].field_512) < stor3.length
        if 31 >= stor[stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a6].length:
            uint256(stor3[uint256(stor1[arg1[all]].field_512)].field_0) = uint256(storC257[stor3.length])
            idx = 0
            while stor3[uint256(stor1[arg1[all]].field_512)].length + 31 / 32 > idx:
                uint256(stor3[uint256(stor1[arg1[all]].field_512) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor3[uint256(stor1[arg1[all]].field_512)].field_0) = Mask(255, 1, (256 * not bool(storC257[stor3.length])) - 1 and uint256(storC257[stor3.length])) + 1
            if not Mask(255, 1, (256 * not bool(storC257[stor3.length])) - 1 and uint256(storC257[stor3.length])):
                idx = 0
                while stor3[uint256(stor1[arg1[all]].field_512)].length + 31 / 32 > idx:
                    uint256(stor3[uint256(stor1[arg1[all]].field_512) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a6].length + 31 / 32 > idx:
                    uint256(stor3[uint256(stor1[arg1[all]].field_512) + s].field_0) = uint256(stor[idx + sha3(stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a6)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a6].length + 31 / 32
                while stor3[uint256(stor1[arg1[all]].field_512)].length + 31 / 32 > idx:
                    uint256(stor3[uint256(stor1[arg1[all]].field_512) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
        require uint256(record[arg1[all]].field_512) < stor3.length
        mem[ceil32(arg1.length) + 128] = uint256(stor3[uint256(stor1[arg1[all]].field_512)].field_0)
        idx = ceil32(arg1.length) + 128
        s = 0
        while ceil32(arg1.length) + stor3[uint256(stor1[arg1[all]].field_512)].length + 128 > idx + 32:
            mem[idx + 32] = uint256(stor3[uint256(stor1[arg1[all]].field_512) + s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + stor3[uint256(stor1[arg1[all]].field_512)].length + 128] = 1
        stor2[sha3(mem[ceil32(arg1.length) + 128 len stor3[uint256(stor1[arg1[all]].field_512)].length + 32])] = uint256(record[arg1[all]].field_512)
        stor3.length--
        if not stor3.length <= stor3.length - 1:
            mem[0] = 3
            idx = stor3.length - 1
            while sha3(3) + stor3.length > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
}

function getRecordAtIndex(uint256 arg1) payable {
    mem[96] = 0
    mem[128] = 0
    require arg1 < stor3.length
    mem[160] = uint256(stor[sha3(arg1 + code.data[11171 len 32])])
    idx = 160
    s = 0
    while stor[arg1 + code.data[11171 len 32]].length + 160 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3(arg1 + code.data[11171 len 32]) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[arg1 + code.data[11171 len 32]].length + 160] = 1
    _428 = sha3(mem[160 len stor[arg1 + code.data[11171 len 32]].length + 32])
    require arg1 < stor3.length
    mem[160] = stor[arg1 + code.data[11171 len 32]].length
    mem[192] = uint256(stor[sha3(arg1 + code.data[11171 len 32])])
    idx = 192
    s = 0
    while stor[arg1 + code.data[11171 len 32]].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(arg1 + code.data[11171 len 32]) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + 224
    mem[ceil32(stor[arg1 + code.data[11171 len 32]].length) + 192] = stor[_428 + 3].length
    mem[0] = _428 + 3
    mem[ceil32(stor[arg1 + code.data[11171 len 32]].length) + 224] = uint256(stor[sha3(_428 + 3)])
    idx = ceil32(stor[arg1 + code.data[11171 len 32]].length) + 224
    s = 0
    while ceil32(stor[arg1 + code.data[11171 len 32]].length) + stor[_428 + 3].length + 192 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_428 + 3) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + 256] = address(stor[_428])
    mem[ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + 288] = uint256(record[_428].field_0)
    mem[ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + 352] = stor4[_428]
    mem[ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + 384] = stor5[_428]
    mem[ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + 224] = 192
    mem[ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + 416] = stor[arg1 + code.data[11171 len 32]].length
    mem[ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + 448 len stor[arg1 + code.data[11171 len 32]].length] = mem[192 len stor[arg1 + code.data[11171 len 32]].length]
    mem[ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + 320] = stor[arg1 + code.data[11171 len 32]].length + 224
    mem[stor[arg1 + code.data[11171 len 32]].length + ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + 448] = stor[_428 + 3].length
    mem[stor[arg1 + code.data[11171 len 32]].length + ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + 480 len stor[_428 + 3].length] = mem[ceil32(stor[arg1 + code.data[11171 len 32]].length) + 224 len stor[_428 + 3].length]
    if not stor[_428 + 3].length % 32:
        return Array(len=stor[arg1 + code.data[11171 len 32]].length, data=mem[192 len stor[arg1 + code.data[11171 len 32]].length], stor[_428 + 3].length, mem[ceil32(stor[arg1 + code.data[11171 len 32]].length) + 224 len stor[_428 + 3].length]), 
               address(stor[_428]),
               uint256(record[_428].field_0),
               stor[arg1 + code.data[11171 len 32]].length + 224,
               stor4[_428],
               stor5[_428]
    mem[floor32(stor[_428 + 3].length) + stor[arg1 + code.data[11171 len 32]].length + ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + 480] = mem[floor32(stor[_428 + 3].length) + stor[arg1 + code.data[11171 len 32]].length + ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + -stor[_428 + 3].length % 32 + 512 len stor[_428 + 3].length % 32]
    return Array(len=stor[arg1 + code.data[11171 len 32]].length, data=mem[192 len stor[arg1 + code.data[11171 len 32]].length], stor[_428 + 3].length, mem[ceil32(stor[arg1 + code.data[11171 len 32]].length) + ceil32(stor[_428 + 3].length) + stor[arg1 + code.data[11171 len 32]].length + 480 len floor32(stor[_428 + 3].length) + 32]), 
           address(stor[_428]),
           uint256(record[_428].field_0),
           stor[arg1 + code.data[11171 len 32]].length + 224,
           stor4[_428],
           stor5[_428]
}

function bid(string arg1) payable {
    if 0 == uint256(record[arg1[all]].field_256):
        if uint256(stor15[arg1[all]].field_256) != 0:
            if msg.value <= uint256(stor15[arg1[all]].field_512):
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if block.timestamp - uint256(stor15[arg1[all]].field_256) > sub_a271e525:
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    call address(stor15[arg1[all]].field_0) with:
                       value uint256(stor15[arg1[all]].field_512) wei
                         gas 0 wei
                    uint256(stor15[arg1[all]].field_0) = msg.sender or Mask(96, 160, uint256(stor15[arg1[all]].field_0))
                    uint256(stor15[arg1[all]].field_512) = msg.value
                    if block.timestamp - uint256(stor15[arg1[all]].field_256) > sub_7f61500d:
                        if uint256(stor15[arg1[all]].field_768) < sub_6e18ead3:
                            uint256(stor15[arg1[all]].field_768)++
                            uint256(stor15[arg1[all]].field_256) += sub_052747d6
        else:
            if msg.value >= sub_d4de5314:
                uint256(stor15[arg1[all]].field_0) = msg.sender or Mask(96, 160, uint256(stor15[arg1[all]].field_0))
                uint256(stor15[arg1[all]].field_256) = block.timestamp
                uint256(stor15[arg1[all]].field_512) = msg.value
                uint256(stor15[arg1[all]].field_768) = 0
                uint256(stor15[arg1[all]].field_1024) = stor17.length
                stor17.length++
                if not stor17.length <= stor17.length + 1:
                    mem[0] = 17
                    idx = stor17.length + 1
                    while sha3(17) + stor17.length > idx + sha3(mem[0]):
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        if 31 < stor[idx + sha3(mem[0])].length:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                require stor17.length - 1 < stor17.length
                stor[sha3(stor17.length + ('name', 'stor17', 17) - 1)][] = Array(len=arg1.length, data=arg1[all])
                numAuctions++
    else:
        if block.timestamp - uint256(record[arg1[all]].field_256) <= sub_c3cecfdc:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if uint256(stor15[arg1[all]].field_256) != 0:
                if msg.value <= uint256(stor15[arg1[all]].field_512):
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    if block.timestamp - uint256(stor15[arg1[all]].field_256) > sub_a271e525:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 0 wei
                    else:
                        call address(stor15[arg1[all]].field_0) with:
                           value uint256(stor15[arg1[all]].field_512) wei
                             gas 0 wei
                        uint256(stor15[arg1[all]].field_0) = msg.sender or Mask(96, 160, uint256(stor15[arg1[all]].field_0))
                        uint256(stor15[arg1[all]].field_512) = msg.value
                        if block.timestamp - uint256(stor15[arg1[all]].field_256) > sub_7f61500d:
                            if uint256(stor15[arg1[all]].field_768) < sub_6e18ead3:
                                uint256(stor15[arg1[all]].field_768)++
                                uint256(stor15[arg1[all]].field_256) += sub_052747d6
            else:
                if msg.value >= sub_d4de5314:
                    uint256(stor15[arg1[all]].field_0) = msg.sender or Mask(96, 160, uint256(stor15[arg1[all]].field_0))
                    uint256(stor15[arg1[all]].field_256) = block.timestamp
                    uint256(stor15[arg1[all]].field_512) = msg.value
                    uint256(stor15[arg1[all]].field_768) = 0
                    uint256(stor15[arg1[all]].field_1024) = stor17.length
                    stor17.length++
                    if not stor17.length <= stor17.length + 1:
                        mem[0] = 17
                        idx = stor17.length + 1
                        while sha3(17) + stor17.length > idx + sha3(mem[0]):
                            uint256(stor[idx + sha3(mem[0])]) = 0
                            if 31 < stor[idx + sha3(mem[0])].length:
                                mem[0] = idx + sha3(mem[0])
                                s = sha3(idx + sha3(mem[0]))
                                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            idx = idx + 1
                            continue 
                    require stor17.length - 1 < stor17.length
                    stor[sha3(stor17.length + ('name', 'stor17', 17) - 1)][] = Array(len=arg1.length, data=arg1[all])
                    numAuctions++
}



}
