contract main {




// =====================  Runtime code  =====================


#
#  - calcKeysReceived(uint256 arg1, uint256 arg2)
#
const name = 'Ready Player ONE'

const symbol = 'RP1'


uint256 stor2;
uint256 airDropPot_;
uint256 airDropTracker_;
uint256 rID_;
mapping of uint256 pIDxAddr_;
mapping of uint256 pIDxName_;
mapping of struct plyr_;
mapping of struct plyrRnds_;
mapping of uint8 stor10;
mapping of struct round_;
mapping of uint256 rndTmEth_;
mapping of struct fees_;
mapping of struct potSplit_;
uint8 stor15;
uint256 stor72C6;
uint256 stor72C6;

function pIDxAddr_(address arg1) {
    return pIDxAddr_[arg1]
}

function airDropTracker_() {
    return airDropTracker_
}

function round_(uint256 arg1) {
    return round_[arg1].field_0, 
           round_[arg1].field_256,
           round_[arg1].field_512,
           bool(round_[arg1].field_768),
           round_[arg1].field_1024,
           round_[arg1].field_1280,
           round_[arg1].field_1536,
           round_[arg1].field_1792,
           round_[arg1].field_2048,
           round_[arg1].field_2304,
           round_[arg1].field_2560,
           round_[arg1].field_2816
}

function plyrNames_(uint256 arg1, bytes32 arg2) {
    return bool(stor10[arg1][arg2])
}

function fees_(uint256 arg1) {
    return fees_[arg1].field_0, fees_[arg1].field_256
}

function pIDxName_(bytes32 arg1) {
    return pIDxName_[arg1]
}

function rndTmEth_(uint256 arg1, uint256 arg2) {
    return rndTmEth_[arg1][arg2]
}

function rID_() {
    return rID_
}

function plyrRnds_(uint256 arg1, uint256 arg2) {
    return plyrRnds_[arg1][arg2].field_0, 
           plyrRnds_[arg1][arg2].field_256,
           plyrRnds_[arg1][arg2].field_512,
           plyrRnds_[arg1][arg2].field_768
}

function potSplit_(uint256 arg1) {
    return potSplit_[arg1].field_0, potSplit_[arg1].field_256
}

function activated_() {
    return bool(stor15)
}

function airDropPot_() {
    return airDropPot_
}

function plyr_(uint256 arg1) {
    return plyr_[arg1].field_0, 
           plyr_[arg1].field_256,
           plyr_[arg1].field_512,
           plyr_[arg1].field_768,
           plyr_[arg1].field_1024,
           plyr_[arg1].field_1280,
           plyr_[arg1].field_1536
}

function withdraw() {
    revert 
}

function _fallback() payable {
    revert 
}

function buyXid(uint256 arg1, uint256 arg2) payable {
    revert 
}

function buyXaddr(address arg1, uint256 arg2) payable {
    revert 
}

function buyXname(bytes32 arg1, uint256 arg2) payable {
    revert 
}

function reLoadXid(uint256 arg1, uint256 arg2, uint256 arg3) {
    revert 
}

function reLoadXname(bytes32 arg1, uint256 arg2, uint256 arg3) {
    revert 
}

function reLoadXaddr(address arg1, uint256 arg2, uint256 arg3) {
    revert 
}

function activate() {
    if stor15:
        revert with 0, 'fomo3d already activated'
    stor15 = 1
    rID_ = 1
    stor72C6 = block.timestamp - stor2
    stor72C6 = block.timestamp + 3600
}

function potSwap() payable {
    if msg.value + round_[stor5 + 1].field_1792 < round_[stor5 + 1].field_1792:
        revert with 0, 'SafeMath add failed'
    round_[stor5 + 1].field_1792 += msg.value
    emit onPotSwapDeposit(rID_ + 1, msg.value);
}

function receivePlayerNameList(uint256 arg1, bytes32 arg2) {
    if msg.sender != 0x15247cf99b5870f54ea17e85e1af8667a58a6644:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'your not playerNames contract... hmmm..'
    if not stor10[arg1][arg2]:
        stor10[arg1][arg2] = 1
}

function getTimeLeft() {
    if block.timestamp >= round_[stor5].field_512:
        return 0
    if block.timestamp <= round_[stor5].field_1024 + stor2:
        if block.timestamp > stor2 + round_[stor5].field_1024:
            revert with 0, 'SafeMath sub failed'
        return (stor2 + round_[stor5].field_1024 - block.timestamp)
    if block.timestamp > round_[stor5].field_512:
        revert with 0, 'SafeMath sub failed'
    return (round_[stor5].field_512 - block.timestamp)
}

function getBuyPrice() {
    if block.timestamp <= round_[stor5].field_1024 + stor2:
        return 75 * 10^12
    if block.timestamp > round_[stor5].field_512:
        if block.timestamp <= round_[stor5].field_512:
            return 75 * 10^12
        if round_[stor5].field_0:
            return 75 * 10^12
    if round_[stor5].field_1280 + 10^18 < round_[stor5].field_1280:
        revert with 0, 'SafeMath add failed'
    require 10^18 > round_[stor5].field_1280 + 10^18
    revert with 0, 'SafeMath sub failed'
}

function getCurrentRoundInfo() {
    return round_[stor5].field_2304, 
           rID_,
           round_[stor5].field_1280,
           round_[stor5].field_512,
           round_[stor5].field_1024,
           round_[stor5].field_1792,
           round_[stor5].field_256 + (10 * round_[stor5].field_0),
           plyr_[stor11[stor5].field_0].field_0,
           plyr_[stor11[stor5].field_0].field_256,
           rndTmEth_[stor5][0],
           rndTmEth_[stor5][1],
           rndTmEth_[stor5][2],
           rndTmEth_[stor5][3],
           airDropTracker_ + (1000 * airDropPot_)
}

function receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) {
    if msg.sender != 0x15247cf99b5870f54ea17e85e1af8667a58a6644:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'your not playerNames contract... hmmm..'
    if arg1 != pIDxAddr_[address(arg2)]:
        pIDxAddr_[address(arg2)] = arg1
    if arg1 != pIDxName_[arg3]:
        pIDxName_[arg3] = arg1
    if plyr_[arg1].field_0 != arg2:
        plyr_[arg1].field_0 = arg2
    if arg3 != plyr_[arg1].field_256:
        plyr_[arg1].field_256 = arg3
    if arg4 != plyr_[arg1].field_1536:
        plyr_[arg1].field_1536 = arg4
    if not stor10[arg1][arg3]:
        stor10[arg1][arg3] = 1
}

function iWantXKeys(uint256 arg1) {
    require block.timestamp > round_[stor5].field_1024 + stor2
    if block.timestamp <= round_[stor5].field_512:
        if arg1 + round_[stor5].field_1280 < round_[stor5].field_1280:
            revert with 0, 'SafeMath add failed'
        if arg1 > arg1 + round_[stor5].field_1280:
            revert with 0, 'SafeMath sub failed'
    else:
        if block.timestamp > round_[stor5].field_512:
            if not round_[stor5].field_0:
                if arg1 + round_[stor5].field_1280 < round_[stor5].field_1280:
                    revert with 0, 'SafeMath add failed'
                if arg1 > arg1 + round_[stor5].field_1280:
                    revert with 0, 'SafeMath sub failed'
    revert 
}

function getPlayerInfoByAddress(address arg1) {
    if not round_[stor8[stor6[address(arg1)]].field_1280].field_2048:
        if plyrRnds_[stor6[address(arg1)]][stor8[stor6[address(arg1)]].field_1280].field_512 > 0:
            revert with 0, 'SafeMath sub failed'
        if -plyrRnds_[stor6[address(arg1)]][stor8[stor6[address(arg1)]].field_1280].field_512 + plyr_[stor6[address(arg1)]].field_768 < plyr_[stor6[address(arg1)]].field_768:
            revert with 0, 'SafeMath add failed'
        return pIDxAddr_[address(arg1)], 
               plyr_[stor6[address(arg1)]].field_256,
               plyrRnds_[stor6[address(arg1)]][stor5].field_256,
               plyr_[stor6[address(arg1)]].field_512,
               -plyrRnds_[stor6[address(arg1)]][stor8[stor6[address(arg1)]].field_1280].field_512 + plyr_[stor6[address(arg1)]].field_768,
               plyr_[stor6[address(arg1)]].field_1024,
               plyrRnds_[stor6[address(arg1)]][stor5].field_0
    if plyrRnds_[stor6[address(arg1)]][stor8[stor6[address(arg1)]].field_1280].field_256 * round_[stor8[stor6[address(arg1)]].field_1280].field_2048 / round_[stor8[stor6[address(arg1)]].field_1280].field_2048 != plyrRnds_[stor6[address(arg1)]][stor8[stor6[address(arg1)]].field_1280].field_256:
        revert with 0, 'SafeMath mul failed'
    if plyrRnds_[stor6[address(arg1)]][stor8[stor6[address(arg1)]].field_1280].field_512 > plyrRnds_[stor6[address(arg1)]][stor8[stor6[address(arg1)]].field_1280].field_256 * round_[stor8[stor6[address(arg1)]].field_1280].field_2048 / 10^18:
        revert with 0, 'SafeMath sub failed'
    if (plyrRnds_[stor6[address(arg1)]][stor8[stor6[address(arg1)]].field_1280].field_256 * round_[stor8[stor6[address(arg1)]].field_1280].field_2048 / 10^18) - plyrRnds_[stor6[address(arg1)]][stor8[stor6[address(arg1)]].field_1280].field_512 + plyr_[stor6[address(arg1)]].field_768 < plyr_[stor6[address(arg1)]].field_768:
        revert with 0, 'SafeMath add failed'
    return pIDxAddr_[address(arg1)], 
           plyr_[stor6[address(arg1)]].field_256,
           plyrRnds_[stor6[address(arg1)]][stor5].field_256,
           plyr_[stor6[address(arg1)]].field_512,
           (plyrRnds_[stor6[address(arg1)]][stor8[stor6[address(arg1)]].field_1280].field_256 * round_[stor8[stor6[address(arg1)]].field_1280].field_2048 / 10^18) - plyrRnds_[stor6[address(arg1)]][stor8[stor6[address(arg1)]].field_1280].field_512 + plyr_[stor6[address(arg1)]].field_768,
           plyr_[stor6[address(arg1)]].field_1024,
           plyrRnds_[stor6[address(arg1)]][stor5].field_0
}

function registerNameXID(string arg1, uint256 arg2, bool arg3) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
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
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                require idx + 1 < arg1.length
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                    revert with 0, 'string cannot contain consecutive spaces'
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= '0':
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= '9':
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < '[':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
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
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    require ext_code.size(0x15247cf99b5870f54ea17e85e1af8667a58a6644)
    call 0x15247cf99b5870f54ea17e85e1af8667a58a6644.0xc0942dfd with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, mem[128], arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    emit onNewName(bool(ext_call.return_data[0]), ext_call.return_data[32], plyr_[ext_call.return_data[32]].field_0, plyr_[ext_call.return_data[32]].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
}

function registerNameXname(string arg1, bytes32 arg2, bool arg3) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
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
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                require idx + 1 < arg1.length
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                    revert with 0, 'string cannot contain consecutive spaces'
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= '0':
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= '9':
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < '[':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
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
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    require ext_code.size(0x15247cf99b5870f54ea17e85e1af8667a58a6644)
    call 0x15247cf99b5870f54ea17e85e1af8667a58a6644.0x745ea0c1 with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, mem[128], arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    emit onNewName(bool(ext_call.return_data[0]), ext_call.return_data[32], plyr_[ext_call.return_data[32]].field_0, plyr_[ext_call.return_data[32]].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
}

function registerNameXaddr(string arg1, address arg2, bool arg3) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
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
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                require idx + 1 < arg1.length
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                    revert with 0, 'string cannot contain consecutive spaces'
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= '0':
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= '9':
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < '[':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
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
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    require ext_code.size(0x15247cf99b5870f54ea17e85e1af8667a58a6644)
    call 0x15247cf99b5870f54ea17e85e1af8667a58a6644.0xaa4d490b with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, mem[128], address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    emit onNewName(bool(ext_call.return_data[0]), ext_call.return_data[32], plyr_[ext_call.return_data[32]].field_0, plyr_[ext_call.return_data[32]].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
}

function getPlayerVaults(uint256 arg1) {
    if block.timestamp <= round_[stor5].field_512:
        if not round_[stor8[arg1].field_1280].field_2048:
            if plyrRnds_[arg1][stor8[arg1].field_1280].field_512 > 0:
                revert with 0, 'SafeMath sub failed'
            if -plyrRnds_[arg1][stor8[arg1].field_1280].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                revert with 0, 'SafeMath add failed'
            return plyr_[arg1].field_512, 
                   -plyrRnds_[arg1][stor8[arg1].field_1280].field_512 + plyr_[arg1].field_768,
                   plyr_[arg1].field_1024
        if plyrRnds_[arg1][stor8[arg1].field_1280].field_256 * round_[stor8[arg1].field_1280].field_2048 / round_[stor8[arg1].field_1280].field_2048 != plyrRnds_[arg1][stor8[arg1].field_1280].field_256:
            revert with 0, 'SafeMath mul failed'
        if plyrRnds_[arg1][stor8[arg1].field_1280].field_512 > plyrRnds_[arg1][stor8[arg1].field_1280].field_256 * round_[stor8[arg1].field_1280].field_2048 / 10^18:
            revert with 0, 'SafeMath sub failed'
        if (plyrRnds_[arg1][stor8[arg1].field_1280].field_256 * round_[stor8[arg1].field_1280].field_2048 / 10^18) - plyrRnds_[arg1][stor8[arg1].field_1280].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
            revert with 0, 'SafeMath add failed'
        return plyr_[arg1].field_512, 
               (plyrRnds_[arg1][stor8[arg1].field_1280].field_256 * round_[stor8[arg1].field_1280].field_2048 / 10^18) - plyrRnds_[arg1][stor8[arg1].field_1280].field_512 + plyr_[arg1].field_768,
               plyr_[arg1].field_1024
    if round_[stor5].field_768:
        if not round_[stor8[arg1].field_1280].field_2048:
            if plyrRnds_[arg1][stor8[arg1].field_1280].field_512 > 0:
                revert with 0, 'SafeMath sub failed'
            if -plyrRnds_[arg1][stor8[arg1].field_1280].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                revert with 0, 'SafeMath add failed'
            return plyr_[arg1].field_512, 
                   -plyrRnds_[arg1][stor8[arg1].field_1280].field_512 + plyr_[arg1].field_768,
                   plyr_[arg1].field_1024
        if plyrRnds_[arg1][stor8[arg1].field_1280].field_256 * round_[stor8[arg1].field_1280].field_2048 / round_[stor8[arg1].field_1280].field_2048 != plyrRnds_[arg1][stor8[arg1].field_1280].field_256:
            revert with 0, 'SafeMath mul failed'
        if plyrRnds_[arg1][stor8[arg1].field_1280].field_512 > plyrRnds_[arg1][stor8[arg1].field_1280].field_256 * round_[stor8[arg1].field_1280].field_2048 / 10^18:
            revert with 0, 'SafeMath sub failed'
        if (plyrRnds_[arg1][stor8[arg1].field_1280].field_256 * round_[stor8[arg1].field_1280].field_2048 / 10^18) - plyrRnds_[arg1][stor8[arg1].field_1280].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
            revert with 0, 'SafeMath add failed'
        return plyr_[arg1].field_512, 
               (plyrRnds_[arg1][stor8[arg1].field_1280].field_256 * round_[stor8[arg1].field_1280].field_2048 / 10^18) - plyrRnds_[arg1][stor8[arg1].field_1280].field_512 + plyr_[arg1].field_768,
               plyr_[arg1].field_1024
    if not round_[stor5].field_0:
        if not round_[stor8[arg1].field_1280].field_2048:
            if plyrRnds_[arg1][stor8[arg1].field_1280].field_512 > 0:
                revert with 0, 'SafeMath sub failed'
            if -plyrRnds_[arg1][stor8[arg1].field_1280].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                revert with 0, 'SafeMath add failed'
            return plyr_[arg1].field_512, 
                   -plyrRnds_[arg1][stor8[arg1].field_1280].field_512 + plyr_[arg1].field_768,
                   plyr_[arg1].field_1024
        if plyrRnds_[arg1][stor8[arg1].field_1280].field_256 * round_[stor8[arg1].field_1280].field_2048 / round_[stor8[arg1].field_1280].field_2048 != plyrRnds_[arg1][stor8[arg1].field_1280].field_256:
            revert with 0, 'SafeMath mul failed'
        if plyrRnds_[arg1][stor8[arg1].field_1280].field_512 > plyrRnds_[arg1][stor8[arg1].field_1280].field_256 * round_[stor8[arg1].field_1280].field_2048 / 10^18:
            revert with 0, 'SafeMath sub failed'
        if (plyrRnds_[arg1][stor8[arg1].field_1280].field_256 * round_[stor8[arg1].field_1280].field_2048 / 10^18) - plyrRnds_[arg1][stor8[arg1].field_1280].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
            revert with 0, 'SafeMath add failed'
        return plyr_[arg1].field_512, 
               (plyrRnds_[arg1][stor8[arg1].field_1280].field_256 * round_[stor8[arg1].field_1280].field_2048 / 10^18) - plyrRnds_[arg1][stor8[arg1].field_1280].field_512 + plyr_[arg1].field_768,
               plyr_[arg1].field_1024
    if arg1 != round_[stor5].field_0:
        if not round_[stor5].field_1792:
            require round_[stor5].field_1280
            if (0 / round_[stor5].field_1280) + round_[stor5].field_2048 < round_[stor5].field_2048:
                revert with 0, 'SafeMath add failed'
            if not (0 / round_[stor5].field_1280) + round_[stor5].field_2048:
                if plyrRnds_[arg1][stor5].field_512 > 0:
                    revert with 0, 'SafeMath sub failed'
                if -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                    revert with 0, 'SafeMath add failed'
                return plyr_[arg1].field_512, -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768, plyr_[arg1].field_1024
            if (0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / (0 / round_[stor5].field_1280) + round_[stor5].field_2048 != plyrRnds_[arg1][stor5].field_256:
                revert with 0, 'SafeMath mul failed'
            if plyrRnds_[arg1][stor5].field_512 > (0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18:
                revert with 0, 'SafeMath sub failed'
            if ((0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                revert with 0, 'SafeMath add failed'
            return plyr_[arg1].field_512, 
                   ((0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768,
                   plyr_[arg1].field_1024
        if potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / round_[stor5].field_1792 != potSplit_[stor11[stor5].field_256].field_0:
            revert with 0, 'SafeMath mul failed'
        if not potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100:
            require round_[stor5].field_1280
            if (0 / round_[stor5].field_1280) + round_[stor5].field_2048 < round_[stor5].field_2048:
                revert with 0, 'SafeMath add failed'
            if not (0 / round_[stor5].field_1280) + round_[stor5].field_2048:
                if plyrRnds_[arg1][stor5].field_512 > 0:
                    revert with 0, 'SafeMath sub failed'
                if -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                    revert with 0, 'SafeMath add failed'
                return plyr_[arg1].field_512, -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768, plyr_[arg1].field_1024
            if (0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / (0 / round_[stor5].field_1280) + round_[stor5].field_2048 != plyrRnds_[arg1][stor5].field_256:
                revert with 0, 'SafeMath mul failed'
            if plyrRnds_[arg1][stor5].field_512 > (0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18:
                revert with 0, 'SafeMath sub failed'
            if ((0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                revert with 0, 'SafeMath add failed'
            return plyr_[arg1].field_512, 
                   ((0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768,
                   plyr_[arg1].field_1024
        if 10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 != 10^18:
            revert with 0, 'SafeMath mul failed'
        require round_[stor5].field_1280
        if (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280) + round_[stor5].field_2048 < round_[stor5].field_2048:
            revert with 0, 'SafeMath add failed'
        if not (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280) + round_[stor5].field_2048:
            if plyrRnds_[arg1][stor5].field_512 > 0:
                revert with 0, 'SafeMath sub failed'
            if -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                revert with 0, 'SafeMath add failed'
            return plyr_[arg1].field_512, -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768, plyr_[arg1].field_1024
        if (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280) + round_[stor5].field_2048 != plyrRnds_[arg1][stor5].field_256:
            revert with 0, 'SafeMath mul failed'
        if plyrRnds_[arg1][stor5].field_512 > (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18:
            revert with 0, 'SafeMath sub failed'
        if ((10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
            revert with 0, 'SafeMath add failed'
        return plyr_[arg1].field_512, 
               ((10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768,
               plyr_[arg1].field_1024
    if not round_[stor5].field_1792:
        if plyr_[arg1].field_512 < plyr_[arg1].field_512:
            revert with 0, 'SafeMath add failed'
        if not round_[stor5].field_1792:
            require round_[stor5].field_1280
            if (0 / round_[stor5].field_1280) + round_[stor5].field_2048 < round_[stor5].field_2048:
                revert with 0, 'SafeMath add failed'
            if not (0 / round_[stor5].field_1280) + round_[stor5].field_2048:
                if plyrRnds_[arg1][stor5].field_512 > 0:
                    revert with 0, 'SafeMath sub failed'
                if -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                    revert with 0, 'SafeMath add failed'
                return plyr_[arg1].field_512, -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768, plyr_[arg1].field_1024
            if (0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / (0 / round_[stor5].field_1280) + round_[stor5].field_2048 != plyrRnds_[arg1][stor5].field_256:
                revert with 0, 'SafeMath mul failed'
            if plyrRnds_[arg1][stor5].field_512 > (0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18:
                revert with 0, 'SafeMath sub failed'
            if ((0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                revert with 0, 'SafeMath add failed'
            return plyr_[arg1].field_512, 
                   ((0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768,
                   plyr_[arg1].field_1024
        if potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / round_[stor5].field_1792 != potSplit_[stor11[stor5].field_256].field_0:
            revert with 0, 'SafeMath mul failed'
        if not potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100:
            require round_[stor5].field_1280
            if (0 / round_[stor5].field_1280) + round_[stor5].field_2048 < round_[stor5].field_2048:
                revert with 0, 'SafeMath add failed'
            if not (0 / round_[stor5].field_1280) + round_[stor5].field_2048:
                if plyrRnds_[arg1][stor5].field_512 > 0:
                    revert with 0, 'SafeMath sub failed'
                if -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                    revert with 0, 'SafeMath add failed'
                return plyr_[arg1].field_512, -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768, plyr_[arg1].field_1024
            if (0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / (0 / round_[stor5].field_1280) + round_[stor5].field_2048 != plyrRnds_[arg1][stor5].field_256:
                revert with 0, 'SafeMath mul failed'
            if plyrRnds_[arg1][stor5].field_512 > (0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18:
                revert with 0, 'SafeMath sub failed'
            if ((0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                revert with 0, 'SafeMath add failed'
            return plyr_[arg1].field_512, 
                   ((0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768,
                   plyr_[arg1].field_1024
        if 10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 != 10^18:
            revert with 0, 'SafeMath mul failed'
        require round_[stor5].field_1280
        if (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280) + round_[stor5].field_2048 < round_[stor5].field_2048:
            revert with 0, 'SafeMath add failed'
        if not (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280) + round_[stor5].field_2048:
            if plyrRnds_[arg1][stor5].field_512 > 0:
                revert with 0, 'SafeMath sub failed'
            if -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                revert with 0, 'SafeMath add failed'
            return plyr_[arg1].field_512, -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768, plyr_[arg1].field_1024
        if (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280) + round_[stor5].field_2048 != plyrRnds_[arg1][stor5].field_256:
            revert with 0, 'SafeMath mul failed'
        if plyrRnds_[arg1][stor5].field_512 > (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18:
            revert with 0, 'SafeMath sub failed'
        if ((10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
            revert with 0, 'SafeMath add failed'
        return plyr_[arg1].field_512, 
               ((10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768,
               plyr_[arg1].field_1024
    if 58 * round_[stor5].field_1792 / round_[stor5].field_1792 != 58:
        revert with 0, 'SafeMath mul failed'
    if (58 * round_[stor5].field_1792 / 100) + plyr_[arg1].field_512 < plyr_[arg1].field_512:
        revert with 0, 'SafeMath add failed'
    if not round_[stor5].field_1792:
        require round_[stor5].field_1280
        if (0 / round_[stor5].field_1280) + round_[stor5].field_2048 < round_[stor5].field_2048:
            revert with 0, 'SafeMath add failed'
        if not (0 / round_[stor5].field_1280) + round_[stor5].field_2048:
            if plyrRnds_[arg1][stor5].field_512 > 0:
                revert with 0, 'SafeMath sub failed'
            if -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                revert with 0, 'SafeMath add failed'
            return (58 * round_[stor5].field_1792 / 100) + plyr_[arg1].field_512, 
                   -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768,
                   plyr_[arg1].field_1024
        if (0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / (0 / round_[stor5].field_1280) + round_[stor5].field_2048 != plyrRnds_[arg1][stor5].field_256:
            revert with 0, 'SafeMath mul failed'
        if plyrRnds_[arg1][stor5].field_512 > (0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18:
            revert with 0, 'SafeMath sub failed'
        if ((0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
            revert with 0, 'SafeMath add failed'
        return (58 * round_[stor5].field_1792 / 100) + plyr_[arg1].field_512, 
               ((0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768,
               plyr_[arg1].field_1024
    if potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / round_[stor5].field_1792 != potSplit_[stor11[stor5].field_256].field_0:
        revert with 0, 'SafeMath mul failed'
    if not potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100:
        require round_[stor5].field_1280
        if (0 / round_[stor5].field_1280) + round_[stor5].field_2048 < round_[stor5].field_2048:
            revert with 0, 'SafeMath add failed'
        if not (0 / round_[stor5].field_1280) + round_[stor5].field_2048:
            if plyrRnds_[arg1][stor5].field_512 > 0:
                revert with 0, 'SafeMath sub failed'
            if -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
                revert with 0, 'SafeMath add failed'
            return (58 * round_[stor5].field_1792 / 100) + plyr_[arg1].field_512, 
                   -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768,
                   plyr_[arg1].field_1024
        if (0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / (0 / round_[stor5].field_1280) + round_[stor5].field_2048 != plyrRnds_[arg1][stor5].field_256:
            revert with 0, 'SafeMath mul failed'
        if plyrRnds_[arg1][stor5].field_512 > (0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18:
            revert with 0, 'SafeMath sub failed'
        if ((0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
            revert with 0, 'SafeMath add failed'
        return (58 * round_[stor5].field_1792 / 100) + plyr_[arg1].field_512, 
               ((0 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768,
               plyr_[arg1].field_1024
    if 10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 != 10^18:
        revert with 0, 'SafeMath mul failed'
    require round_[stor5].field_1280
    if (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280) + round_[stor5].field_2048 < round_[stor5].field_2048:
        revert with 0, 'SafeMath add failed'
    if not (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280) + round_[stor5].field_2048:
        if plyrRnds_[arg1][stor5].field_512 > 0:
            revert with 0, 'SafeMath sub failed'
        if -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
            revert with 0, 'SafeMath add failed'
        return (58 * round_[stor5].field_1792 / 100) + plyr_[arg1].field_512, 
               -plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768,
               plyr_[arg1].field_1024
    if (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280) + round_[stor5].field_2048 != plyrRnds_[arg1][stor5].field_256:
        revert with 0, 'SafeMath mul failed'
    if plyrRnds_[arg1][stor5].field_512 > (10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18:
        revert with 0, 'SafeMath sub failed'
    if ((10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768 < plyr_[arg1].field_768:
        revert with 0, 'SafeMath add failed'
    return (58 * round_[stor5].field_1792 / 100) + plyr_[arg1].field_512, 
           ((10^18 * potSplit_[stor11[stor5].field_256].field_0 * round_[stor5].field_1792 / 100 / round_[stor5].field_1280 * plyrRnds_[arg1][stor5].field_256) + (round_[stor5].field_2048 * plyrRnds_[arg1][stor5].field_256) / 10^18) - plyrRnds_[arg1][stor5].field_512 + plyr_[arg1].field_768,
           plyr_[arg1].field_1024
}



}
