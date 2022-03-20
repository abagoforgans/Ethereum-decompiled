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
    stor4 = 100 * 10^18
    stor7 = 0
    return code.data[159 len 2442]
}



// =====================  Runtime code  =====================


address stor0;
uint16 stor1; offset 160
uint32 stor1; offset 224
uint64 stor1; offset 176
uint64 stor1; offset 160
address stor1;
uint16 stor2;
uint16 stor2; offset 64
uint64 stor2; offset 16
uint64 stor2; offset 80
uint64 stor2;
uint64 stor2; offset 64
uint256 contributedAmount;
uint256 stor4;
uint256 cashForHardwareReturn;
uint256 freezedCash;
uint16 stor7;
uint256 stor7;
mapping of struct getContributionInfo;

function GetContributionInfo(uint16 arg1, uint16 arg2) payable {
    return getContributionInfo[arg1 << 240][1][arg2 << 240].field_0, 
           getContributionInfo[arg1 << 240][1][arg2 << 240].field_256,
           getContributionInfo[arg1 << 240][1][arg2 << 240].field_512,
           getContributionInfo[arg1 << 240][1][arg2 << 240].field_768,
           getContributionInfo[arg1 << 240][1][arg2 << 240].field_1024,
           getContributionInfo[arg1 << 240][1][arg2 << 240].field_1280,
           getContributionInfo[arg1 << 240][1][arg2 << 240].field_1536,
           getContributionInfo[arg1 << 240][1][arg2 << 240].field_1792
}

function CashForHardwareReturn() payable {
    return cashForHardwareReturn
}

function FreezedCash() payable {
    return freezedCash
}

function ContributedAmount() payable {
    return contributedAmount
}

function _fallback() payable {
  stop
}

function SendCashForHardwareReturn() payable {
    cashForHardwareReturn += msg.value
}

function GetMoney() payable {
    if msg.sender == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function WithdrawCashForHardwareReturn(uint256 arg1) payable {
    if msg.sender == stor0:
        if cashForHardwareReturn >= arg1:
            call stor0 with:
               value arg1 wei
                 gas 0 wei
}

function ChangeReuseCashInHarware(bool arg1, uint16 arg2, uint16 arg3) payable {
    if msg.sender == getContributionInfo[arg2 << 240].field_0:
        getContributionInfo[arg2 << 240][1][arg3 << 240].field_1024 = arg1 or Mask(248, 8, getContributionInfo[arg2 << 240][1][arg3 << 240].field_1024)
}

function GetUserIdByAddress(address arg1) payable {
    idx = 0
    while uint16(idx) < uint16(stor7):
        mem[0] = uint16(idx)
        mem[32] = 8
        if getContributionInfo[idx << 240].field_0 != arg1:
            idx = idx + 1
            continue 
        return uint16(idx)
    return 65535
}

function ConfigureFunction(address arg1, uint256 arg2, uint16 arg3, uint16 arg4, uint16 arg5) payable {
    if msg.sender == stor0:
        stor4 = arg2
        address(stor1.field_0) = arg1
        uint16(stor1.field_160) = arg3
        stor1.field_176 % 281474976710656 = 0
        uint32(stor1.field_224) = uint32(arg1)
        uint16(stor2.field_0) = arg4
        stor2.field_16 % 281474976710656 = 0
        uint16(stor2.field_64) = arg5
        stor2.field_80 % 281474976710656 = 0
}

function Contribute(bool arg1, uint8 arg2) payable {
    require msg.value != 0
    require arg2 <= 100
    require contributedAmount + msg.value <= stor4
    idx = 0
    while uint16(idx) < uint16(stor7):
        mem[0] = uint16(idx)
        mem[32] = 8
        if getContributionInfo[idx << 240].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if uint16(idx) != 65535:
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_0 = msg.value - (msg.value / 100 * arg2)
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_256 = msg.value / 100 * arg2
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_512 = uint64((uint64(stor1.field_160) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2)) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + (uint64(stor2.field_0) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_512)
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_768 = msg.value - (msg.value / 100 * arg2) + (msg.value / 100 * arg2) / 10000 * getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_512 / 2
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1023 = 0
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1024 = arg1 or Mask(248, 8, getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1024)
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1280 = block.timestamp
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1536 = block.timestamp
            getContributionInfo[idx << 240].field_160 = Mask(96, 0, getContributionInfo[idx << 240].field_160 + 1)
        else:
            getContributionInfo[uint16(stor7)].field_0 = msg.sender or Mask(96, 160, getContributionInfo[uint16(stor7)].field_0)
            uint256(stor7) = uint16(stor7) + 1 or Mask(240, 16, uint256(stor7))
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_0 = msg.value - (msg.value / 100 * arg2)
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_256 = msg.value / 100 * arg2
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_512 = uint64((uint64(stor1.field_160) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2)) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + (uint64(stor2.field_0) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_512)
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_768 = msg.value - (msg.value / 100 * arg2) + (msg.value / 100 * arg2) / 10000 * getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_512 / 2
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1023 = 0
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1024 = arg1 or Mask(248, 8, getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1024)
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1280 = block.timestamp
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1536 = block.timestamp
            getContributionInfo[uint16(stor7)].field_160 = Mask(96, 0, getContributionInfo[uint16(stor7)].field_160 + 1)
        freezedCash += msg.value / 100 * arg2
        contributedAmount += msg.value
        call address(stor1.field_0) with:
           value msg.value - (msg.value / 100 * arg2) wei
             gas 0 wei
    getContributionInfo[uint16(stor7)].field_0 = msg.sender or Mask(96, 160, getContributionInfo[uint16(stor7)].field_0)
    uint256(stor7) = uint16(stor7) + 1 or Mask(240, 16, uint256(stor7))
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_0 = msg.value - (msg.value / 100 * arg2)
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_256 = msg.value / 100 * arg2
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_512 = uint64((uint64(stor1.field_160) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2)) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + (uint64(stor2.field_0) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_512)
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_768 = msg.value - (msg.value / 100 * arg2) + (msg.value / 100 * arg2) / 10000 * getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_512 / 2
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1023 = 0
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1024 = arg1 or Mask(248, 8, getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1024)
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1280 = block.timestamp
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1536 = block.timestamp
    getContributionInfo[uint16(stor7)].field_160 = Mask(96, 0, getContributionInfo[uint16(stor7)].field_160 + 1)
    freezedCash += msg.value / 100 * arg2
    contributedAmount += msg.value
    call address(stor1.field_0) with:
       value msg.value - (msg.value / 100 * arg2) wei
         gas 0 wei
}

function ContributeWithSender(bool arg1, uint8 arg2, address arg3) payable {
    require msg.value != 0
    require arg2 <= 100
    require contributedAmount + msg.value <= stor4
    idx = 0
    while uint16(idx) < uint16(stor7):
        mem[0] = uint16(idx)
        mem[32] = 8
        if getContributionInfo[idx << 240].field_0 != arg3:
            idx = idx + 1
            continue 
        if uint16(idx) != 65535:
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_0 = msg.value - (msg.value / 100 * arg2)
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_256 = msg.value / 100 * arg2
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_512 = uint64((uint64(stor1.field_160) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2)) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + (uint64(stor2.field_0) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_512)
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_768 = msg.value - (msg.value / 100 * arg2) + (msg.value / 100 * arg2) / 10000 * getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_512 / 2
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1023 = 0
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1024 = arg1 or Mask(248, 8, getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1024)
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1280 = block.timestamp
            getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1536 = block.timestamp
            getContributionInfo[idx << 240].field_160 = Mask(96, 0, getContributionInfo[idx << 240].field_160 + 1)
        else:
            getContributionInfo[uint16(stor7)].field_0 = arg3 or Mask(96, 160, getContributionInfo[uint16(stor7)].field_0)
            uint256(stor7) = uint16(stor7) + 1 or Mask(240, 16, uint256(stor7))
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_0 = msg.value - (msg.value / 100 * arg2)
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_256 = msg.value / 100 * arg2
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_512 = uint64((uint64(stor1.field_160) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2)) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + (uint64(stor2.field_0) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_512)
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_768 = msg.value - (msg.value / 100 * arg2) + (msg.value / 100 * arg2) / 10000 * getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_512 / 2
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1023 = 0
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1024 = arg1 or Mask(248, 8, getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1024)
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1280 = block.timestamp
            getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1536 = block.timestamp
            getContributionInfo[uint16(stor7)].field_160 = Mask(96, 0, getContributionInfo[uint16(stor7)].field_160 + 1)
        freezedCash += msg.value / 100 * arg2
        contributedAmount += msg.value
        call address(stor1.field_0) with:
           value msg.value - (msg.value / 100 * arg2) wei
             gas 0 wei
    getContributionInfo[uint16(stor7)].field_0 = arg3 or Mask(96, 160, getContributionInfo[uint16(stor7)].field_0)
    uint256(stor7) = uint16(stor7) + 1 or Mask(240, 16, uint256(stor7))
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_0 = msg.value - (msg.value / 100 * arg2)
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_256 = msg.value / 100 * arg2
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_512 = uint64((uint64(stor1.field_160) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2)) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + (uint64(stor2.field_0) * uint8((100 * msg.value) - (100 * msg.value / 100 * arg2) / (msg.value / 100 * arg2) + msg.value - (msg.value / 100 * arg2))) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_512)
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_768 = msg.value - (msg.value / 100 * arg2) + (msg.value / 100 * arg2) / 10000 * getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_512 / 2
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1023 = 0
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1024 = arg1 or Mask(248, 8, getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1024)
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1280 = block.timestamp
    getContributionInfo[uint16(stor7)][1][getContributionInfo[uint16(stor7)].field_0].field_1536 = block.timestamp
    getContributionInfo[uint16(stor7)].field_160 = Mask(96, 0, getContributionInfo[uint16(stor7)].field_160 + 1)
    freezedCash += msg.value / 100 * arg2
    contributedAmount += msg.value
    call address(stor1.field_0) with:
       value msg.value - (msg.value / 100 * arg2) wei
         gas 0 wei
}

function Triger() payable {
    if msg.sender == stor0:
        idx = 0
        while uint16(idx) < uint16(stor7):
            mem[0] = uint16(idx)
            mem[32] = 8
            s = 0
            s = 0
            while uint16(s) < getContributionInfo[idx << 240].field_160:
                if not getContributionInfo[idx << 240][1][s << 240].field_1792:
                    if block.timestamp - getContributionInfo[idx << 240][1][s << 240].field_1536 >= 24 * 3600:
                        if block.timestamp <= getContributionInfo[idx << 240][1][s << 240].field_1280 + (48 * 24 * 3600):
                            if eth.balance(this.address) - cashForHardwareReturn - freezedCash >= uint8(block.timestamp - getContributionInfo[idx << 240][1][s << 240].field_1536 / 24 * 3600) * getContributionInfo[idx << 240][1][s << 240].field_768:
                                call getContributionInfo[idx << 240].field_0 with:
                                   value getContributionInfo[idx << 240][1][s << 240].field_768 * uint8(block.timestamp - getContributionInfo[idx << 240][1][s << 240].field_1536 / 24 * 3600) wei
                                     gas 0 wei
                                getContributionInfo[idx << 240][1][s << 240].field_1536 += 24 * 3600 * uint8(block.timestamp - getContributionInfo[idx << 240][1][s << 240].field_1536 / 24 * 3600) % 16777216
                        else:
                            if not getContributionInfo[idx << 240][1][s << 240].field_1024:
                                if cashForHardwareReturn >= getContributionInfo[idx << 240][1][s << 240].field_0:
                                    cashForHardwareReturn -= getContributionInfo[idx << 240][1][s << 240].field_0
                                    freezedCash -= getContributionInfo[idx << 240][1][s << 240].field_256
                                    contributedAmount = contributedAmount - getContributionInfo[idx << 240][1][s << 240].field_0 - getContributionInfo[idx << 240][1][s << 240].field_256
                                    call getContributionInfo[idx << 240].field_0 with:
                                       value getContributionInfo[idx << 240][1][s << 240].field_0 + getContributionInfo[idx << 240][1][s << 240].field_256 wei
                                         gas 0 wei
                                    getContributionInfo[idx << 240][1][s << 240].field_1792 = 1
                                if eth.balance(this.address) - cashForHardwareReturn - freezedCash >= uint8(getContributionInfo[idx << 240][1][s << 240].field_1280 + -getContributionInfo[idx << 240][1][s << 240].field_1536 + (48 * 24 * 3600) / 24 * 3600) * getContributionInfo[idx << 240][1][s << 240].field_768:
                                    call getContributionInfo[idx << 240].field_0 with:
                                       value getContributionInfo[idx << 240][1][s << 240].field_768 * uint8(getContributionInfo[idx << 240][1][s << 240].field_1280 + -getContributionInfo[idx << 240][1][s << 240].field_1536 + (48 * 24 * 3600) / 24 * 3600) wei
                                         gas 0 wei
                                    getContributionInfo[idx << 240][1][s << 240].field_1536 += 24 * 3600 * uint8(getContributionInfo[idx << 240][1][s << 240].field_1280 + -getContributionInfo[idx << 240][1][s << 240].field_1536 + (48 * 24 * 3600) / 24 * 3600) % 16777216
                            else:
                                getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_0 = getContributionInfo[idx << 240][1][s << 240].field_0
                                getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_256 = getContributionInfo[idx << 240][1][s << 240].field_256
                                getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_512 = uint64((uint64(stor1.field_160) * uint8(100 * getContributionInfo[idx << 240][1][s << 240].field_0 / getContributionInfo[idx << 240][1][s << 240].field_256 + getContributionInfo[idx << 240][1][s << 240].field_0) * uint8(100 * getContributionInfo[idx << 240][1][s << 240].field_0 / getContributionInfo[idx << 240][1][s << 240].field_256 + getContributionInfo[idx << 240][1][s << 240].field_0)) + (uint64(stor2.field_0) * uint8(100 * getContributionInfo[idx << 240][1][s << 240].field_0 / getContributionInfo[idx << 240][1][s << 240].field_256 + getContributionInfo[idx << 240][1][s << 240].field_0)) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_512)
                                getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_768 = getContributionInfo[idx << 240][1][s << 240].field_0 + getContributionInfo[idx << 240][1][s << 240].field_256 / 10000 * getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_512 / 2
                                getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1023 = 0
                                getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1024 = 1
                                getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1280 = block.timestamp
                                getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1536 = block.timestamp
                                getContributionInfo[idx << 240].field_160 = Mask(96, 0, getContributionInfo[idx << 240].field_160 + 1)
                                getContributionInfo[idx << 240][1][s << 240].field_1792 = 1
                                if eth.balance(this.address) - cashForHardwareReturn - freezedCash >= uint8(getContributionInfo[idx << 240][1][s << 240].field_1280 + -getContributionInfo[idx << 240][1][s << 240].field_1536 + (48 * 24 * 3600) / 24 * 3600) * getContributionInfo[idx << 240][1][s << 240].field_768:
                                    call getContributionInfo[idx << 240].field_0 with:
                                       value getContributionInfo[idx << 240][1][s << 240].field_768 * uint8(getContributionInfo[idx << 240][1][s << 240].field_1280 + -getContributionInfo[idx << 240][1][s << 240].field_1536 + (48 * 24 * 3600) / 24 * 3600) wei
                                         gas 0 wei
                                    getContributionInfo[idx << 240][1][s << 240].field_1536 += 24 * 3600 * uint8(getContributionInfo[idx << 240][1][s << 240].field_1280 + -getContributionInfo[idx << 240][1][s << 240].field_1536 + (48 * 24 * 3600) / 24 * 3600) % 16777216
                else:
                    if getContributionInfo[idx << 240][1][s << 240].field_1280 + (48 * 24 * 3600) != getContributionInfo[idx << 240][1][s << 240].field_1536:
                        if block.timestamp - getContributionInfo[idx << 240][1][s << 240].field_1536 >= 24 * 3600:
                            if block.timestamp <= getContributionInfo[idx << 240][1][s << 240].field_1280 + (48 * 24 * 3600):
                                if eth.balance(this.address) - cashForHardwareReturn - freezedCash >= uint8(block.timestamp - getContributionInfo[idx << 240][1][s << 240].field_1536 / 24 * 3600) * getContributionInfo[idx << 240][1][s << 240].field_768:
                                    call getContributionInfo[idx << 240].field_0 with:
                                       value getContributionInfo[idx << 240][1][s << 240].field_768 * uint8(block.timestamp - getContributionInfo[idx << 240][1][s << 240].field_1536 / 24 * 3600) wei
                                         gas 0 wei
                                    getContributionInfo[idx << 240][1][s << 240].field_1536 += 24 * 3600 * uint8(block.timestamp - getContributionInfo[idx << 240][1][s << 240].field_1536 / 24 * 3600) % 16777216
                            else:
                                if not getContributionInfo[idx << 240][1][s << 240].field_1024:
                                    if cashForHardwareReturn >= getContributionInfo[idx << 240][1][s << 240].field_0:
                                        cashForHardwareReturn -= getContributionInfo[idx << 240][1][s << 240].field_0
                                        freezedCash -= getContributionInfo[idx << 240][1][s << 240].field_256
                                        contributedAmount = contributedAmount - getContributionInfo[idx << 240][1][s << 240].field_0 - getContributionInfo[idx << 240][1][s << 240].field_256
                                        call getContributionInfo[idx << 240].field_0 with:
                                           value getContributionInfo[idx << 240][1][s << 240].field_0 + getContributionInfo[idx << 240][1][s << 240].field_256 wei
                                             gas 0 wei
                                        getContributionInfo[idx << 240][1][s << 240].field_1792 = 1
                                    if eth.balance(this.address) - cashForHardwareReturn - freezedCash >= uint8(getContributionInfo[idx << 240][1][s << 240].field_1280 + -getContributionInfo[idx << 240][1][s << 240].field_1536 + (48 * 24 * 3600) / 24 * 3600) * getContributionInfo[idx << 240][1][s << 240].field_768:
                                        call getContributionInfo[idx << 240].field_0 with:
                                           value getContributionInfo[idx << 240][1][s << 240].field_768 * uint8(getContributionInfo[idx << 240][1][s << 240].field_1280 + -getContributionInfo[idx << 240][1][s << 240].field_1536 + (48 * 24 * 3600) / 24 * 3600) wei
                                             gas 0 wei
                                        getContributionInfo[idx << 240][1][s << 240].field_1536 += 24 * 3600 * uint8(getContributionInfo[idx << 240][1][s << 240].field_1280 + -getContributionInfo[idx << 240][1][s << 240].field_1536 + (48 * 24 * 3600) / 24 * 3600) % 16777216
                                else:
                                    getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_0 = getContributionInfo[idx << 240][1][s << 240].field_0
                                    getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_256 = getContributionInfo[idx << 240][1][s << 240].field_256
                                    getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_512 = uint64((uint64(stor1.field_160) * uint8(100 * getContributionInfo[idx << 240][1][s << 240].field_0 / getContributionInfo[idx << 240][1][s << 240].field_256 + getContributionInfo[idx << 240][1][s << 240].field_0) * uint8(100 * getContributionInfo[idx << 240][1][s << 240].field_0 / getContributionInfo[idx << 240][1][s << 240].field_256 + getContributionInfo[idx << 240][1][s << 240].field_0)) + (uint64(stor2.field_0) * uint8(100 * getContributionInfo[idx << 240][1][s << 240].field_0 / getContributionInfo[idx << 240][1][s << 240].field_256 + getContributionInfo[idx << 240][1][s << 240].field_0)) + uint64(stor2.field_64)) / 10000 or Mask(240, 16, getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_512)
                                    getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_768 = getContributionInfo[idx << 240][1][s << 240].field_0 + getContributionInfo[idx << 240][1][s << 240].field_256 / 10000 * getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_512 / 2
                                    getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1023 = 0
                                    getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1024 = 1
                                    getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1280 = block.timestamp
                                    getContributionInfo[idx << 240][1][getContributionInfo[idx << 240].field_0].field_1536 = block.timestamp
                                    getContributionInfo[idx << 240].field_160 = Mask(96, 0, getContributionInfo[idx << 240].field_160 + 1)
                                    getContributionInfo[idx << 240][1][s << 240].field_1792 = 1
                                    if eth.balance(this.address) - cashForHardwareReturn - freezedCash >= uint8(getContributionInfo[idx << 240][1][s << 240].field_1280 + -getContributionInfo[idx << 240][1][s << 240].field_1536 + (48 * 24 * 3600) / 24 * 3600) * getContributionInfo[idx << 240][1][s << 240].field_768:
                                        call getContributionInfo[idx << 240].field_0 with:
                                           value getContributionInfo[idx << 240][1][s << 240].field_768 * uint8(getContributionInfo[idx << 240][1][s << 240].field_1280 + -getContributionInfo[idx << 240][1][s << 240].field_1536 + (48 * 24 * 3600) / 24 * 3600) wei
                                             gas 0 wei
                                        getContributionInfo[idx << 240][1][s << 240].field_1536 += 24 * 3600 * uint8(getContributionInfo[idx << 240][1][s << 240].field_1280 + -getContributionInfo[idx << 240][1][s << 240].field_1536 + (48 * 24 * 3600) / 24 * 3600) % 16777216
                mem[0] = uint16(idx)
                mem[32] = 8
                s = sha3(s << 240, sha3(idx << 240, 8) + 1)
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        call address(stor1.field_0) with:
           value eth.balance(this.address) - cashForHardwareReturn - freezedCash wei
             gas 0 wei
}



}
