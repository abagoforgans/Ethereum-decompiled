contract main {


// =======================  Init code  ======================


uint16 stor0; offset 160
address stor0;
uint8 stor2;
uint32 stor2; offset 168
address stor2; offset 8
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    uint16(stor0.field_160) = 0
    uint8(stor2.field_0) = 0
    uint32(stor2.field_168) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[9392 len 32] < code.data[9424 len 32]
    stor3 = code.data[9392 len 32]
    stor4 = code.data[9424 len 32]
    stor5 = code.data[9264 len 32]
    stor6 = code.data[9296 len 32]
    stor7 = code.data[9328 len 32]
    stor8 = code.data[9360 len 32]
    address(stor2.field_8) = code.data[9468 len 20]
    return code.data[394 len 8870]
}



// =====================  Runtime code  =====================


uint16 totalModerators; offset 160
address owner;
array of uint8 stor1;
mapping of struct countBid;
uint8 stor2;
uint32 stor2;
uint32 totalBid; offset 168
address tokenContractAddress; offset 8
uint256 startTime;
uint256 endTime;
uint256 bidETHMin;
uint256 bidETHIncrement;
uint256 bidEMONTMin;
uint256 bidEMONTIncrement;
mapping of struct bidInfo;

function moderators(address arg1) {
    return bool(uint8(stor1[arg1]))
}

function bidETHMin() {
    return bidETHMin
}

function endTime() {
    return endTime
}

function totalModerators() {
    return totalModerators
}

function bidEMONTIncrement() {
    return bidEMONTIncrement
}

function tokenContract() {
    return tokenContractAddress
}

function getBidInfo(uint32 arg1) {
    return bidInfo[arg1 << 224].field_0, 
           uint8(bidInfo[arg1 << 224].field_768),
           uint256(bidInfo[arg1 << 224].field_256),
           uint256(bidInfo[arg1 << 224].field_512)
}

function startTime() {
    return startTime
}

function totalBid() {
    return totalBid
}

function owner() {
    return owner
}

function bidEMONTMin() {
    return bidEMONTMin
}

function countBid(uint8 arg1) {
    return uint256(countBid[arg1 << 248].field_0)
}

function bidETHIncrement() {
    return bidETHIncrement
}

function isMaintaining() {
    return bool(uint8(stor2.field_0))
}

function _fallback() payable {
    revert
}

function ChangeOwner(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function UpdateMaintaining(bool arg1) {
    require msg.sender == owner
    uint8(stor2.field_0) = uint8(arg1)
}

function AddModerator(address arg1) {
    require msg.sender == owner
    if not uint8(stor1[address(arg1)]):
        uint8(stor1[address(arg1)]) = 1
        totalModerators = uint16(totalModerators + 1)
}

function RemoveModerator(address arg1) {
    require msg.sender == owner
    if bool(uint8(stor1[address(arg1)])) == 1:
        uint8(stor1[address(arg1)]) = 0
        totalModerators = uint16(totalModerators - 1)
}

function withdrawEther(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require bool(uint8(stor1[address(msg.sender)])) == 1
    require block.timestamp >= endTime
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require bool(uint8(stor1[address(msg.sender)])) == 1
    require tokenContractAddress
    require block.timestamp >= endTime
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function getLowestBid(uint8 arg1) {
    idx = 0
    s = 0
    while idx < uint256(countBid[arg1 << 248].field_0):
        require idx < uint256(countBid[arg1 << 248].field_0)
        mem[0] = stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor10', 10)))[uint8(idx)]
        mem[32] = 9
        if s:
            if uint256(bidInfo[uint32(stor10[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224)].field_256) >= s:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = uint256(bidInfo[uint32(stor10[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224)].field_256)
        continue 
    return s
}

function getBidBySiteIndex(uint8 arg1, uint256 arg2) {
    require arg2 < uint256(countBid[arg1 << 248].field_0)
    if stor('array', ('div', 0.125, ('param', 'arg2')), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor10', 10)))[uint8(arg2)] <= 0:
        return 0, uint32(countBid[arg1 << 248][0.125 / arg2].field_(32 * arg2 % 8) - 224), 0, 0, 0
    return bidInfo[uint32(stor10[arg1 << 248][0.125 / arg2].field_(32 * arg2 % 8) - 224)].field_0, 
           uint32(countBid[arg1 << 248][0.125 / arg2].field_(32 * arg2 % 8) - 224),
           uint8(bidInfo[uint32(stor10[arg1 << 248][0.125 / arg2].field_(32 * arg2 % 8) - 224)].field_768),
           uint256(bidInfo[uint32(stor10[arg1 << 248][0.125 / arg2].field_(32 * arg2 % 8) - 224)].field_256),
           uint256(bidInfo[uint32(stor10[arg1 << 248][0.125 / arg2].field_(32 * arg2 % 8) - 224)].field_512)
}

function placeETHBid(uint8 arg1) payable {
    require not uint8(stor2.field_0)
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require arg1 > 0
    require arg1 <= 52
    require ext_code.size(msg.sender) <= 0
    require msg.value >= bidETHMin
    totalBid = uint32(totalBid + 1)
    bidInfo[uint32(stor2.field_0)].field_0 = msg.sender
    Mask(96, 0, bidInfo[uint32(stor2.field_0)].field_160) = totalBid
    uint256(bidInfo[uint32(stor2.field_0)].field_256) = msg.value
    uint256(bidInfo[uint32(stor2.field_0)].field_512) = block.timestamp
    uint8(bidInfo[uint32(stor2.field_0)].field_768) = arg1
    if uint256(countBid[arg1 << 248].field_0) < 10:
        idx = 0
        while idx < uint256(countBid[arg1 << 248].field_0):
            mem[0] = stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor10', 10)))[uint8(idx)]
            mem[32] = 9
            require bidInfo[uint32(stor10[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224)].field_0 != msg.sender
            idx = idx + 1
            continue 
        uint256(countBid[arg1 << 248].field_0)++
        if not uint256(countBid[arg1 << 248].field_0) <= uint256(countBid[arg1 << 248].field_0) + 1:
            idx = uint256(countBid[arg1 << 248].field_0) + 8 / 8
            while uint256(countBid[arg1 << 248].field_0) + 7 / 8 > idx:
                uint256(countBid[arg1 << 248][idx].field_0) = 0
                idx = idx + 1
                continue 
        uint256(countBid[arg1 << 248][Mask(253, 0, countBid[arg1 << 248].field_3)].field_0) = totalBid * 256^(4 * countBid[arg1 << 248].field_0 % 8) or !(test266151307() * 256^(4 * countBid[arg1 << 248].field_0 % 8)) and uint256(countBid[arg1 << 248][Mask(253, 0, countBid[arg1 << 248].field_3)].field_0)
    else:
        require 0 < uint256(countBid[arg1 << 248].field_0)
        s = 0
        t = 0
        idx = 0
        while idx < uint256(countBid[arg1 << 248].field_0):
            mem[0] = stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor10', 10)))[uint8(idx)]
            mem[32] = 9
            require bidInfo[uint32(stor10[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224)].field_0 != msg.sender
            if uint256(bidInfo[uint32(stor10[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224)][s].field_256):
                if uint256(bidInfo[uint32(stor10[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224)].field_256) >= uint256(bidInfo[uint32(stor10[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224)][s].field_256):
                    if uint256(bidInfo[uint32(stor10[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224)].field_256) != uint256(bidInfo[uint32(stor10[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224)][s].field_256):
                        s = s
                        t = sha3(uint32(countBid[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224), 9)
                        idx = idx + 1
                        continue 
                    if uint32(bidInfo[uint32(stor10[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224)].field_160) <= uint32(bidInfo[uint32(stor10[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224)][s].field_160):
                        s = s
                        t = sha3(uint32(countBid[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224), 9)
                        idx = idx + 1
                        continue 
            s = sha3(uint32(countBid[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224), 9)
            t = sha3(uint32(countBid[arg1 << 248][0.125 / idx].field_(32 * idx % 8) - 224), 9)
            idx = idx + 1
            continue 
        require msg.value >= uint256(stor1[s]) + bidETHIncrement
        require 0 < uint256(countBid[arg1 << 248].field_0)
        uint32(countBid[arg1 << 248].field_0) = totalBid
        call stor[s] with:
           value uint256(stor1[s]) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    emit EventPlaceBid(arg1 << 248, uint32(stor2.field_0), msg.value, msg.sender);
}

function placeEMONTBid(address arg1, uint8 arg2, uint256 arg3) {
    require tokenContractAddress
    require not uint8(stor2.field_0)
    require block.timestamp >= startTime
    require block.timestamp < endTime
    if owner != msg.sender:
        require bool(uint8(stor1[address(msg.sender)])) == 1
    if arg2 != 53:
        require arg2 == 54
    require ext_code.size(arg1) <= 0
    require arg3 >= bidEMONTMin
    totalBid = uint32(totalBid + 1)
    if uint256(countBid[arg2 << 248].field_0) < 10:
        idx = 0
        while idx < uint256(countBid[arg2 << 248].field_0):
            mem[0] = stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg2')), ('name', 'stor10', 10)))[uint8(idx)]
            mem[32] = 9
            require bidInfo[uint32(stor10[arg2 << 248][0.125 / idx].field_(32 * idx % 8) - 224)].field_0 != arg1
            idx = idx + 1
            continue 
        bidInfo[uint32(stor2.field_0)].field_0 = arg1
        Mask(96, 0, bidInfo[uint32(stor2.field_0)].field_160) = totalBid
        uint256(bidInfo[uint32(stor2.field_0)].field_256) = arg3
        uint256(bidInfo[uint32(stor2.field_0)].field_512) = block.timestamp
        uint256(countBid[arg2 << 248].field_0)++
        if not uint256(countBid[arg2 << 248].field_0) <= uint256(countBid[arg2 << 248].field_0) + 1:
            idx = uint256(countBid[arg2 << 248].field_0) + 8 / 8
            while uint256(countBid[arg2 << 248].field_0) + 7 / 8 > idx:
                uint256(countBid[arg2 << 248][idx].field_0) = 0
                idx = idx + 1
                continue 
        uint256(countBid[arg2 << 248][Mask(253, 0, countBid[arg2 << 248].field_3)].field_0) = totalBid * 256^(4 * countBid[arg2 << 248].field_0 % 8) or !(test266151307() * 256^(4 * countBid[arg2 << 248].field_0 % 8)) and uint256(countBid[arg2 << 248][Mask(253, 0, countBid[arg2 << 248].field_3)].field_0)
    else:
        require 0 < uint256(countBid[arg2 << 248].field_0)
        s = 0
        t = 0
        idx = 0
        while idx < uint256(countBid[arg2 << 248].field_0):
            mem[0] = stor('array', ('div', 0.125, ('var', 0)), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg2')), ('name', 'stor10', 10)))[uint8(idx)]
            mem[32] = 9
            require bidInfo[uint32(stor10[arg2 << 248][0.125 / idx].field_(32 * idx % 8) - 224)].field_0 != arg1
            if uint256(bidInfo[uint32(stor10[arg2 << 248][0.125 / idx].field_(32 * idx % 8) - 224)][s].field_256):
                if uint256(bidInfo[uint32(stor10[arg2 << 248][0.125 / idx].field_(32 * idx % 8) - 224)].field_256) >= uint256(bidInfo[uint32(stor10[arg2 << 248][0.125 / idx].field_(32 * idx % 8) - 224)][s].field_256):
                    if uint256(bidInfo[uint32(stor10[arg2 << 248][0.125 / idx].field_(32 * idx % 8) - 224)].field_256) != uint256(bidInfo[uint32(stor10[arg2 << 248][0.125 / idx].field_(32 * idx % 8) - 224)][s].field_256):
                        s = s
                        t = sha3(uint32(countBid[arg2 << 248][0.125 / idx].field_(32 * idx % 8) - 224), 9)
                        idx = idx + 1
                        continue 
                    if uint32(bidInfo[uint32(stor10[arg2 << 248][0.125 / idx].field_(32 * idx % 8) - 224)].field_160) <= uint32(bidInfo[uint32(stor10[arg2 << 248][0.125 / idx].field_(32 * idx % 8) - 224)][s].field_160):
                        s = s
                        t = sha3(uint32(countBid[arg2 << 248][0.125 / idx].field_(32 * idx % 8) - 224), 9)
                        idx = idx + 1
                        continue 
            s = sha3(uint32(countBid[arg2 << 248][0.125 / idx].field_(32 * idx % 8) - 224), 9)
            t = sha3(uint32(countBid[arg2 << 248][0.125 / idx].field_(32 * idx % 8) - 224), 9)
            idx = idx + 1
            continue 
        require arg3 >= uint256(stor1[s]) + bidEMONTIncrement
        bidInfo[uint32(stor2.field_0)].field_0 = arg1
        Mask(96, 0, bidInfo[uint32(stor2.field_0)].field_160) = totalBid
        uint256(bidInfo[uint32(stor2.field_0)].field_256) = arg3
        uint256(bidInfo[uint32(stor2.field_0)].field_512) = block.timestamp
        require 0 < uint256(countBid[arg2 << 248].field_0)
        uint32(countBid[arg2 << 248].field_0) = totalBid
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor[s], uint256(stor1[s])
        require ext_call.success
    emit EventPlaceBid(arg2 << 248, uint32(stor2.field_0), arg3, arg1);
}



}
