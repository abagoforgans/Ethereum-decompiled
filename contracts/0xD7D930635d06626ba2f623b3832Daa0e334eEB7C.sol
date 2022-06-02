contract main {




// =====================  Runtime code  =====================


#
#  - reLoadXid(uint256 arg1, uint256 arg2, uint256 arg3)
#  - sub_48bbe016(?)
#  - buyXid(uint256 arg1, uint256 arg2)
#
const name = 'GAME 3D'

const symbol = 'G3D'


uint256 stor0;
uint256 stor1;
uint8 stor2; offset 160
address stor2;
uint256 airDropPot_;
uint256 airDropTracker_;
uint256 pID_;
mapping of uint256 pIDxAddr_;
mapping of struct plyr_;
mapping of struct plyrRnds_;
uint256 rID_;
mapping of struct round_;
uint256 storBBC7;
uint256 storBBC7;

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
           round_[arg1].field_2816,
           round_[arg1].field_3072
}

function pID_() {
    return pID_
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

function activated_() {
    return bool(uint8(stor2.field_160))
}

function airDropPot_() {
    return airDropPot_
}

function plyr_(uint256 arg1) {
    return plyr_[arg1].field_0, 
           bool(plyr_[arg1].field_160),
           plyr_[arg1].field_256,
           plyr_[arg1].field_512,
           plyr_[arg1].field_768,
           plyr_[arg1].field_1024,
           plyr_[arg1].field_1280
}

function _fallback() payable {
    revert
}

function sub_22bb26f7(?) {
    return plyr_[stor10[stor9].field_0].field_0, round_[stor9].field_256
}

function getTimeLeft() {
    if block.timestamp >= round_[stor9].field_512:
        return 0
    if block.timestamp <= round_[stor9].field_1024 + stor1:
        if block.timestamp > stor1 + round_[stor9].field_1024:
            revert with 0, 'SafeMath sub failed'
        return (stor1 + round_[stor9].field_1024 - block.timestamp)
    if block.timestamp > round_[stor9].field_512:
        revert with 0, 'SafeMath sub failed'
    return (round_[stor9].field_512 - block.timestamp)
}

function getCurrentRoundInfo() {
    return bool(round_[stor9].field_768), 
           rID_,
           round_[stor9].field_1280,
           round_[stor9].field_512,
           round_[stor9].field_1024,
           round_[stor9].field_1792,
           round_[stor9].field_2048,
           round_[stor9].field_1536,
           round_[stor9].field_3328,
           round_[stor9].field_3584,
           round_[stor9].field_3840,
           round_[stor9].field_4096,
           (1000 * airDropPot_) + airDropTracker_,
           stor1
}

function nextRound() {
    if address(stor2.field_0) != msg.sender:
        revert with 0, 'you are not operator'
    if block.timestamp <= round_[stor9].field_512:
        revert with 0, 'round not end yet'
    if not round_[stor9].field_768:
        revert with 0, 'round not end yet'
    rID_++
    round_[stor9 + 1].field_1024 = block.timestamp
    if block.timestamp + 1800 < block.timestamp:
        revert with 0, 'SafeMath add failed'
    if stor1 < 0:
        revert with 0, 'SafeMath add failed'
    round_[stor9].field_512 = stor1 + block.timestamp + 1800
}

function activate() {
    if address(stor2.field_0) != msg.sender:
        revert with 0, 'you are not operator'
    if uint8(stor2.field_160):
        revert with 0, 'game already activated'
    uint8(stor2.field_160) = 1
    rID_ = 1
    if stor0 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath add failed'
    storBBC7 = stor0 + block.timestamp
    if block.timestamp + 1800 < block.timestamp:
        revert with 0, 'SafeMath add failed'
    if stor0 < 0:
        revert with 0, 'SafeMath add failed'
    if stor1 < 0:
        revert with 0, 'SafeMath add failed'
    storBBC7 = stor1 + stor0 + block.timestamp + 1800
}

function getPlayerVaults(uint256 arg1) {
    if not round_[stor7[arg1].field_1024].field_768:
        if plyr_[arg1].field_512 < plyr_[arg1].field_512:
            revert with 0, 'SafeMath add failed'
        return plyr_[arg1].field_256, plyr_[arg1].field_512, plyr_[arg1].field_768
    require round_[stor7[arg1].field_1024].field_256 < 4
    if not round_[stor7[arg1].field_1024].field_2304:
        if plyrRnds_[arg1][stor7[arg1].field_1024].field_512 > 0:
            revert with 0, 'SafeMath sub failed'
        if -plyrRnds_[arg1][stor7[arg1].field_1024].field_512 + plyr_[arg1].field_512 < plyr_[arg1].field_512:
            revert with 0, 'SafeMath add failed'
        return plyr_[arg1].field_256, 
               -plyrRnds_[arg1][stor7[arg1].field_1024].field_512 + plyr_[arg1].field_512,
               plyr_[arg1].field_768
    if plyrRnds_[arg1][stor7[arg1].field_1024][stor10[stor7[arg1].field_1024].field_256].field_1024 * round_[stor7[arg1].field_1024].field_2304 / round_[stor7[arg1].field_1024].field_2304 != plyrRnds_[arg1][stor7[arg1].field_1024][stor10[stor7[arg1].field_1024].field_256].field_1024:
        revert with 0, 'SafeMath mul failed'
    if plyrRnds_[arg1][stor7[arg1].field_1024].field_512 > plyrRnds_[arg1][stor7[arg1].field_1024][stor10[stor7[arg1].field_1024].field_256].field_1024 * round_[stor7[arg1].field_1024].field_2304 / 10^18:
        revert with 0, 'SafeMath sub failed'
    if (plyrRnds_[arg1][stor7[arg1].field_1024][stor10[stor7[arg1].field_1024].field_256].field_1024 * round_[stor7[arg1].field_1024].field_2304 / 10^18) - plyrRnds_[arg1][stor7[arg1].field_1024].field_512 + plyr_[arg1].field_512 < plyr_[arg1].field_512:
        revert with 0, 'SafeMath add failed'
    return plyr_[arg1].field_256, 
           (plyrRnds_[arg1][stor7[arg1].field_1024][stor10[stor7[arg1].field_1024].field_256].field_1024 * round_[stor7[arg1].field_1024].field_2304 / 10^18) - plyrRnds_[arg1][stor7[arg1].field_1024].field_512 + plyr_[arg1].field_512,
           plyr_[arg1].field_768
}

function getPlayerInfoByAddress(address arg1) {
    if not round_[stor7[stor6[address(arg1)]].field_1024].field_768:
        if plyr_[stor6[address(arg1)]].field_512 < plyr_[stor6[address(arg1)]].field_512:
            revert with 0, 'SafeMath add failed'
        return pIDxAddr_[address(arg1)], 
               bool(plyr_[stor6[address(arg1)]].field_160),
               plyrRnds_[stor6[address(arg1)]][stor9].field_256,
               plyr_[stor6[address(arg1)]].field_256,
               plyr_[stor6[address(arg1)]].field_512,
               plyr_[stor6[address(arg1)]].field_768,
               plyrRnds_[stor6[address(arg1)]][stor9].field_0,
               plyrRnds_[stor6[address(arg1)]][stor9].field_1024,
               plyrRnds_[stor6[address(arg1)]][stor9].field_1280,
               plyrRnds_[stor6[address(arg1)]][stor9].field_1536,
               plyrRnds_[stor6[address(arg1)]][stor9].field_1792
    require round_[stor7[stor6[address(arg1)]].field_1024].field_256 < 4
    if not round_[stor7[stor6[address(arg1)]].field_1024].field_2304:
        if plyrRnds_[stor6[address(arg1)]][stor7[stor6[address(arg1)]].field_1024].field_512 > 0:
            revert with 0, 'SafeMath sub failed'
        if -plyrRnds_[stor6[address(arg1)]][stor7[stor6[address(arg1)]].field_1024].field_512 + plyr_[stor6[address(arg1)]].field_512 < plyr_[stor6[address(arg1)]].field_512:
            revert with 0, 'SafeMath add failed'
        return pIDxAddr_[address(arg1)], 
               bool(plyr_[stor6[address(arg1)]].field_160),
               plyrRnds_[stor6[address(arg1)]][stor9].field_256,
               plyr_[stor6[address(arg1)]].field_256,
               -plyrRnds_[stor6[address(arg1)]][stor7[stor6[address(arg1)]].field_1024].field_512 + plyr_[stor6[address(arg1)]].field_512,
               plyr_[stor6[address(arg1)]].field_768,
               plyrRnds_[stor6[address(arg1)]][stor9].field_0,
               plyrRnds_[stor6[address(arg1)]][stor9].field_1024,
               plyrRnds_[stor6[address(arg1)]][stor9].field_1280,
               plyrRnds_[stor6[address(arg1)]][stor9].field_1536,
               plyrRnds_[stor6[address(arg1)]][stor9].field_1792
    if plyrRnds_[stor6[address(arg1)]][stor7[stor6[address(arg1)]].field_1024][stor10[stor7[stor6[address(arg1)]].field_1024].field_256].field_1024 * round_[stor7[stor6[address(arg1)]].field_1024].field_2304 / round_[stor7[stor6[address(arg1)]].field_1024].field_2304 != plyrRnds_[stor6[address(arg1)]][stor7[stor6[address(arg1)]].field_1024][stor10[stor7[stor6[address(arg1)]].field_1024].field_256].field_1024:
        revert with 0, 'SafeMath mul failed'
    if plyrRnds_[stor6[address(arg1)]][stor7[stor6[address(arg1)]].field_1024].field_512 > plyrRnds_[stor6[address(arg1)]][stor7[stor6[address(arg1)]].field_1024][stor10[stor7[stor6[address(arg1)]].field_1024].field_256].field_1024 * round_[stor7[stor6[address(arg1)]].field_1024].field_2304 / 10^18:
        revert with 0, 'SafeMath sub failed'
    if (plyrRnds_[stor6[address(arg1)]][stor7[stor6[address(arg1)]].field_1024][stor10[stor7[stor6[address(arg1)]].field_1024].field_256].field_1024 * round_[stor7[stor6[address(arg1)]].field_1024].field_2304 / 10^18) - plyrRnds_[stor6[address(arg1)]][stor7[stor6[address(arg1)]].field_1024].field_512 + plyr_[stor6[address(arg1)]].field_512 < plyr_[stor6[address(arg1)]].field_512:
        revert with 0, 'SafeMath add failed'
    return pIDxAddr_[address(arg1)], 
           bool(plyr_[stor6[address(arg1)]].field_160),
           plyrRnds_[stor6[address(arg1)]][stor9].field_256,
           plyr_[stor6[address(arg1)]].field_256,
           (plyrRnds_[stor6[address(arg1)]][stor7[stor6[address(arg1)]].field_1024][stor10[stor7[stor6[address(arg1)]].field_1024].field_256].field_1024 * round_[stor7[stor6[address(arg1)]].field_1024].field_2304 / 10^18) - plyrRnds_[stor6[address(arg1)]][stor7[stor6[address(arg1)]].field_1024].field_512 + plyr_[stor6[address(arg1)]].field_512,
           plyr_[stor6[address(arg1)]].field_768,
           plyrRnds_[stor6[address(arg1)]][stor9].field_0,
           plyrRnds_[stor6[address(arg1)]][stor9].field_1024,
           plyrRnds_[stor6[address(arg1)]][stor9].field_1280,
           plyrRnds_[stor6[address(arg1)]][stor9].field_1536,
           plyrRnds_[stor6[address(arg1)]][stor9].field_1792
}

function withdraw() {
    if bool(uint8(stor2.field_160)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'its not ready yet.  check ?eta in discord'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if round_[stor7[stor6[msg.sender]].field_1024].field_768:
        require round_[stor7[stor6[msg.sender]].field_1024].field_256 < 4
        if not round_[stor7[stor6[msg.sender]].field_1024].field_2304:
            if plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024].field_512 > 0:
                revert with 0, 'SafeMath sub failed'
            if -plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024].field_512 > 0:
                if plyr_[stor6[msg.sender]].field_512 - plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024].field_512 < -plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024].field_512:
                    revert with 0, 'SafeMath add failed'
                plyr_[stor6[msg.sender]].field_512 -= plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024].field_512
                if 0 < -plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024].field_512:
                    revert with 0, 'SafeMath add failed'
                plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024].field_512 = 0
        else:
            if plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024][stor10[stor7[stor6[msg.sender]].field_1024].field_256].field_1024 * round_[stor7[stor6[msg.sender]].field_1024].field_2304 / round_[stor7[stor6[msg.sender]].field_1024].field_2304 != plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024][stor10[stor7[stor6[msg.sender]].field_1024].field_256].field_1024:
                revert with 0, 'SafeMath mul failed'
            if plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024].field_512 > plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024][stor10[stor7[stor6[msg.sender]].field_1024].field_256].field_1024 * round_[stor7[stor6[msg.sender]].field_1024].field_2304 / 10^18:
                revert with 0, 'SafeMath sub failed'
            if (plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024][stor10[stor7[stor6[msg.sender]].field_1024].field_256].field_1024 * round_[stor7[stor6[msg.sender]].field_1024].field_2304 / 10^18) - plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024].field_512 > 0:
                if plyr_[stor6[msg.sender]].field_512 < 0:
                    revert with 0, 'SafeMath add failed'
                plyr_[stor6[msg.sender]].field_512 = plyr_[stor6[msg.sender]].field_512 + (plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024][stor10[stor7[stor6[msg.sender]].field_1024].field_256].field_1024 * round_[stor7[stor6[msg.sender]].field_1024].field_2304 / 10^18) - plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024].field_512
                if plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024].field_512 < 0:
                    revert with 0, 'SafeMath add failed'
                plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024].field_512 = plyrRnds_[stor6[msg.sender]][stor7[stor6[msg.sender]].field_1024][stor10[stor7[stor6[msg.sender]].field_1024].field_256].field_1024 * round_[stor7[stor6[msg.sender]].field_1024].field_2304 / 10^18
    if plyr_[stor6[msg.sender]].field_512 + plyr_[stor6[msg.sender]].field_256 < plyr_[stor6[msg.sender]].field_256:
        revert with 0, 'SafeMath add failed'
    if plyr_[stor6[msg.sender]].field_768 < 0:
        revert with 0, 'SafeMath add failed'
    if plyr_[stor6[msg.sender]].field_768 + plyr_[stor6[msg.sender]].field_512 + plyr_[stor6[msg.sender]].field_256 > 0:
        plyr_[stor6[msg.sender]].field_256 = 0
        plyr_[stor6[msg.sender]].field_512 = 0
        plyr_[stor6[msg.sender]].field_768 = 0
        call plyr_[stor6[msg.sender]].field_0 with:
           value plyr_[stor6[msg.sender]].field_768 + plyr_[stor6[msg.sender]].field_512 + plyr_[stor6[msg.sender]].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(msg.sender, plyr_[stor6[msg.sender]].field_768 + plyr_[stor6[msg.sender]].field_512 + plyr_[stor6[msg.sender]].field_256, block.timestamp, pIDxAddr_[msg.sender]);
}

function sub_f1ff089c(?) payable {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < 3 * 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'umm.....  you have to pay the unlock fee'
    if pIDxAddr_[address(msg.sender)]:
        if not arg1:
            plyr_[stor6[address(msg.sender)]].field_160 = 1
            call address(stor2.field_0) with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 != pIDxAddr_[address(msg.sender)]:
                emit 0x28399d84: 0, arg1, plyr_[arg1].field_0, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender
            else:
                emit 0x28399d84: 0, 0, plyr_[0].field_0, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender
        else:
            if arg1 == plyr_[stor6[address(msg.sender)]].field_1280:
                plyr_[stor6[address(msg.sender)]].field_160 = 1
                call address(stor2.field_0) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 != pIDxAddr_[address(msg.sender)]:
                    emit 0x28399d84: 0, arg1, plyr_[arg1].field_0, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender
                else:
                    emit 0x28399d84: 0, 0, plyr_[0].field_0, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender
            else:
                if arg1 == pIDxAddr_[address(msg.sender)]:
                    plyr_[stor6[address(msg.sender)]].field_160 = 1
                    call address(stor2.field_0) with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x28399d84: 0, 0, plyr_[0].field_0, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender
                else:
                    plyr_[stor6[address(msg.sender)]].field_1280 = arg1
                    plyr_[stor6[address(msg.sender)]].field_160 = 1
                    call address(stor2.field_0) with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x28399d84: 0, arg1, plyr_[arg1].field_0, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender
    else:
        pID_++
        pIDxAddr_[address(msg.sender)] = pID_ + 1
        plyr_[stor5 + 1].field_0 = msg.sender
        if not arg1:
            plyr_[stor6[address(msg.sender)]].field_160 = 1
            call address(stor2.field_0) with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 != pIDxAddr_[address(msg.sender)]:
                emit 0x28399d84: 1, arg1, plyr_[arg1].field_0, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender
            else:
                emit 0x28399d84: 1, 0, plyr_[0].field_0, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender
        else:
            if arg1 == plyr_[stor6[address(msg.sender)]].field_1280:
                plyr_[stor6[address(msg.sender)]].field_160 = 1
                call address(stor2.field_0) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 != pIDxAddr_[address(msg.sender)]:
                    emit 0x28399d84: 1, arg1, plyr_[arg1].field_0, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender
                else:
                    emit 0x28399d84: 1, 0, plyr_[0].field_0, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender
            else:
                if arg1 == pIDxAddr_[address(msg.sender)]:
                    plyr_[stor6[address(msg.sender)]].field_160 = 1
                    call address(stor2.field_0) with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x28399d84: 1, 0, plyr_[0].field_0, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender
                else:
                    plyr_[stor6[address(msg.sender)]].field_1280 = arg1
                    plyr_[stor6[address(msg.sender)]].field_160 = 1
                    call address(stor2.field_0) with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x28399d84: 1, arg1, plyr_[arg1].field_0, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender
}

function calcKeysReceived(uint256 arg1, uint256 arg2) {
    if block.timestamp <= round_[arg1].field_1024 + stor1:
        if not arg2:
            s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
            t = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
            while s < t:
                require s
                if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                    revert with 0, 'SafeMath add failed'
                s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                t = s
                continue 
        else:
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 'SafeMath mul failed'
            if not 10^18 * arg2:
                s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
                t = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                while s < t:
                    require s
                    if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                        revert with 0, 'SafeMath add failed'
                    s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                    t = s
                    continue 
            else:
                if 312500000000000000000000000 * 10^18 * arg2 / 10^18 * arg2 != 312500000 * 10^18:
                    revert with 0, 'SafeMath mul failed'
                if (312500000000000000000000000 * 10^18 * arg2) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 < 312500000000000000000000000 * 10^18 * arg2:
                    revert with 0, 'SafeMath add failed'
                s = (312500000000000000000000000 * 10^18 * arg2) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000001 / 2
                t = (312500000000000000000000000 * 10^18 * arg2) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                while s < t:
                    require s
                    if s + ((312500000000000000000000000 * 10^18 * arg2) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < (312500000000000000000000000 * 10^18 * arg2) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                        revert with 0, 'SafeMath add failed'
                    s = s + ((312500000000000000000000000 * 10^18 * arg2) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                    t = s
                    continue 
        if 74999921875000 * 10^18 > t:
            revert with 0, 'SafeMath sub failed'
        return (t - 74999921875000 * 10^18 / 156250000)
    if block.timestamp > round_[arg1].field_512:
        if not arg2:
            s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
            t = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
            while s < t:
                require s
                if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                    revert with 0, 'SafeMath add failed'
                s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                t = s
                continue 
        else:
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 'SafeMath mul failed'
            if not 10^18 * arg2:
                s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
                t = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                while s < t:
                    require s
                    if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                        revert with 0, 'SafeMath add failed'
                    s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                    t = s
                    continue 
            else:
                if 312500000000000000000000000 * 10^18 * arg2 / 10^18 * arg2 != 312500000 * 10^18:
                    revert with 0, 'SafeMath mul failed'
                if (312500000000000000000000000 * 10^18 * arg2) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 < 312500000000000000000000000 * 10^18 * arg2:
                    revert with 0, 'SafeMath add failed'
                s = (312500000000000000000000000 * 10^18 * arg2) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000001 / 2
                t = (312500000000000000000000000 * 10^18 * arg2) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
                while s < t:
                    require s
                    if s + ((312500000000000000000000000 * 10^18 * arg2) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < (312500000000000000000000000 * 10^18 * arg2) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                        revert with 0, 'SafeMath add failed'
                    s = s + ((312500000000000000000000000 * 10^18 * arg2) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                    t = s
                    continue 
        if 74999921875000 * 10^18 > t:
            revert with 0, 'SafeMath sub failed'
        return (t - 74999921875000 * 10^18 / 156250000)
    if not round_[arg1].field_1536:
        s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
        t = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
        while s < t:
            require s
            if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                revert with 0, 'SafeMath add failed'
            s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
            t = s
            continue 
    else:
        if 10^18 * round_[arg1].field_1536 / round_[arg1].field_1536 != 10^18:
            revert with 0, 'SafeMath mul failed'
        if not 10^18 * round_[arg1].field_1536:
            s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
            t = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
            while s < t:
                require s
                if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                    revert with 0, 'SafeMath add failed'
                s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                t = s
                continue 
        else:
            if 312500000000000000000000000 * 10^18 * round_[arg1].field_1536 / 10^18 * round_[arg1].field_1536 != 312500000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            if (312500000000000000000000000 * 10^18 * round_[arg1].field_1536) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 < 312500000000000000000000000 * 10^18 * round_[arg1].field_1536:
                revert with 0, 'SafeMath add failed'
            s = (312500000000000000000000000 * 10^18 * round_[arg1].field_1536) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000001 / 2
            t = (312500000000000000000000000 * 10^18 * round_[arg1].field_1536) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
            while s < t:
                require s
                if s + ((312500000000000000000000000 * 10^18 * round_[arg1].field_1536) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < (312500000000000000000000000 * 10^18 * round_[arg1].field_1536) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                    revert with 0, 'SafeMath add failed'
                s = s + ((312500000000000000000000000 * 10^18 * round_[arg1].field_1536) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                t = s
                continue 
    if 74999921875000 * 10^18 > t:
        revert with 0, 'SafeMath sub failed'
    if arg2 + round_[arg1].field_1536 < round_[arg1].field_1536:
        revert with 0, 'SafeMath add failed'
    if not arg2 + round_[arg1].field_1536:
        s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
        u = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
        while s < u:
            require s
            if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                revert with 0, 'SafeMath add failed'
            s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
            u = s
            continue 
    else:
        if (10^18 * arg2) + (10^18 * round_[arg1].field_1536) / arg2 + round_[arg1].field_1536 != 10^18:
            revert with 0, 'SafeMath mul failed'
        if not (10^18 * arg2) + (10^18 * round_[arg1].field_1536):
            s = 0x6d6382aa34bbbd30917721886eb60a20828079482420000000000
            u = 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
            while s < u:
                require s
                if s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                    revert with 0, 'SafeMath add failed'
                s = s + (0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                u = s
                continue 
        else:
            if (312500000000000000000000000 * 10^18 * arg2) + (312500000000000000000000000 * 10^18 * round_[arg1].field_1536) / (10^18 * arg2) + (10^18 * round_[arg1].field_1536) != 312500000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            s = (312500000000000000000000000 * 10^18 * arg2) + (312500000000000000000000000 * 10^18 * round_[arg1].field_1536) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000001 / 2
            u = (312500000000000000000000000 * 10^18 * arg2) + (312500000000000000000000000 * 10^18 * round_[arg1].field_1536) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000
            while s < u:
                require s
                if s + ((312500000000000000000000000 * 10^18 * arg2) + (312500000000000000000000000 * 10^18 * round_[arg1].field_1536) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) < (312500000000000000000000000 * 10^18 * arg2) + (312500000000000000000000000 * 10^18 * round_[arg1].field_1536) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s:
                    revert with 0, 'SafeMath add failed'
                s = s + ((312500000000000000000000000 * 10^18 * arg2) + (312500000000000000000000000 * 10^18 * round_[arg1].field_1536) + 0xdac7055469777a6122ee4310dd6c14410500f2904840000000000 / s) / 2
                u = s
                continue 
    if 74999921875000 * 10^18 > u:
        revert with 0, 'SafeMath sub failed'
    if t - 74999921875000 * 10^18 / 156250000 > u - 74999921875000 * 10^18 / 156250000:
        revert with 0, 'SafeMath sub failed'
    return ((u - 74999921875000 * 10^18 / 156250000) - (t - 74999921875000 * 10^18 / 156250000))
}

function getBuyPrice() {
    if block.timestamp <= round_[stor9].field_1024 + stor1:
        return 75 * 10^12
    if block.timestamp > round_[stor9].field_512:
        return 75 * 10^12
    if round_[stor9].field_1280 + 10^18 < round_[stor9].field_1280:
        revert with 0, 'SafeMath add failed'
    if 10^18 > round_[stor9].field_1280 + 10^18:
        revert with 0, 'SafeMath sub failed'
    if not round_[stor9].field_1280:
        if not round_[stor9].field_1280:
            if not round_[stor9].field_1280 + 10^18:
                if not round_[stor9].field_1280 + 10^18:
                    return 0
                if (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18 / round_[stor9].field_1280 + 10^18 != round_[stor9].field_1280 + 10^18:
                    revert with 0, 'SafeMath mul failed'
                if (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath mul failed'
                if 0 > (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath sub failed'
                return ((156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18)
            if (10^18 * round_[stor9].field_1280) + 1000000000000000000 * 10^18 / round_[stor9].field_1280 + 10^18 != 10^18:
                revert with 0, 'SafeMath mul failed'
            if (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 149999843750000 != (10^18 * round_[stor9].field_1280) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            if not round_[stor9].field_1280 + 10^18:
                if (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
                    revert with 0, 'SafeMath add failed'
                if 0 > (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath sub failed'
                return ((149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18)
            if (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18 / round_[stor9].field_1280 + 10^18 != round_[stor9].field_1280 + 10^18:
                revert with 0, 'SafeMath mul failed'
            if (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            if (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if 0 > ((149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18)
        if round_[stor9].field_1280 * round_[stor9].field_1280 / round_[stor9].field_1280 != round_[stor9].field_1280:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 78125000 != round_[stor9].field_1280 * round_[stor9].field_1280:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 < 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280:
            revert with 0, 'SafeMath add failed'
        if not round_[stor9].field_1280 + 10^18:
            if not round_[stor9].field_1280 + 10^18:
                if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18 > 0:
                    revert with 0, 'SafeMath sub failed'
                return -(78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18)
            if (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18 / round_[stor9].field_1280 + 10^18 != round_[stor9].field_1280 + 10^18:
                revert with 0, 'SafeMath mul failed'
            if (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18 > (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18))
        if (10^18 * round_[stor9].field_1280) + 1000000000000000000 * 10^18 / round_[stor9].field_1280 + 10^18 != 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 149999843750000 != (10^18 * round_[stor9].field_1280) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if not round_[stor9].field_1280 + 10^18:
            if (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18 > (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18) - (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18))
        if (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18 / round_[stor9].field_1280 + 10^18 != round_[stor9].field_1280 + 10^18:
            revert with 0, 'SafeMath mul failed'
        if (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18 > ((149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return ((((149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18))
    if 10^18 * round_[stor9].field_1280 / round_[stor9].field_1280 != 10^18:
        revert with 0, 'SafeMath mul failed'
    if 149999843750000 * 10^18 * round_[stor9].field_1280 / 149999843750000 != 10^18 * round_[stor9].field_1280:
        revert with 0, 'SafeMath mul failed'
    if not round_[stor9].field_1280:
        if 149999843750000 * 10^18 * round_[stor9].field_1280 / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if not round_[stor9].field_1280 + 10^18:
            if not round_[stor9].field_1280 + 10^18:
                if 149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18 > 0:
                    revert with 0, 'SafeMath sub failed'
                return -(149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18)
            if (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18 / round_[stor9].field_1280 + 10^18 != round_[stor9].field_1280 + 10^18:
                revert with 0, 'SafeMath mul failed'
            if (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath mul failed'
            if 149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18 > (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - (149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18))
        if (10^18 * round_[stor9].field_1280) + 1000000000000000000 * 10^18 / round_[stor9].field_1280 + 10^18 != 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 149999843750000 != (10^18 * round_[stor9].field_1280) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if not round_[stor9].field_1280 + 10^18:
            if (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if 149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18 > (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18) - (149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18))
        if (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18 / round_[stor9].field_1280 + 10^18 != round_[stor9].field_1280 + 10^18:
            revert with 0, 'SafeMath mul failed'
        if (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if 149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18 > ((149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return ((((149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - (149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18))
    if round_[stor9].field_1280 * round_[stor9].field_1280 / round_[stor9].field_1280 != round_[stor9].field_1280:
        revert with 0, 'SafeMath mul failed'
    if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 78125000 != round_[stor9].field_1280 * round_[stor9].field_1280:
        revert with 0, 'SafeMath mul failed'
    if (149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) < 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280:
        revert with 0, 'SafeMath add failed'
    if not round_[stor9].field_1280 + 10^18:
        if not round_[stor9].field_1280 + 10^18:
            if (149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18 > 0:
                revert with 0, 'SafeMath sub failed'
            return -((149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18)
        if (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18 / round_[stor9].field_1280 + 10^18 != round_[stor9].field_1280 + 10^18:
            revert with 0, 'SafeMath mul failed'
        if (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18 > (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return (((156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18))
    if (10^18 * round_[stor9].field_1280) + 1000000000000000000 * 10^18 / round_[stor9].field_1280 + 10^18 != 10^18:
        revert with 0, 'SafeMath mul failed'
    if (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 149999843750000 != (10^18 * round_[stor9].field_1280) + 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath mul failed'
    if not round_[stor9].field_1280 + 10^18:
        if (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if (149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18 > (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return (((149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18))
    if (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18 / round_[stor9].field_1280 + 10^18 != round_[stor9].field_1280 + 10^18:
        revert with 0, 'SafeMath mul failed'
    if (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 78125000 != (2 * 10^18 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) + 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath mul failed'
    if (149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2 < 0:
        revert with 0, 'SafeMath add failed'
    if (149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18 > ((149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath sub failed'
    return ((((149999843750000 * 10^18 * round_[stor9].field_1280) + 0x66a2519f4ce084becaa29127238e58970000000000 / 2) + (156250000 * 10^18 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) + 78125000000000000000000000 * 10^18 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18))
}

function iWantXKeys(uint256 arg1) {
    if block.timestamp <= round_[stor9].field_1024 + stor1:
        if not arg1:
            if not arg1:
                return 0
            if arg1 * arg1 / arg1 != arg1:
                revert with 0, 'SafeMath mul failed'
            if 78125000 * arg1 * arg1 / 78125000 != arg1 * arg1:
                revert with 0, 'SafeMath mul failed'
            if 78125000 * arg1 * arg1 < 78125000 * arg1 * arg1:
                revert with 0, 'SafeMath add failed'
            return (78125000 * arg1 * arg1 / 1000000000000000000 * 10^18)
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0, 'SafeMath mul failed'
        if 149999843750000 * 10^18 * arg1 / 149999843750000 != 10^18 * arg1:
            revert with 0, 'SafeMath mul failed'
        if not arg1:
            if 149999843750000 * 10^18 * arg1 / 2 < 0:
                revert with 0, 'SafeMath add failed'
            return (149999843750000 * 10^18 * arg1 / 2 / 1000000000000000000 * 10^18)
        if arg1 * arg1 / arg1 != arg1:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * arg1 * arg1 / 78125000 != arg1 * arg1:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * arg1 / 2) + (78125000 * arg1 * arg1) < 78125000 * arg1 * arg1:
            revert with 0, 'SafeMath add failed'
        return ((149999843750000 * 10^18 * arg1 / 2) + (78125000 * arg1 * arg1) / 1000000000000000000 * 10^18)
    if block.timestamp > round_[stor9].field_512:
        if not arg1:
            if not arg1:
                return 0
            if arg1 * arg1 / arg1 != arg1:
                revert with 0, 'SafeMath mul failed'
            if 78125000 * arg1 * arg1 / 78125000 != arg1 * arg1:
                revert with 0, 'SafeMath mul failed'
            if 78125000 * arg1 * arg1 < 78125000 * arg1 * arg1:
                revert with 0, 'SafeMath add failed'
            return (78125000 * arg1 * arg1 / 1000000000000000000 * 10^18)
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0, 'SafeMath mul failed'
        if 149999843750000 * 10^18 * arg1 / 149999843750000 != 10^18 * arg1:
            revert with 0, 'SafeMath mul failed'
        if not arg1:
            if 149999843750000 * 10^18 * arg1 / 2 < 0:
                revert with 0, 'SafeMath add failed'
            return (149999843750000 * 10^18 * arg1 / 2 / 1000000000000000000 * 10^18)
        if arg1 * arg1 / arg1 != arg1:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * arg1 * arg1 / 78125000 != arg1 * arg1:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * arg1 / 2) + (78125000 * arg1 * arg1) < 78125000 * arg1 * arg1:
            revert with 0, 'SafeMath add failed'
        return ((149999843750000 * 10^18 * arg1 / 2) + (78125000 * arg1 * arg1) / 1000000000000000000 * 10^18)
    if arg1 + round_[stor9].field_1280 < round_[stor9].field_1280:
        revert with 0, 'SafeMath add failed'
    if arg1 > arg1 + round_[stor9].field_1280:
        revert with 0, 'SafeMath sub failed'
    if not round_[stor9].field_1280:
        if not round_[stor9].field_1280:
            if not arg1 + round_[stor9].field_1280:
                if not arg1 + round_[stor9].field_1280:
                    return 0
                if (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) / arg1 + round_[stor9].field_1280 != arg1 + round_[stor9].field_1280:
                    revert with 0, 'SafeMath mul failed'
                if (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 78125000 != (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280):
                    revert with 0, 'SafeMath mul failed'
                if 0 > (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath sub failed'
                return ((78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18)
            if (10^18 * arg1) + (10^18 * round_[stor9].field_1280) / arg1 + round_[stor9].field_1280 != 10^18:
                revert with 0, 'SafeMath mul failed'
            if (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 149999843750000 != (10^18 * arg1) + (10^18 * round_[stor9].field_1280):
                revert with 0, 'SafeMath mul failed'
            if not arg1 + round_[stor9].field_1280:
                if (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 < 0:
                    revert with 0, 'SafeMath add failed'
                if 0 > (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath sub failed'
                return ((149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 / 1000000000000000000 * 10^18)
            if (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) / arg1 + round_[stor9].field_1280 != arg1 + round_[stor9].field_1280:
                revert with 0, 'SafeMath mul failed'
            if (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 78125000 != (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280):
                revert with 0, 'SafeMath mul failed'
            if (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if 0 > ((149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2) + (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2) + (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18)
        if round_[stor9].field_1280 * round_[stor9].field_1280 / round_[stor9].field_1280 != round_[stor9].field_1280:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 78125000 != round_[stor9].field_1280 * round_[stor9].field_1280:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 < 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280:
            revert with 0, 'SafeMath add failed'
        if not arg1 + round_[stor9].field_1280:
            if not arg1 + round_[stor9].field_1280:
                if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18 > 0:
                    revert with 0, 'SafeMath sub failed'
                return -(78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18)
            if (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) / arg1 + round_[stor9].field_1280 != arg1 + round_[stor9].field_1280:
                revert with 0, 'SafeMath mul failed'
            if (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 78125000 != (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280):
                revert with 0, 'SafeMath mul failed'
            if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18 > (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18) - (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18))
        if (10^18 * arg1) + (10^18 * round_[stor9].field_1280) / arg1 + round_[stor9].field_1280 != 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 149999843750000 != (10^18 * arg1) + (10^18 * round_[stor9].field_1280):
            revert with 0, 'SafeMath mul failed'
        if not arg1 + round_[stor9].field_1280:
            if (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18 > (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 / 1000000000000000000 * 10^18) - (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18))
        if (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) / arg1 + round_[stor9].field_1280 != arg1 + round_[stor9].field_1280:
            revert with 0, 'SafeMath mul failed'
        if (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 78125000 != (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280):
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18 > ((149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2) + (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return ((((149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2) + (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18) - (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 1000000000000000000 * 10^18))
    if 10^18 * round_[stor9].field_1280 / round_[stor9].field_1280 != 10^18:
        revert with 0, 'SafeMath mul failed'
    if 149999843750000 * 10^18 * round_[stor9].field_1280 / 149999843750000 != 10^18 * round_[stor9].field_1280:
        revert with 0, 'SafeMath mul failed'
    if not round_[stor9].field_1280:
        if 149999843750000 * 10^18 * round_[stor9].field_1280 / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if not arg1 + round_[stor9].field_1280:
            if not arg1 + round_[stor9].field_1280:
                if 149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18 > 0:
                    revert with 0, 'SafeMath sub failed'
                return -(149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18)
            if (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) / arg1 + round_[stor9].field_1280 != arg1 + round_[stor9].field_1280:
                revert with 0, 'SafeMath mul failed'
            if (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 78125000 != (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280):
                revert with 0, 'SafeMath mul failed'
            if 149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18 > (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18) - (149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18))
        if (10^18 * arg1) + (10^18 * round_[stor9].field_1280) / arg1 + round_[stor9].field_1280 != 10^18:
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 149999843750000 != (10^18 * arg1) + (10^18 * round_[stor9].field_1280):
            revert with 0, 'SafeMath mul failed'
        if not arg1 + round_[stor9].field_1280:
            if (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if 149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18 > (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            return (((149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 / 1000000000000000000 * 10^18) - (149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18))
        if (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) / arg1 + round_[stor9].field_1280 != arg1 + round_[stor9].field_1280:
            revert with 0, 'SafeMath mul failed'
        if (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 78125000 != (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280):
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if 149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18 > ((149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2) + (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return ((((149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2) + (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18) - (149999843750000 * 10^18 * round_[stor9].field_1280 / 2 / 1000000000000000000 * 10^18))
    if round_[stor9].field_1280 * round_[stor9].field_1280 / round_[stor9].field_1280 != round_[stor9].field_1280:
        revert with 0, 'SafeMath mul failed'
    if 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280 / 78125000 != round_[stor9].field_1280 * round_[stor9].field_1280:
        revert with 0, 'SafeMath mul failed'
    if (149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) < 78125000 * round_[stor9].field_1280 * round_[stor9].field_1280:
        revert with 0, 'SafeMath add failed'
    if not arg1 + round_[stor9].field_1280:
        if not arg1 + round_[stor9].field_1280:
            if (149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18 > 0:
                revert with 0, 'SafeMath sub failed'
            return -((149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18)
        if (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) / arg1 + round_[stor9].field_1280 != arg1 + round_[stor9].field_1280:
            revert with 0, 'SafeMath mul failed'
        if (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 78125000 != (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280):
            revert with 0, 'SafeMath mul failed'
        if (149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18 > (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return (((78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18))
    if (10^18 * arg1) + (10^18 * round_[stor9].field_1280) / arg1 + round_[stor9].field_1280 != 10^18:
        revert with 0, 'SafeMath mul failed'
    if (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 149999843750000 != (10^18 * arg1) + (10^18 * round_[stor9].field_1280):
        revert with 0, 'SafeMath mul failed'
    if not arg1 + round_[stor9].field_1280:
        if (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if (149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18 > (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        return (((149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18))
    if (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280) / arg1 + round_[stor9].field_1280 != arg1 + round_[stor9].field_1280:
        revert with 0, 'SafeMath mul failed'
    if (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 78125000 != (arg1 * arg1) + (round_[stor9].field_1280 * arg1) + (arg1 * round_[stor9].field_1280) + (round_[stor9].field_1280 * round_[stor9].field_1280):
        revert with 0, 'SafeMath mul failed'
    if (149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2 < 0:
        revert with 0, 'SafeMath add failed'
    if (149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18 > ((149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2) + (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath sub failed'
    return ((((149999843750000 * 10^18 * arg1) + (149999843750000 * 10^18 * round_[stor9].field_1280) / 2) + (78125000 * arg1 * arg1) + (78125000 * round_[stor9].field_1280 * arg1) + (78125000 * arg1 * round_[stor9].field_1280) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * round_[stor9].field_1280 / 2) + (78125000 * round_[stor9].field_1280 * round_[stor9].field_1280) / 1000000000000000000 * 10^18))
}



}
