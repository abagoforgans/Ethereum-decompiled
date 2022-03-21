contract main {


// =======================  Init code  ======================


uint256 stor0;
uint16 stor1; offset 160
uint32 stor1; offset 224
uint64 stor1; offset 176
address stor1;
bool stor2; offset 256
uint16 stor2;
uint32 stor2; offset 64
uint64 stor2; offset 88
uint64 stor2; offset 16
uint256 stor4;
uint16 stor7;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    address(stor1.field_0) = msg.sender
    uint16(stor1.field_160) = 723
    stor1.field_176 % 281474976710656 = 0
    uint32(stor1.field_224) = Mask(32, 224, msg.sender) >> 224
    uint16(stor2.field_0) = 41665
    stor2.field_16 % 281474976710656 = 0
    stor2.field_64 % 16777216 = 600000
    stor2.field_88 % 1099511627776 = 0
    stor2.field_256 % 1 = 0
    stor4 = 60 * 10^18
    stor7 = 0
    return code.data[159 len 2623]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
uint16 stor2;
uint16 stor2; offset 64
uint64 stor2; offset 16
uint64 stor2; offset 80
uint64 stor2;
uint64 stor2; offset 64
array of uint256 stor3;
array of uint8 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of struct stor7;
mapping of struct getContributionInfo;
mapping of uint256 stor99;

function GetContributionInfo(uint16 arg1, uint16 arg2) payable {
    return getContributionInfo[arg1 << 240][1][arg2 << 240].field_0, 
           getContributionInfo[arg1 << 240][1][arg2 << 240].field_256,
           uint16(getContributionInfo[arg1 << 240][1][arg2 << 240].field_512),
           getContributionInfo[arg1 << 240][1][arg2 << 240].field_768,
           uint8(getContributionInfo[arg1 << 240][1][arg2 << 240].field_1024),
           getContributionInfo[arg1 << 240][1][arg2 << 240].field_1280,
           getContributionInfo[arg1 << 240][1][arg2 << 240].field_1536,
           getContributionInfo[arg1 << 240][1][arg2 << 240].field_1792,
           uint8(getContributionInfo[arg1 << 240][1][arg2 << 240].field_2048),
           uint8(getContributionInfo[arg1 << 240][1][arg2 << 240].field_2048),
           address(getContributionInfo[arg1 << 240].field_0)
}

function CashForHardwareReturn() payable {
    return stor5.length
}

function FreezedCash() payable {
    return stor6.length
}

function ContributedAmount() payable {
    return stor3.length
}

function _fallback() payable {
  stop
}

function SendCashForHardwareReturn() payable {
    stor5.length += msg.value
}

function GetMoney() payable {
    if msg.sender == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function WithdrawCashForHardwareReturn(uint256 arg1) payable {
    if msg.sender == stor0:
        if stor5.length >= arg1:
            call stor0 with:
               value arg1 wei
                 gas 0 wei
}

function ChangeReuseCashInHarware(bool arg1, uint16 arg2, uint16 arg3) payable {
    if msg.sender == address(getContributionInfo[arg2 << 240].field_0):
        getContributionInfo[arg2 << 240][1][arg3 << 240].field_1024 = arg1 or Mask(248, 8, getContributionInfo[arg2 << 240][1][arg3 << 240].field_1024)
}

function GetUserIdByAddress(address arg1) payable {
    idx = 0
    while uint16(idx) < uint16(stor7.length):
        mem[0] = uint16(idx)
        mem[32] = 8
        if address(getContributionInfo[idx << 240].field_0) != arg1:
            idx = idx + 1
            continue 
        return uint16(idx)
    return 65535
}

function ConfigureFunction(address arg1, uint256 arg2, uint16 arg3, uint16 arg4, uint16 arg5) payable {
    if msg.sender == stor0:
        stor4.length = arg2
        address(stor1.length) = arg1
        uint16(stor1.length.field_160) = arg3
        stor1.length.field_176 % 281474976710656 = 0
        uint32(stor1.length.field_224) = uint32(arg1)
        uint16(stor2.field_0) = arg4
        stor2.field_16 % 281474976710656 = 0
        uint16(stor2.field_64) = arg5
        stor2.field_80 % 281474976710656 = 0
}

function ContributeWithSender(bool arg1, uint8 arg2, address arg3) payable {
    if 0 == msg.value:
        call arg3 with:
           value msg.value wei
             gas 0 wei
    else:
        if arg2 > 100:
            call arg3 with:
               value msg.value wei
                 gas 0 wei
        else:
            if stor3.length + msg.value > stor4.length:
                call arg3 with:
                   value msg.value wei
                     gas 0 wei
            else:
                idx = 0
                while uint16(idx) < uint16(stor7.length):
                    mem[0] = uint16(idx)
                    mem[32] = 8
                    if address(getContributionInfo[idx << 240].field_0) != arg3:
                        idx = idx + 1
                        continue 
                    if uint16(idx) != 65535:
                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_0 = msg.value - (msg.value / 100 * arg2)
                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_256 = msg.value / 100 * arg2
                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512 = uint64((uint64(stor1.length.field_160) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2)) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + (uint64(stor2.field_0) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512)
                        uint255(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_768) = msg.value - (msg.value / 100 * arg2) + (msg.value / 100 * arg2) / 10000 * uint16(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512) / 2
                        bool(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1023) = 0
                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1024 = arg1 or Mask(248, 8, getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1024)
                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1280 = block.timestamp
                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1536 = block.timestamp
                        Mask(96, 0, getContributionInfo[idx << 240].field_160) = Mask(96, 0, uint16(getContributionInfo[idx << 240].field_160) + 1)
                    else:
                        getContributionInfo[uint16(stor7.length)].field_0 = arg3 or Mask(96, 160, getContributionInfo[uint16(stor7.length)].field_0)
                        stor7.length = uint16(stor7.length) + 1 or Mask(240, 16, stor7.length)
                        getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_0 = msg.value - (msg.value / 100 * arg2)
                        getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_256 = msg.value / 100 * arg2
                        getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_512 = uint64((uint64(stor1.length.field_160) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2)) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + (uint64(stor2.field_0) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_512)
                        uint255(getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_768) = msg.value - (msg.value / 100 * arg2) + (msg.value / 100 * arg2) / 10000 * uint16(getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_512) / 2
                        bool(getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1023) = 0
                        getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1024 = arg1 or Mask(248, 8, getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1024)
                        getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1280 = block.timestamp
                        getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1536 = block.timestamp
                        Mask(96, 0, getContributionInfo[uint16(stor7.length)].field_160) = Mask(96, 0, uint16(getContributionInfo[uint16(stor7.length)].field_160) + 1)
                    stor6.length += msg.value / 100 * arg2
                    stor3.length += msg.value
                    call address(stor1.length) with:
                       value msg.value - (msg.value / 100 * arg2) wei
                         gas 0 wei
                getContributionInfo[uint16(stor7.length)].field_0 = arg3 or Mask(96, 160, getContributionInfo[uint16(stor7.length)].field_0)
                stor7.length = uint16(stor7.length) + 1 or Mask(240, 16, stor7.length)
                getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_0 = msg.value - (msg.value / 100 * arg2)
                getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_256 = msg.value / 100 * arg2
                getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_512 = uint64((uint64(stor1.length.field_160) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2)) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + (uint64(stor2.field_0) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_512)
                uint255(getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_768) = msg.value - (msg.value / 100 * arg2) + (msg.value / 100 * arg2) / 10000 * uint16(getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_512) / 2
                bool(getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1023) = 0
                getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1024 = arg1 or Mask(248, 8, getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1024)
                getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1280 = block.timestamp
                getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1536 = block.timestamp
                Mask(96, 0, getContributionInfo[uint16(stor7.length)].field_160) = Mask(96, 0, uint16(getContributionInfo[uint16(stor7.length)].field_160) + 1)
                stor6.length += msg.value / 100 * arg2
                stor3.length += msg.value
                call address(stor1.length) with:
                   value msg.value - (msg.value / 100 * arg2) wei
                     gas 0 wei
}

function Contribute(bool arg1, uint8 arg2) payable {
    if 0 == msg.value:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if arg2 > 100:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if stor3.length + msg.value > stor4.length:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                idx = 0
                while uint16(idx) < uint16(stor7.length):
                    mem[0] = uint16(idx)
                    mem[32] = 8
                    if address(getContributionInfo[idx << 240].field_0) != msg.sender:
                        idx = idx + 1
                        continue 
                    if uint16(idx) != 65535:
                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_0 = msg.value - (msg.value / 100 * arg2)
                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_256 = msg.value / 100 * arg2
                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512 = uint64((uint64(stor1.length.field_160) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2)) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + (uint64(stor2.field_0) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512)
                        uint255(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_768) = msg.value - (msg.value / 100 * arg2) + (msg.value / 100 * arg2) / 10000 * uint16(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512) / 2
                        bool(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1023) = 0
                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1024 = arg1 or Mask(248, 8, getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1024)
                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1280 = block.timestamp
                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1536 = block.timestamp
                        Mask(96, 0, getContributionInfo[idx << 240].field_160) = Mask(96, 0, uint16(getContributionInfo[idx << 240].field_160) + 1)
                    else:
                        getContributionInfo[uint16(stor7.length)].field_0 = msg.sender or Mask(96, 160, getContributionInfo[uint16(stor7.length)].field_0)
                        stor7.length = uint16(stor7.length) + 1 or Mask(240, 16, stor7.length)
                        getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_0 = msg.value - (msg.value / 100 * arg2)
                        getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_256 = msg.value / 100 * arg2
                        getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_512 = uint64((uint64(stor1.length.field_160) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2)) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + (uint64(stor2.field_0) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_512)
                        uint255(getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_768) = msg.value - (msg.value / 100 * arg2) + (msg.value / 100 * arg2) / 10000 * uint16(getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_512) / 2
                        bool(getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1023) = 0
                        getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1024 = arg1 or Mask(248, 8, getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1024)
                        getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1280 = block.timestamp
                        getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1536 = block.timestamp
                        Mask(96, 0, getContributionInfo[uint16(stor7.length)].field_160) = Mask(96, 0, uint16(getContributionInfo[uint16(stor7.length)].field_160) + 1)
                    stor6.length += msg.value / 100 * arg2
                    stor3.length += msg.value
                    call address(stor1.length) with:
                       value msg.value - (msg.value / 100 * arg2) wei
                         gas 0 wei
                getContributionInfo[uint16(stor7.length)].field_0 = msg.sender or Mask(96, 160, getContributionInfo[uint16(stor7.length)].field_0)
                stor7.length = uint16(stor7.length) + 1 or Mask(240, 16, stor7.length)
                getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_0 = msg.value - (msg.value / 100 * arg2)
                getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_256 = msg.value / 100 * arg2
                getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_512 = uint64((uint64(stor1.length.field_160) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2)) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + (uint64(stor2.field_0) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_512)
                uint255(getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_768) = msg.value - (msg.value / 100 * arg2) + (msg.value / 100 * arg2) / 10000 * uint16(getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_512) / 2
                bool(getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1023) = 0
                getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1024 = arg1 or Mask(248, 8, getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1024)
                getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1280 = block.timestamp
                getContributionInfo[uint16(stor7.length)][1][uint16(getContributionInfo[uint16(stor7.length)].field_0)].field_1536 = block.timestamp
                Mask(96, 0, getContributionInfo[uint16(stor7.length)].field_160) = Mask(96, 0, uint16(getContributionInfo[uint16(stor7.length)].field_160) + 1)
                stor6.length += msg.value / 100 * arg2
                stor3.length += msg.value
                call address(stor1.length) with:
                   value msg.value - (msg.value / 100 * arg2) wei
                     gas 0 wei
}

function Triger() payable {
    if msg.sender == stor0:
        idx = 0
        while uint16(idx) < uint16(stor7.length):
            mem[0] = uint16(idx)
            mem[32] = 8
            s = 0
            s = 0
            while uint16(s) < uint16(getContributionInfo[idx << 240].field_160):
                _139 = sha3(s << 240, sha3(mem[0 len 64]) + 1)
                if not uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8):
                    if block.timestamp - stor6[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] >= 24 * 3600:
                        if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                            if block.timestamp <= stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] + (48 * 24 * 3600):
                                if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                    if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                        uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                            else:
                                if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                    if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                        uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                else:
                                    if not stor4[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]:
                                        if stor5.length >= stor[sha3(mem[0 len 64]) + 1][s << 240]:
                                            stor5.length -= stor[sha3(mem[0 len 64]) + 1][s << 240]
                                            stor6.length -= stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0
                                            stor3.length = stor3.length - stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 - stor[sha3(mem[0 len 64]) + 1][s << 240]
                                            call address(getContributionInfo[idx << 240].field_0) with:
                                               value stor[sha3(mem[0 len 64]) + 1][s << 240] + stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 wei
                                                 gas 0 wei
                                            uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0) = 1
                                        if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                            if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                    else:
                                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_0 = stor[sha3(mem[0 len 64]) + 1][s << 240]
                                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_256 = stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0
                                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512 = uint64((uint64(stor1.length.field_160) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240]) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240])) + (uint64(stor2.field_0) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240])) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512)
                                        uint255(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_768) = stor[sha3(mem[0 len 64]) + 1][s << 240] + stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 / 10000 * uint16(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512) / 2
                                        bool(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1023) = 0
                                        uint8(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1024) = 1
                                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1280 = block.timestamp
                                        getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1536 = block.timestamp
                                        Mask(96, 0, getContributionInfo[idx << 240].field_160) = Mask(96, 0, uint16(getContributionInfo[idx << 240].field_160) + 1)
                                        uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0) = 1
                                        if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                            if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                        else:
                            if uint8(block.timestamp - stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] / 24 * 3600) <= 2:
                                if eth.balance(this.address) - stor5.length - stor6.length < (uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) * uint8(block.timestamp - stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] / 24 * 3600)) - stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                    stor6[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] = block.timestamp
                                    if block.timestamp <= stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] + (48 * 24 * 3600):
                                        if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                            if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                    else:
                                        if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                            if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                        else:
                                            if not stor4[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]:
                                                if stor5.length >= stor[sha3(mem[0 len 64]) + 1][s << 240]:
                                                    stor5.length -= stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                    stor6.length -= stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0
                                                    stor3.length = stor3.length - stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 - stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                    call address(getContributionInfo[idx << 240].field_0) with:
                                                       value stor[sha3(mem[0 len 64]) + 1][s << 240] + stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 wei
                                                         gas 0 wei
                                                    uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0) = 1
                                                if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                    if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                        uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                            else:
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_0 = stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_256 = stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512 = uint64((uint64(stor1.length.field_160) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240]) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240])) + (uint64(stor2.field_0) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240])) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512)
                                                uint255(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_768) = stor[sha3(mem[0 len 64]) + 1][s << 240] + stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 / 10000 * uint16(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512) / 2
                                                bool(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1023) = 0
                                                uint8(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1024) = 1
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1280 = block.timestamp
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1536 = block.timestamp
                                                Mask(96, 0, getContributionInfo[idx << 240].field_160) = Mask(96, 0, uint16(getContributionInfo[idx << 240].field_160) + 1)
                                                uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0) = 1
                                                if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                    if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                        uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                else:
                                    if (uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) * uint8(block.timestamp - stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] / 24 * 3600)) - stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 > 10^17:
                                        call address(getContributionInfo[idx << 240].field_0) with:
                                           value (uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) * uint8(block.timestamp - stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] / 24 * 3600)) - stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 wei
                                             gas 0 wei
                                        stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 = uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) * uint8(block.timestamp - stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] / 24 * 3600)
                                        stor6[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] = block.timestamp
                                        if block.timestamp <= stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] + (48 * 24 * 3600):
                                            if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                    uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                        else:
                                            if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                    uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                            else:
                                                if not stor4[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]:
                                                    if stor5.length >= stor[sha3(mem[0 len 64]) + 1][s << 240]:
                                                        stor5.length -= stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                        stor6.length -= stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0
                                                        stor3.length = stor3.length - stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 - stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                        call address(getContributionInfo[idx << 240].field_0) with:
                                                           value stor[sha3(mem[0 len 64]) + 1][s << 240] + stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 wei
                                                             gas 0 wei
                                                        uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0) = 1
                                                    if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                        if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                            uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                                else:
                                                    getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_0 = stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                    getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_256 = stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0
                                                    getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512 = uint64((uint64(stor1.length.field_160) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240]) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240])) + (uint64(stor2.field_0) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240])) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512)
                                                    uint255(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_768) = stor[sha3(mem[0 len 64]) + 1][s << 240] + stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 / 10000 * uint16(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512) / 2
                                                    bool(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1023) = 0
                                                    uint8(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1024) = 1
                                                    getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1280 = block.timestamp
                                                    getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1536 = block.timestamp
                                                    Mask(96, 0, getContributionInfo[idx << 240].field_160) = Mask(96, 0, uint16(getContributionInfo[idx << 240].field_160) + 1)
                                                    uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0) = 1
                                                    if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                        if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                            uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                    else:
                                        if uint8(block.timestamp - stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] / 24 * 3600) == 2:
                                            call address(getContributionInfo[idx << 240].field_0) with:
                                               value (uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) * uint8(block.timestamp - stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] / 24 * 3600)) - stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 wei
                                                 gas 0 wei
                                            stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 = uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) * uint8(block.timestamp - stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] / 24 * 3600)
                                        stor6[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] = block.timestamp
                                        if block.timestamp <= stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] + (48 * 24 * 3600):
                                            if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                    uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                        else:
                                            if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                    uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                            else:
                                                if not stor4[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]:
                                                    if stor5.length >= stor[sha3(mem[0 len 64]) + 1][s << 240]:
                                                        stor5.length -= stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                        stor6.length -= stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0
                                                        stor3.length = stor3.length - stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 - stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                        call address(getContributionInfo[idx << 240].field_0) with:
                                                           value stor[sha3(mem[0 len 64]) + 1][s << 240] + stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 wei
                                                             gas 0 wei
                                                        uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0) = 1
                                                    if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                        if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                            uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                                else:
                                                    getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_0 = stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                    getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_256 = stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0
                                                    getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512 = uint64((uint64(stor1.length.field_160) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240]) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240])) + (uint64(stor2.field_0) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240])) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512)
                                                    uint255(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_768) = stor[sha3(mem[0 len 64]) + 1][s << 240] + stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 / 10000 * uint16(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512) / 2
                                                    bool(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1023) = 0
                                                    uint8(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1024) = 1
                                                    getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1280 = block.timestamp
                                                    getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1536 = block.timestamp
                                                    Mask(96, 0, getContributionInfo[idx << 240].field_160) = Mask(96, 0, uint16(getContributionInfo[idx << 240].field_160) + 1)
                                                    uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0) = 1
                                                    if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                        if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                            uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                            else:
                                if eth.balance(this.address) - stor5.length - stor6.length < (2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))])) - stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                    stor6[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] = block.timestamp
                                    if block.timestamp <= stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] + (48 * 24 * 3600):
                                        if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                            if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                    else:
                                        if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                            if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                        else:
                                            if not stor4[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]:
                                                if stor5.length >= stor[sha3(mem[0 len 64]) + 1][s << 240]:
                                                    stor5.length -= stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                    stor6.length -= stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0
                                                    stor3.length = stor3.length - stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 - stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                    call address(getContributionInfo[idx << 240].field_0) with:
                                                       value stor[sha3(mem[0 len 64]) + 1][s << 240] + stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 wei
                                                         gas 0 wei
                                                    uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0) = 1
                                                if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                    if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                        uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                            else:
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_0 = stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_256 = stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512 = uint64((uint64(stor1.length.field_160) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240]) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240])) + (uint64(stor2.field_0) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240])) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512)
                                                uint255(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_768) = stor[sha3(mem[0 len 64]) + 1][s << 240] + stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 / 10000 * uint16(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512) / 2
                                                bool(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1023) = 0
                                                uint8(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1024) = 1
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1280 = block.timestamp
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1536 = block.timestamp
                                                Mask(96, 0, getContributionInfo[idx << 240].field_160) = Mask(96, 0, uint16(getContributionInfo[idx << 240].field_160) + 1)
                                                uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0) = 1
                                                if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                    if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                        uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                else:
                                    call address(getContributionInfo[idx << 240].field_0) with:
                                       value (2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))])) - stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 wei
                                         gas 0 wei
                                    bool(stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0) = 0
                                    uint255(stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_1) = uint255(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))])
                                    stor6[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] = block.timestamp
                                    if block.timestamp <= stor5[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))] + (48 * 24 * 3600):
                                        if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                            if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                    else:
                                        if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                            if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                        else:
                                            if not stor4[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]:
                                                if stor5.length >= stor[sha3(mem[0 len 64]) + 1][s << 240]:
                                                    stor5.length -= stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                    stor6.length -= stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0
                                                    stor3.length = stor3.length - stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 - stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                    call address(getContributionInfo[idx << 240].field_0) with:
                                                       value stor[sha3(mem[0 len 64]) + 1][s << 240] + stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 wei
                                                         gas 0 wei
                                                    uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0) = 1
                                                if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                    if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                        uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                                            else:
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_0 = stor[sha3(mem[0 len 64]) + 1][s << 240]
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_256 = stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512 = uint64((uint64(stor1.length.field_160) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240]) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240])) + (uint64(stor2.field_0) * uint8(100 * stor[sha3(mem[0 len 64]) + 1][s << 240] / stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 + stor[sha3(mem[0 len 64]) + 1][s << 240])) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512)
                                                uint255(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_768) = stor[sha3(mem[0 len 64]) + 1][s << 240] + stor1[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0 / 10000 * uint16(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_512) / 2
                                                bool(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1023) = 0
                                                uint8(getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1024) = 1
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1280 = block.timestamp
                                                getContributionInfo[idx << 240][1][uint16(getContributionInfo[idx << 240].field_0)].field_1536 = block.timestamp
                                                Mask(96, 0, getContributionInfo[idx << 240].field_160) = Mask(96, 0, uint16(getContributionInfo[idx << 240].field_160) + 1)
                                                uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0) = 1
                                                if uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0):
                                                    if 2 * uint256(stor3[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))]) == stor7[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_0:
                                                        uint8(getContributionInfo[('map', ('mask_shl', 16, 0, 240, ('var', 1)), ('add', 1, ('sha3', ('mem', ('range', 0, 64)))))].field_8) = 1
                mem[0] = uint16(idx)
                mem[32] = 8
                s = _139
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        call address(stor1.length) with:
           value eth.balance(this.address) - stor5.length - stor6.length wei
             gas 0 wei
}



}
