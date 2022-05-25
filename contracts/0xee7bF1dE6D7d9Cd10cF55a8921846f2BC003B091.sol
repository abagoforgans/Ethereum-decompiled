contract main {




// =====================  Runtime code  =====================


#
#  - approve(string arg1, string arg2, string arg3, string arg4, uint256 arg5)
#
const name = 'SuperCard'

const symbol = 'SPC'


mapping of struct plyr_;
mapping of struct txRec_;
address stor2;
uint8 stor3; offset 160
address stor3;
uint256 plan_active_time;
uint256 stor5;
uint256 stor7;

function plan_active_time() {
    return plan_active_time
}

function plyr_(address arg1) {
    return plyr_[arg1].field_0, plyr_[arg1].field_256
}

function activated_() {
    return bool(uint8(stor3.field_160))
}

function txRec_(bytes32 arg1) {
    return txRec_[arg1].field_0, bool(txRec_[arg1].field_160), bool(txRec_[arg1].field_168)
}

function getPlanActiveTime() {
    return plan_active_time, block.timestamp
}

function setPlanActiveTime(uint256 arg1) {
    if address(stor3.field_0) != msg.sender:
        if stor2 != msg.sender:
            revert with 0, 'sorry, not cfo/admin'
    plan_active_time = arg1
}

function potAddup() payable {
    if address(stor3.field_0) != msg.sender:
        if stor2 != msg.sender:
            revert with 0, 'sorry, not cfo/admin'
    if msg.value + stor7 < stor7:
        revert with 0, 'SafeMath add failed'
    stor7 += msg.value
    emit onPotAddup(msg.sender, msg.value);
}

function queryhashcodeused(bytes32 arg1) {
    if not uint8(stor3.field_160):
        if block.timestamp >= plan_active_time:
            uint8(stor3.field_160) = 1
    if bool(uint8(stor3.field_160)) != 1:
        revert with 0, 'sorry, its not start yet.'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry, humans only'
    if not txRec_[arg1].field_0:
        if bool(txRec_[arg1].field_160) != 1:
            return 0
    return 1
}

function withdraw(bytes32 arg1) {
    if not uint8(stor3.field_160):
        if block.timestamp >= plan_active_time:
            uint8(stor3.field_160) = 1
    if bool(uint8(stor3.field_160)) != 1:
        revert with 0, 'sorry, its not start yet.'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry, humans only'
    if plyr_[msg.sender].field_0 <= 0:
        revert with 0, 'sorry, not user'
    if bool(txRec_[arg1].field_160) == 1:
        revert with 0, 'sorry, user replay withdraw'
    txRec_[arg1].field_0 = msg.sender
    txRec_[arg1].field_160 = 1
    txRec_[arg1].field_168 = 1
    txRec_[arg1].field_176 = Mask(80, 176, msg.sender) >> 176
    txRec_[arg1].field_256 = 0
}

function buy() payable {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry, humans only'
    if not uint8(stor3.field_160):
        if block.timestamp < plan_active_time:
            revert with 0, 'sorry, buy before start'
        uint8(stor3.field_160) = 1
    if msg.value <= 0:
        revert with 0, 'sorry, buy zero eth'
    if msg.value + plyr_[msg.sender].field_0 < plyr_[msg.sender].field_0:
        revert with 0, 'SafeMath add failed'
    plyr_[address(msg.sender)].field_0 = msg.value + plyr_[msg.sender].field_0
    if msg.value + stor5 < stor5:
        revert with 0, 'SafeMath add failed'
    stor5 += msg.value
    emit onRecieveEth(msg.sender, msg.value, block.timestamp);
}

function distribute(address arg1, uint256 arg2) {
    if address(stor3.field_0) != msg.sender:
        if stor2 != msg.sender:
            revert with 0, 'sorry, not cfo/admin'
    if not uint8(stor3.field_160):
        if block.timestamp >= plan_active_time:
            uint8(stor3.field_160) = 1
    if bool(uint8(stor3.field_160)) != 1:
        revert with 0, 'sorry, its not start yet.'
    if arg2 > eth.balance(this.address):
        revert with 0, 'sorry, demand more than balance'
    if arg2 <= 0:
        revert with 0, 'sorry, pay zero'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onSendEth(address(arg1), arg2, block.timestamp);
}

function _fallback() payable {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry, humans only'
    if not uint8(stor3.field_160):
        if block.timestamp >= plan_active_time:
            uint8(stor3.field_160) = 1
    if bool(uint8(stor3.field_160)) != 1:
        revert with 0, 'sorry, its not start yet.'
    if block.timestamp < plan_active_time:
        revert with 0, 'sorry, buy before start'
    if msg.value <= 0:
        revert with 0, 'sorry, buy zero eth'
    if msg.value + plyr_[address(msg.sender)].field_0 < plyr_[address(msg.sender)].field_0:
        revert with 0, 'SafeMath add failed'
    plyr_[address(msg.sender)].field_0 += msg.value
    if msg.value + stor5 < stor5:
        revert with 0, 'SafeMath add failed'
    stor5 += msg.value
    emit onRecieveEth(msg.sender, msg.value, block.timestamp);
}

function getUserInfo(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if address(stor3.field_0) != msg.sender:
        if stor2 != msg.sender:
            revert with 0, 'sorry, not cfo/admin'
    idx = 2
    s = 0
    s = 0
    s = 0
    while idx < 42:
        require idx < arg1.length
        require idx + 1 < arg1.length
        if mem[idx + 128 len 1] >= 97:
            if mem[idx + 128 len 1] <= 102:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 87
                        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s) - 87
                        continue 
                if mem[idx + 129 len 1] >= 65:
                    if mem[idx + 129 len 1] <= 70:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 55
                        s = mem[idx + 128 len 1] - 87
                        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s) - 55
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 87
                s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s) - 48
                continue 
        if mem[idx + 128 len 1] >= 65:
            if mem[idx + 128 len 1] <= 70:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 55
                        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 55) + (256 * s) - 87
                        continue 
                if mem[idx + 129 len 1] >= 65:
                    if mem[idx + 129 len 1] <= 70:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 55
                        s = mem[idx + 128 len 1] - 55
                        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 55) + (256 * s) - 55
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 55
                    s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 55) + (256 * s)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 55
                    s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 55) + (256 * s)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 55
                s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 55) + (256 * s) - 48
                continue 
        if mem[idx + 128 len 1] < 48:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 87
                    continue 
            if mem[idx + 129 len 1] >= 65:
                if mem[idx + 129 len 1] <= 70:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 55
                    s = mem[idx + 128 len 1]
                    s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 55
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 48
            continue 
        if mem[idx + 128 len 1] > 57:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 87
                    continue 
            if mem[idx + 129 len 1] >= 65:
                if mem[idx + 129 len 1] <= 70:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 55
                    s = mem[idx + 128 len 1]
                    s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 55
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 48
            continue 
        if mem[idx + 129 len 1] >= 97:
            if mem[idx + 129 len 1] <= 102:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 87
                s = mem[idx + 128 len 1] - 48
                s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s) - 87
                continue 
        if mem[idx + 129 len 1] >= 65:
            if mem[idx + 129 len 1] <= 70:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 55
                s = mem[idx + 128 len 1] - 48
                s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s) - 55
                continue 
        if mem[idx + 129 len 1] < 48:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s)
            continue 
        if mem[idx + 129 len 1] > 57:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s)
            continue 
        idx = idx + 2
        s = mem[idx + 129 len 1] - 48
        s = mem[idx + 128 len 1] - 48
        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s) - 48
        continue 
    return address(s), plyr_[address(s)].field_0, plyr_[address(s)].field_256
}

function newCFO(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if address(stor3.field_0) != msg.sender:
        if stor2 != msg.sender:
            revert with 0, 'sorry, not cfo/admin'
    idx = 2
    s = 0
    s = 0
    s = 0
    while idx < 42:
        require idx < arg1.length
        require idx + 1 < arg1.length
        if mem[idx + 128 len 1] >= 97:
            if mem[idx + 128 len 1] <= 102:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 87
                        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s) - 87
                        continue 
                if mem[idx + 129 len 1] >= 65:
                    if mem[idx + 129 len 1] <= 70:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 55
                        s = mem[idx + 128 len 1] - 87
                        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s) - 55
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 87
                    s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 87
                s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) + (256 * s) - 48
                continue 
        if mem[idx + 128 len 1] >= 65:
            if mem[idx + 128 len 1] <= 70:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1] - 55
                        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 55) + (256 * s) - 87
                        continue 
                if mem[idx + 129 len 1] >= 65:
                    if mem[idx + 129 len 1] <= 70:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 55
                        s = mem[idx + 128 len 1] - 55
                        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 55) + (256 * s) - 55
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 55
                    s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 55) + (256 * s)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1] - 55
                    s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 55) + (256 * s)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1] - 55
                s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 55) + (256 * s) - 48
                continue 
        if mem[idx + 128 len 1] < 48:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 87
                    continue 
            if mem[idx + 129 len 1] >= 65:
                if mem[idx + 129 len 1] <= 70:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 55
                    s = mem[idx + 128 len 1]
                    s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 55
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 48
            continue 
        if mem[idx + 128 len 1] > 57:
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1]
                    s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 87
                    continue 
            if mem[idx + 129 len 1] >= 65:
                if mem[idx + 129 len 1] <= 70:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 55
                    s = mem[idx + 128 len 1]
                    s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 55
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1]
                s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1]
            s = mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) + (256 * s) - 48
            continue 
        if mem[idx + 129 len 1] >= 97:
            if mem[idx + 129 len 1] <= 102:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 87
                s = mem[idx + 128 len 1] - 48
                s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s) - 87
                continue 
        if mem[idx + 129 len 1] >= 65:
            if mem[idx + 129 len 1] <= 70:
                idx = idx + 2
                s = mem[idx + 129 len 1] - 55
                s = mem[idx + 128 len 1] - 48
                s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s) - 55
                continue 
        if mem[idx + 129 len 1] < 48:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s)
            continue 
        if mem[idx + 129 len 1] > 57:
            idx = idx + 2
            s = mem[idx + 129 len 1]
            s = mem[idx + 128 len 1] - 48
            s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s)
            continue 
        idx = idx + 2
        s = mem[idx + 129 len 1] - 48
        s = mem[idx + 128 len 1] - 48
        s = mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) + (256 * s) - 48
        continue 
    if address(stor3.field_0) == address(s):
        return 0
    address(stor3.field_0) = address(s)
    return 1
}



}
