contract main {


// =======================  Init code  ======================


uint256 stor2;
address stor3;
array of struct stor4;
uint256 stor6;
address stor7;

function _fallback() payable {
    stor2 = 1
    stor6 = 0
    require not msg.value
    stor3 = address(code.data[7112 len 32])
    stor7 = address(code.data[7112 len 32])
    mem[704] = 0
    mem[736] = 0
    mem[768] = 0
    mem[800] = 0
    mem[832] = 0
    mem[864] = 0
    mem[896] = 0
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = 4 * stor4.length + 1
        while 4 * stor4.length > idx:
            stor4[idx].field_0 = 0
            stor4[idx].field_256 = 0
            stor4[idx].field_512 = 0
            uint16(stor4[idx].field_768) = 0
            idx = idx + 4
            continue 
    s = 0
    idx = 704
    while 928 > idx:
        stor4[stor4.length].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor4[stor4.length].field_0
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 7
    s = (4 * stor4.length) + sha3(4)
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (4 * stor4.length) - (5 * None + 3 / 32) + (None * None + 3 / 32)
    while (4 * stor4.length) + 1 > idx:
        uint8(stor4[idx].field_0) = 0
        idx = idx + 1
        continue 
    stor4[stor4.length].field_256 = 0
    stor4[stor4.length].field_512 = 0
    uint8(stor4[stor4.length].field_768) = 0
    Mask(248, 0, stor4[stor4.length].field_776) = 0
    return code.data[752 len 6360]
}



// =====================  Runtime code  =====================


#
#  - convertGene(uint8[7] arg1)
#  - openCarousel()
#
uint8 stor0; offset 5
uint8 stor0;
uint8 currentGene;
uint256 lastBlockNumber;
uint256 stor2;
address bonusPoolAddress;
array of struct cLotteries;
address finalLotteryAddress;
uint256 spoolAmount;
address dogCoreAddress;

function lastBlockNumber() {
    return lastBlockNumber
}

function bonusPool() {
    return bonusPoolAddress
}

function SpoolAmount() {
    return spoolAmount
}

function finalLottery() {
    return finalLotteryAddress
}

function currentGene() {
    return currentGene
}

function dogCore() {
    return dogCoreAddress
}

function CLotteries(uint256 arg1) {
    require arg1 < cLotteries.length
    return cLotteries[arg1].field_256, 
           cLotteries[arg1].field_512,
           bool(uint8(cLotteries[arg1].field_768)),
           bool(uint8(cLotteries[arg1].field_776))
}

function _fallback() payable {
    revert
}

function getCurrentTerm() {
    return (cLotteries.length - 1)
}

function toSPool(uint256 arg1) {
    require finalLotteryAddress == msg.sender
    spoolAmount += arg1
}

function rewardLottery(bool arg1) {
    require finalLotteryAddress == msg.sender
    require cLotteries.length - 1 < cLotteries.length
    uint8(cLotteries[cLotteries.length - 1].field_768) = 1
    Mask(248, 0, cLotteries[cLotteries.length - 1].field_776) = Mask(248, 0, arg1)
}

function setFinalLotteryAddress(address arg1) {
    require ext_code.size(dogCoreAddress)
    call dogCoreAddress.ceoAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    finalLotteryAddress = arg1
}

function toLotteryPool(uint256 arg1) {
    require ext_code.size(dogCoreAddress)
    call dogCoreAddress.cfoAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require spoolAmount >= arg1
    spoolAmount -= arg1
}

function _isCarousal(uint256 arg1) {
    if arg1 <= 1:
        return (arg1 > 1)
    require arg1 - 2 < cLotteries.length
    if not uint8(cLotteries[arg1 - 2].field_776):
        return bool(uint8(cLotteries[arg1 - 2].field_776))
    require arg1 - 1 < cLotteries.length
    return bool(uint8(cLotteries[arg1 - 1].field_776))
}

function convertGeneArray(uint256 arg1) {
    mem[320] = 0
    mem[352 len 864] = 0
    mem[1216] = 0
    mem[1248] = 0
    mem[1280 len 160] = 0
    s = 0
    idx = 0
    while idx < 28:
        require 2^((5 * idx) + 5)
        require 2^(5 * idx)
        require idx < 28
        mem[(32 * idx) + 320] = uint8(arg1 % 2^((5 * idx) + 5) / 2^(5 * idx))
        s = arg1 % 2^((5 * idx) + 5) / 2^(5 * idx)
        idx = idx + 1
        continue 
    idx = 0
    while idx < 7:
        require 4 * idx < 28
        require idx < 7
        mem[(32 * idx) + 1216] = mem[(128 * idx) + 351 len 1]
        idx = idx + 1
        continue 
    return memory
      from 1216
       len 224
}

function getCLottery() {
    require cLotteries.length - 1 < cLotteries.length
    idx = 320
    s = 0
    while 544 > idx + 32:
        mem[idx + 32] = stor('array', ('mul', 4, ('add', -1, ('stor', 256, 0, ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    if cLotteries.length - 1 < cLotteries.length:
        return mem[352 len 192] >> 1536, 
               cLotteries[cLotteries.length - 1].field_256,
               cLotteries[cLotteries.length - 1].field_512,
               bool(uint8(cLotteries[cLotteries.length - 1].field_768)),
               cLotteries.length - 1
    revert
}

function openLottery(uint8 arg1) {
    require arg1 < 7
    require cLotteries.length - 1 < cLotteries.length
    if not currentGene:
        if cLotteries[cLotteries.length - 1].field_512 > 0:
            if not uint8(cLotteries[cLotteries.length - 1].field_768):
                require arg1 < 7
                emit OpenLottery(arg1 << 248, uint8(stor[(uint8(arg1) / 32) + ('name', 'cLotteries', 4) + (4 * cLotteries.length - 1)].field_(8 * arg1 % 32) - 248), cLotteries.length - 1, cLotteries[cLotteries.length - 1].field_512, cLotteries[cLotteries.length - 1].field_256);
                return uint8(stor[('name', 'cLotteries', 4) + (4 * cLotteries.length - 1) + (uint8(arg1) / 32)].field_(8 * arg1 % 32) - 248), 
                       1
    if lastBlockNumber == block.number:
        require arg1 < 7
        emit OpenLottery(arg1 << 248, uint8(stor[(uint8(arg1) / 32) + ('name', 'cLotteries', 4) + (4 * cLotteries.length - 1)].field_(8 * arg1 % 32) - 248), cLotteries.length - 1, cLotteries[cLotteries.length - 1].field_512, cLotteries[cLotteries.length - 1].field_256);
        return uint8(stor[('name', 'cLotteries', 4) + (4 * cLotteries.length - 1) + (uint8(arg1) / 32)].field_(8 * arg1 % 32) - 248), 
               2
    if currentGene:
        require ext_code.size(this.address)
        call this.address.0x760df4fe with:
             gas gas_remaining - 710 wei
            args (cLotteries.length - 1)
        require ext_call.success
        require not ext_call.return_data[0]
        if currentGene != 6:
            stor2 = block.timestamp
            require cLotteries.length - 1 < cLotteries.length
            require currentGene < 7
            stor[stor0.field_5 % 8 + ('name', 'cLotteries', 4) + (4 * cLotteries.length - 1)].field_0 = uint8((sha3(block.timestamp, block.difficulty) % 12) + 1) * 256^stor0.field_0 % 32 or !(255 * 256^stor0.field_0 % 32) and stor[stor0.field_5 % 8 + ('name', 'cLotteries', 4) + (4 * cLotteries.length - 1)].field_0
            emit OpenLottery(currentGene, (sha3(block.timestamp, block.difficulty) % 12) + 1 << 248, cLotteries.length - 1, 0, 0);
            currentGene = uint8(currentGene + 1)
            lastBlockNumber = block.number
            return (sha3(block.timestamp, block.difficulty) % 12) + 1 << 248, 0
        if eth.balance(bonusPoolAddress) <= spoolAmount:
            require arg1 < 7
            emit OpenLottery(arg1 << 248, uint8(stor[(uint8(arg1) / 32) + ('name', 'cLotteries', 4) + (4 * cLotteries.length - 1)].field_(8 * arg1 % 32) - 248), cLotteries.length - 1, 0, 0);
            return uint8(stor[('name', 'cLotteries', 4) + (4 * cLotteries.length - 1) + (uint8(arg1) / 32)].field_(8 * arg1 % 32) - 248), 
                   3
        stor2 = block.timestamp
        require cLotteries.length - 1 < cLotteries.length
        require currentGene < 7
        stor[('name', 'cLotteries', 4) + (4 * cLotteries.length - 1) + stor0.field_5 % 8].field_0 = stor[('name', 'cLotteries', 4) + (4 * cLotteries.length - 1) + stor0.field_5 % 8].field_0 and !(255 * 256^stor0.field_0 % 32) or 256^stor0.field_0 % 32 * uint8((sha3(block.timestamp, block.difficulty) % 8) + 1)
        emit OpenLottery(currentGene, (sha3(block.timestamp, block.difficulty) % 8) + 1 << 248, cLotteries.length - 1, block.number, eth.balance(bonusPoolAddress));
        currentGene = 0
        require cLotteries.length - 1 < cLotteries.length
        cLotteries[cLotteries.length - 1].field_512 = block.number
        cLotteries[cLotteries.length - 1].field_256 = eth.balance(bonusPoolAddress)
    else:
        if bool(uint8(cLotteries[cLotteries.length - 1].field_768)) != 1:
            require ext_code.size(this.address)
            call this.address.0x760df4fe with:
                 gas gas_remaining - 710 wei
                args (cLotteries.length - 1)
            require ext_call.success
            require not ext_call.return_data[0]
            if currentGene != 6:
                stor2 = block.timestamp
                require cLotteries.length - 1 < cLotteries.length
                require currentGene < 7
                stor[stor0.field_5 % 8 + ('name', 'cLotteries', 4) + (4 * cLotteries.length - 1)].field_0 = uint8((sha3(block.timestamp, block.difficulty) % 12) + 1) * 256^stor0.field_0 % 32 or !(255 * 256^stor0.field_0 % 32) and stor[stor0.field_5 % 8 + ('name', 'cLotteries', 4) + (4 * cLotteries.length - 1)].field_0
                emit OpenLottery(currentGene, (sha3(block.timestamp, block.difficulty) % 12) + 1 << 248, cLotteries.length - 1, 0, 0);
                currentGene = uint8(currentGene + 1)
                lastBlockNumber = block.number
                return (sha3(block.timestamp, block.difficulty) % 12) + 1 << 248, 0
            if eth.balance(bonusPoolAddress) <= spoolAmount:
                require arg1 < 7
                emit OpenLottery(arg1 << 248, uint8(stor[(uint8(arg1) / 32) + ('name', 'cLotteries', 4) + (4 * cLotteries.length - 1)].field_(8 * arg1 % 32) - 248), cLotteries.length - 1, 0, 0);
                return uint8(stor[('name', 'cLotteries', 4) + (4 * cLotteries.length - 1) + (uint8(arg1) / 32)].field_(8 * arg1 % 32) - 248), 
                       3
            stor2 = block.timestamp
            require cLotteries.length - 1 < cLotteries.length
            require currentGene < 7
            stor[('name', 'cLotteries', 4) + (4 * cLotteries.length - 1) + stor0.field_5 % 8].field_0 = stor[('name', 'cLotteries', 4) + (4 * cLotteries.length - 1) + stor0.field_5 % 8].field_0 and !(255 * 256^stor0.field_0 % 32) or 256^stor0.field_0 % 32 * uint8((sha3(block.timestamp, block.difficulty) % 8) + 1)
            emit OpenLottery(currentGene, (sha3(block.timestamp, block.difficulty) % 8) + 1 << 248, cLotteries.length - 1, block.number, eth.balance(bonusPoolAddress));
            currentGene = 0
            require cLotteries.length - 1 < cLotteries.length
            cLotteries[cLotteries.length - 1].field_512 = block.number
            cLotteries[cLotteries.length - 1].field_256 = eth.balance(bonusPoolAddress)
        else:
            mem[672] = 0
            mem[704] = 0
            mem[736] = 0
            mem[768] = 0
            mem[800] = 0
            mem[832] = 0
            mem[864] = 0
            cLotteries.length++
            if not cLotteries.length <= cLotteries.length + 1:
                idx = 4 * cLotteries.length + 1
                while 4 * cLotteries.length > idx:
                    cLotteries[idx].field_0 = 0
                    cLotteries[idx].field_256 = 0
                    cLotteries[idx].field_512 = 0
                    uint16(cLotteries[idx].field_768) = 0
                    idx = idx + 4
                    continue 
            s = 0
            idx = 672
            while 896 > idx:
                cLotteries[cLotteries.length].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and cLotteries[cLotteries.length].field_0
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 7
            s = (4 * cLotteries.length) + sha3(4)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (4 * cLotteries.length) - (5 * None + 3 / 32) + (None * None + 3 / 32)
            while (4 * cLotteries.length) + 1 > idx:
                uint8(cLotteries[idx].field_0) = 0
                idx = idx + 1
                continue 
            cLotteries[cLotteries.length].field_256 = 0
            cLotteries[cLotteries.length].field_512 = 0
            uint8(cLotteries[cLotteries.length].field_768) = 0
            Mask(248, 0, cLotteries[cLotteries.length].field_776) = 0
            require ext_code.size(this.address)
            call this.address.0x760df4fe with:
                 gas gas_remaining - 710 wei
                args cLotteries.length
            require ext_call.success
            require not ext_call.return_data[0]
            if currentGene != 6:
                stor2 = block.timestamp
                require cLotteries.length < cLotteries.length
                require currentGene < 7
                stor[stor0.field_5 % 8 + ('name', 'cLotteries', 4) + (4 * cLotteries.length)].field_0 = uint8((sha3(block.timestamp, block.difficulty) % 12) + 1) * 256^stor0.field_0 % 32 or !(255 * 256^stor0.field_0 % 32) and stor[stor0.field_5 % 8 + ('name', 'cLotteries', 4) + (4 * cLotteries.length)].field_0
                emit OpenLottery(currentGene, (sha3(block.timestamp, block.difficulty) % 12) + 1 << 248, cLotteries.length, 0, 0);
                currentGene = uint8(currentGene + 1)
                lastBlockNumber = block.number
                return (sha3(block.timestamp, block.difficulty) % 12) + 1 << 248, 0
            if eth.balance(bonusPoolAddress) <= spoolAmount:
                require arg1 < 7
                emit OpenLottery(arg1 << 248, uint8(stor[(uint8(arg1) / 32) + ('name', 'cLotteries', 4) + (4 * cLotteries.length - 1)].field_(8 * arg1 % 32) - 248), cLotteries.length, 0, 0);
                return uint8(stor[('name', 'cLotteries', 4) + (4 * cLotteries.length - 1) + (uint8(arg1) / 32)].field_(8 * arg1 % 32) - 248), 
                       3
            stor2 = block.timestamp
            require cLotteries.length < cLotteries.length
            require currentGene < 7
            stor[('name', 'cLotteries', 4) + (4 * cLotteries.length) + stor0.field_5 % 8].field_0 = stor[('name', 'cLotteries', 4) + (4 * cLotteries.length) + stor0.field_5 % 8].field_0 and !(255 * 256^stor0.field_0 % 32) or 256^stor0.field_0 % 32 * uint8((sha3(block.timestamp, block.difficulty) % 8) + 1)
            emit OpenLottery(currentGene, (sha3(block.timestamp, block.difficulty) % 8) + 1 << 248, cLotteries.length, block.number, eth.balance(bonusPoolAddress));
            currentGene = 0
            require cLotteries.length < cLotteries.length
            cLotteries[cLotteries.length].field_512 = block.number
            cLotteries[cLotteries.length].field_256 = eth.balance(bonusPoolAddress)
    lastBlockNumber = block.number
    return (sha3(block.timestamp, block.difficulty) % 8) + 1 << 248, 0
}



}
