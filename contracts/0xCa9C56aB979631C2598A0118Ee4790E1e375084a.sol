contract main {




// =====================  Runtime code  =====================


#
#  - withdrawOrderRefundToOrder(uint256 arg1)
#  - withdrawInviteRewardToOrder()
#  - order(bytes32 arg1)
#
uint8 stor0;
uint256 activated_time_;
address _owner;
mapping of uint8 stor3;
uint256 sub_175baf94;
uint256 startTime_;
uint256 ethIn_;
uint256 pIDIndex_;
mapping of struct inviteInfo;
mapping of uint256 addr_pID_;
mapping of uint256 name_pID_;
mapping of uint256 inviteePID_inviteReward1_;
uint256 oIDIndex_;
mapping of struct oID_Order_;
array of uint256 sub_c2fea6d5;
mapping of uint256 sub_2aab729f;
uint8 stor16; offset 160
address sub_10051089Address;

function pIDIndex_() {
    return pIDIndex_
}

function inviteePID_inviteReward1_(uint256 arg1) {
    return inviteePID_inviteReward1_[arg1]
}

function sub_10051089(?) {
    return sub_10051089Address
}

function sub_175baf94(?) {
    if not stor3[msg.sender]:
        revert with 0, 'only administrator can'
    if bool(stor0) != 1:
        revert with 0, 'not activated'
    return sub_175baf94
}

function sub_2aab729f(?) {
    return sub_2aab729f[arg1]
}

function oIDIndex_() {
    return oIDIndex_
}

function administrators(bytes32 arg1) {
    return bool(stor3[arg1])
}

function activated_time_() {
    return activated_time_
}

function pID_Player_(uint256 arg1) {
    return inviteInfo[arg1].field_0, 
           inviteInfo[arg1].field_256,
           bool(inviteInfo[arg1].field_512),
           inviteInfo[arg1].field_768,
           inviteInfo[arg1].field_1280,
           inviteInfo[arg1].field_1536,
           inviteInfo[arg1].field_1792,
           inviteInfo[arg1].field_2048
}

function name_pID_(bytes32 arg1) {
    return name_pID_[arg1]
}

function addr_pID_(address arg1) {
    return addr_pID_[arg1]
}

function ethIn_() {
    return ethIn_
}

function oID_Order_(uint256 arg1) {
    return oID_Order_[arg1].field_0, 
           oID_Order_[arg1].field_256,
           oID_Order_[arg1].field_512,
           oID_Order_[arg1].field_768,
           oID_Order_[arg1].field_2816
}

function _owner() {
    return _owner
}

function sub_c2fea6d5(?) {
    require arg2 < sub_c2fea6d5[arg1]
    return sub_c2fea6d5[arg1][arg2]
}

function startTime_() {
    return startTime_
}

function activated_() {
    return bool(stor0)
}

function getInviteInfo() {
    return bool(inviteInfo[stor9[msg.sender]].field_512), 
           inviteInfo[stor9[msg.sender]].field_256,
           inviteInfo[stor9[msg.sender]].field_768,
           inviteInfo[inviteInfo[stor9[msg.sender]].field_768].field_256,
           inviteInfo[stor9[msg.sender]].field_1280,
           inviteInfo[stor9[msg.sender]].field_1536,
           inviteInfo[stor9[msg.sender]].field_1792,
           inviteInfo[stor9[msg.sender]].field_2048
}

function _fallback() payable {
    revert
}

function setAdministrator(bytes32 arg1, bool arg2) {
    if _owner != msg.sender:
        revert with 0, 'only owner can'
    stor3[arg1] = uint8(arg2)
}

function pause() {
    if not stor3[msg.sender]:
        revert with 0, 'only administrator can'
    if bool(stor0) != 1:
        revert with 0, 'not activated'
}

function sub_aaaf7c45(?) {
    if not stor3[msg.sender]:
        revert with 0, 'only administrator can'
    if bool(stor0) != 1:
        revert with 0, 'not activated'
    stor16 = 1
}

function activate() {
    if not stor3[msg.sender]:
        revert with 0, 'only administrator can'
    if stor0:
        revert with 0, 'activated'
    stor0 = 1
    activated_time_ = block.timestamp
}

function getInviteeInfo(uint256 arg1) {
    if addr_pID_[msg.sender] != inviteInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you must have invited this player'
    return inviteePID_inviteReward1_[arg1], inviteInfo[arg1].field_256
}

function withdrawTeamPot() {
    if not stor3[msg.sender]:
        revert with 0, 'only administrator can'
    if bool(stor0) != 1:
        revert with 0, 'not activated'
    call msg.sender with:
       value sub_175baf94 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_175baf94 = 0
}

function sub_3347a87a(?) {
    if not stor3[msg.sender]:
        revert with 0, 'only administrator can'
    if bool(stor0) != 1:
        revert with 0, 'not activated'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 <= sub_175baf94:
        sub_175baf94 -= arg1
}

function getOrderInfo() {
    if not inviteInfo[stor9[msg.sender]].field_2304:
        mem[(32 * inviteInfo[stor9[msg.sender]].field_2304) + 128] = 32
        mem[(32 * inviteInfo[stor9[msg.sender]].field_2304) + 160] = inviteInfo[stor9[msg.sender]].field_2304
        mem[(32 * inviteInfo[stor9[msg.sender]].field_2304) + 192 len floor32(inviteInfo[stor9[msg.sender]].field_2304)] = mem[128 len floor32(inviteInfo[stor9[msg.sender]].field_2304)]
        return memory
          from (32 * inviteInfo[stor9[msg.sender]].field_2304) + 128
           len (96 * inviteInfo[stor9[msg.sender]].field_2304) + 64
    mem[128] = inviteInfo[stor9[msg.sender]][9].field_0
    idx = 128
    s = 0
    while (32 * inviteInfo[stor9[msg.sender]].field_2304) + 96 > idx:
        mem[idx + 32] = inviteInfo[stor9[msg.sender]][s + 9].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * inviteInfo[stor9[msg.sender]].field_2304) + 192 len floor32(inviteInfo[stor9[msg.sender]].field_2304)] = mem[128 len floor32(inviteInfo[stor9[msg.sender]].field_2304)]
    return Array(len=inviteInfo[stor9[msg.sender]].field_2304, data=mem[128 len floor32(inviteInfo[stor9[msg.sender]].field_2304)], mem[(32 * inviteInfo[stor9[msg.sender]].field_2304) + floor32(inviteInfo[stor9[msg.sender]].field_2304) + 192 len (32 * inviteInfo[stor9[msg.sender]].field_2304) - floor32(inviteInfo[stor9[msg.sender]].field_2304)]), 
}

function getInviteePIDs() {
    if not inviteInfo[stor9[msg.sender]].field_1024:
        mem[(32 * inviteInfo[stor9[msg.sender]].field_1024) + 128] = 32
        mem[(32 * inviteInfo[stor9[msg.sender]].field_1024) + 160] = inviteInfo[stor9[msg.sender]].field_1024
        mem[(32 * inviteInfo[stor9[msg.sender]].field_1024) + 192 len floor32(inviteInfo[stor9[msg.sender]].field_1024)] = mem[128 len floor32(inviteInfo[stor9[msg.sender]].field_1024)]
        return memory
          from (32 * inviteInfo[stor9[msg.sender]].field_1024) + 128
           len (96 * inviteInfo[stor9[msg.sender]].field_1024) + 64
    mem[128] = inviteInfo[stor9[msg.sender]][4].field_0
    idx = 128
    s = 0
    while (32 * inviteInfo[stor9[msg.sender]].field_1024) + 96 > idx:
        mem[idx + 32] = inviteInfo[stor9[msg.sender]][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * inviteInfo[stor9[msg.sender]].field_1024) + 192 len floor32(inviteInfo[stor9[msg.sender]].field_1024)] = mem[128 len floor32(inviteInfo[stor9[msg.sender]].field_1024)]
    return Array(len=inviteInfo[stor9[msg.sender]].field_1024, data=mem[128 len floor32(inviteInfo[stor9[msg.sender]].field_1024)], mem[(32 * inviteInfo[stor9[msg.sender]].field_1024) + floor32(inviteInfo[stor9[msg.sender]].field_1024) + 192 len (32 * inviteInfo[stor9[msg.sender]].field_1024) - floor32(inviteInfo[stor9[msg.sender]].field_1024)]), 
}

function withdrawInviteReward() {
    if bool(stor0) != 1:
        revert with 0, 'not activated'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require inviteInfo[stor9[msg.sender]].field_1536 + inviteInfo[stor9[msg.sender]].field_1280 >= inviteInfo[stor9[msg.sender]].field_1280
    require inviteInfo[stor9[msg.sender]].field_1792 >= 0
    require inviteInfo[stor9[msg.sender]].field_2048 <= inviteInfo[stor9[msg.sender]].field_1792 + inviteInfo[stor9[msg.sender]].field_1536 + inviteInfo[stor9[msg.sender]].field_1280
    if inviteInfo[stor9[msg.sender]].field_1792 + inviteInfo[stor9[msg.sender]].field_1536 + inviteInfo[stor9[msg.sender]].field_1280 - inviteInfo[stor9[msg.sender]].field_2048 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you have no invite reward to withdraw'
    call msg.sender with:
       value inviteInfo[stor9[msg.sender]].field_1792 + inviteInfo[stor9[msg.sender]].field_1536 + inviteInfo[stor9[msg.sender]].field_1280 - inviteInfo[stor9[msg.sender]].field_2048 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require inviteInfo[stor9[msg.sender]].field_1792 + inviteInfo[stor9[msg.sender]].field_1536 + inviteInfo[stor9[msg.sender]].field_1280 >= inviteInfo[stor9[msg.sender]].field_2048
    inviteInfo[stor9[msg.sender]].field_2048 = inviteInfo[stor9[msg.sender]].field_1792 + inviteInfo[stor9[msg.sender]].field_1536 + inviteInfo[stor9[msg.sender]].field_1280
    emit onWithdrawInviteReward(inviteInfo[stor9[msg.sender]].field_1792 + inviteInfo[stor9[msg.sender]].field_1536 + inviteInfo[stor9[msg.sender]].field_1280 - inviteInfo[stor9[msg.sender]].field_2048, block.timestamp, addr_pID_[msg.sender], msg.sender);
}

function getOrder(uint256 arg1) {
    require activated_time_ <= block.timestamp
    require (block.timestamp - activated_time_ / 24 * 3600) + 1 >= block.timestamp - activated_time_ / 24 * 3600
    if addr_pID_[msg.sender] != oID_Order_[arg1].field_0:
        revert with 0, 'only owner can get its order'
    mem[96 len 224] = code.data[14326 len 224]
    require oID_Order_[arg1].field_512 <= (block.timestamp - activated_time_ / 24 * 3600) + 1
    if not (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1:
        if not oID_Order_[arg1].field_768:
            if oID_Order_[arg1].field_2816 <= 0:
                return oID_Order_[arg1].field_256, 
                       oID_Order_[arg1].field_512,
                       oID_Order_[arg1].field_768,
                       -oID_Order_[arg1].field_2816,
                       oID_Order_[arg1].field_2816
        else:
            if 12 * oID_Order_[arg1].field_768 / oID_Order_[arg1].field_768 == 12:
                if 12 * oID_Order_[arg1].field_768 / 100 >= 0:
                    if oID_Order_[arg1].field_2816 <= 12 * oID_Order_[arg1].field_768 / 100:
                        return oID_Order_[arg1].field_256, 
                               oID_Order_[arg1].field_512,
                               oID_Order_[arg1].field_768,
                               (12 * oID_Order_[arg1].field_768 / 100) - oID_Order_[arg1].field_2816,
                               oID_Order_[arg1].field_2816
    else:
        if 1 == (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1:
            if not oID_Order_[arg1].field_768:
                if oID_Order_[arg1].field_2816 <= 0:
                    return oID_Order_[arg1].field_256, 
                           oID_Order_[arg1].field_512,
                           oID_Order_[arg1].field_768,
                           -oID_Order_[arg1].field_2816,
                           oID_Order_[arg1].field_2816
            else:
                if 23 * oID_Order_[arg1].field_768 / oID_Order_[arg1].field_768 == 23:
                    if 23 * oID_Order_[arg1].field_768 / 100 >= 0:
                        if oID_Order_[arg1].field_2816 <= 23 * oID_Order_[arg1].field_768 / 100:
                            return oID_Order_[arg1].field_256, 
                                   oID_Order_[arg1].field_512,
                                   oID_Order_[arg1].field_768,
                                   (23 * oID_Order_[arg1].field_768 / 100) - oID_Order_[arg1].field_2816,
                                   oID_Order_[arg1].field_2816
        else:
            if 2 == (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1:
                if not oID_Order_[arg1].field_768:
                    if oID_Order_[arg1].field_2816 <= 0:
                        return oID_Order_[arg1].field_256, 
                               oID_Order_[arg1].field_512,
                               oID_Order_[arg1].field_768,
                               -oID_Order_[arg1].field_2816,
                               oID_Order_[arg1].field_2816
                else:
                    if 30 * oID_Order_[arg1].field_768 / oID_Order_[arg1].field_768 == 30:
                        if 30 * oID_Order_[arg1].field_768 / 100 >= 0:
                            if oID_Order_[arg1].field_2816 <= 30 * oID_Order_[arg1].field_768 / 100:
                                return oID_Order_[arg1].field_256, 
                                       oID_Order_[arg1].field_512,
                                       oID_Order_[arg1].field_768,
                                       (30 * oID_Order_[arg1].field_768 / 100) - oID_Order_[arg1].field_2816,
                                       oID_Order_[arg1].field_2816
            else:
                if not oID_Order_[arg1].field_768:
                    if (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1 > 9:
                        mem[320] = oID_Order_[arg1].field_1024
                        idx = 320
                        s = 4
                        while 544 > idx + 32:
                            mem[idx + 32] = oID_Order_[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        s = 0
                        while idx <= 6:
                            require idx < 7
                            _74 = mem[(32 * idx) + 320]
                            require mem[(32 * idx) + 320] + s >= s
                            idx = idx + 1
                            s = mem[(32 * idx) + 320] + s
                            continue 
                        if oID_Order_[arg1].field_2816 <= 7 * _74:
                            return oID_Order_[arg1].field_256, 
                                   oID_Order_[arg1].field_512,
                                   oID_Order_[arg1].field_768,
                                   (7 * _74) - oID_Order_[arg1].field_2816,
                                   oID_Order_[arg1].field_2816
                    else:
                        if 3 <= (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1:
                            mem[0] = arg1
                            mem[32] = 13
                            mem[64] = 544
                            mem[320] = oID_Order_[arg1].field_1024
                            idx = 320
                            s = 4
                            while 544 > idx + 32:
                                mem[idx + 32] = oID_Order_[arg1][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            idx = 0
                            s = 0
                            while idx <= (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 - 2:
                                require idx < 7
                                _75 = mem[(32 * idx) + 320]
                                require mem[(32 * idx) + 320] + s >= s
                                idx = idx + 1
                                s = mem[(32 * idx) + 320] + s
                                continue 
                            if oID_Order_[arg1].field_2816 <= -_75 + (block.timestamp - activated_time_ / 24 * 3600 * _75) - (oID_Order_[arg1].field_512 * _75):
                                return oID_Order_[arg1].field_256, 
                                       oID_Order_[arg1].field_512,
                                       oID_Order_[arg1].field_768,
                                       -_75 + (block.timestamp - activated_time_ / 24 * 3600 * _75) - (oID_Order_[arg1].field_512 * _75) - oID_Order_[arg1].field_2816,
                                       oID_Order_[arg1].field_2816
                else:
                    if 30 * oID_Order_[arg1].field_768 / oID_Order_[arg1].field_768 == 30:
                        if 30 * oID_Order_[arg1].field_768 / 100 >= 0:
                            if (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1 > 9:
                                mem[320] = oID_Order_[arg1].field_1024
                                idx = 320
                                s = 4
                                while 544 > idx + 32:
                                    mem[idx + 32] = oID_Order_[arg1][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                idx = 0
                                s = 30 * oID_Order_[arg1].field_768 / 100
                                while idx <= 6:
                                    require idx < 7
                                    _72 = mem[(32 * idx) + 320]
                                    require mem[(32 * idx) + 320] + s >= s
                                    idx = idx + 1
                                    s = mem[(32 * idx) + 320] + s
                                    continue 
                                if oID_Order_[arg1].field_2816 <= (30 * oID_Order_[arg1].field_768 / 100) + (7 * _72):
                                    return oID_Order_[arg1].field_256, 
                                           oID_Order_[arg1].field_512,
                                           oID_Order_[arg1].field_768,
                                           (30 * oID_Order_[arg1].field_768 / 100) + (7 * _72) - oID_Order_[arg1].field_2816,
                                           oID_Order_[arg1].field_2816
                            else:
                                if 3 <= (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1:
                                    mem[0] = arg1
                                    mem[32] = 13
                                    mem[64] = 544
                                    mem[320] = oID_Order_[arg1].field_1024
                                    idx = 320
                                    s = 4
                                    while 544 > idx + 32:
                                        mem[idx + 32] = oID_Order_[arg1][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    idx = 0
                                    s = 30 * oID_Order_[arg1].field_768 / 100
                                    while idx <= (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 - 2:
                                        require idx < 7
                                        _73 = mem[(32 * idx) + 320]
                                        require mem[(32 * idx) + 320] + s >= s
                                        idx = idx + 1
                                        s = mem[(32 * idx) + 320] + s
                                        continue 
                                    if oID_Order_[arg1].field_2816 <= (30 * oID_Order_[arg1].field_768 / 100) - _73 + (block.timestamp - activated_time_ / 24 * 3600 * _73) - (oID_Order_[arg1].field_512 * _73):
                                        return oID_Order_[arg1].field_256, 
                                               oID_Order_[arg1].field_512,
                                               oID_Order_[arg1].field_768,
                                               (30 * oID_Order_[arg1].field_768 / 100) - _73 + (block.timestamp - activated_time_ / 24 * 3600 * _73) - (oID_Order_[arg1].field_512 * _73) - oID_Order_[arg1].field_2816,
                                               oID_Order_[arg1].field_2816
    revert
}

function withdrawOrderRefund(uint256 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[480 len 224] = code.data[14326 len 224]
    mem[224] = 480
    mem[256] = 0
    if bool(stor0) != 1:
        revert with 0, 'not activated'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require activated_time_ <= block.timestamp
    require (block.timestamp - activated_time_ / 24 * 3600) + 1 >= block.timestamp - activated_time_ / 24 * 3600
    mem[704] = oID_Order_[arg1].field_0
    mem[736] = oID_Order_[arg1].field_256
    mem[768] = oID_Order_[arg1].field_512
    mem[800] = oID_Order_[arg1].field_768
    mem[896] = oID_Order_[arg1].field_1024
    idx = 896
    s = 4
    while 1120 > idx + 32:
        mem[idx + 32] = oID_Order_[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[832] = 896
    mem[864] = oID_Order_[arg1].field_2816
    if addr_pID_[msg.sender] != oID_Order_[arg1].field_0:
        revert with 0, 'only owner can withdraw'
    mem[1120 len 224] = code.data[14326 len 224]
    require oID_Order_[arg1].field_512 <= (block.timestamp - activated_time_ / 24 * 3600) + 1
    if not (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1:
        if not oID_Order_[arg1].field_768:
            require oID_Order_[arg1].field_2816 <= 0
            if -oID_Order_[arg1].field_2816 <= 0:
                revert with 0, 'no order refund need to be withdrawn'
            call msg.sender with:
               value -oID_Order_[arg1].field_2816 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 0 >= oID_Order_[arg1].field_2816
            oID_Order_[arg1].field_2816 = 0
            emit onWithdrawOrderRefund(arg1, -oID_Order_[arg1].field_2816, block.timestamp, oID_Order_[arg1].field_0, msg.sender);
        else:
            require 12 * oID_Order_[arg1].field_768 / oID_Order_[arg1].field_768 == 12
            require 12 * oID_Order_[arg1].field_768 / 100 >= 0
            require oID_Order_[arg1].field_2816 <= 12 * oID_Order_[arg1].field_768 / 100
            if (12 * oID_Order_[arg1].field_768 / 100) - oID_Order_[arg1].field_2816 <= 0:
                revert with 0, 'no order refund need to be withdrawn'
            call msg.sender with:
               value (12 * oID_Order_[arg1].field_768 / 100) - oID_Order_[arg1].field_2816 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 12 * oID_Order_[arg1].field_768 / 100 >= oID_Order_[arg1].field_2816
            oID_Order_[arg1].field_2816 = 12 * oID_Order_[arg1].field_768 / 100
            emit onWithdrawOrderRefund(arg1, (12 * oID_Order_[arg1].field_768 / 100) - oID_Order_[arg1].field_2816, block.timestamp, oID_Order_[arg1].field_0, msg.sender);
    else:
        if 1 == (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1:
            if not oID_Order_[arg1].field_768:
                require oID_Order_[arg1].field_2816 <= 0
                if -oID_Order_[arg1].field_2816 <= 0:
                    revert with 0, 'no order refund need to be withdrawn'
                call msg.sender with:
                   value -oID_Order_[arg1].field_2816 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 >= oID_Order_[arg1].field_2816
                oID_Order_[arg1].field_2816 = 0
                emit onWithdrawOrderRefund(arg1, -oID_Order_[arg1].field_2816, block.timestamp, oID_Order_[arg1].field_0, msg.sender);
            else:
                require 23 * oID_Order_[arg1].field_768 / oID_Order_[arg1].field_768 == 23
                require 23 * oID_Order_[arg1].field_768 / 100 >= 0
                require oID_Order_[arg1].field_2816 <= 23 * oID_Order_[arg1].field_768 / 100
                if (23 * oID_Order_[arg1].field_768 / 100) - oID_Order_[arg1].field_2816 <= 0:
                    revert with 0, 'no order refund need to be withdrawn'
                call msg.sender with:
                   value (23 * oID_Order_[arg1].field_768 / 100) - oID_Order_[arg1].field_2816 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 23 * oID_Order_[arg1].field_768 / 100 >= oID_Order_[arg1].field_2816
                oID_Order_[arg1].field_2816 = 23 * oID_Order_[arg1].field_768 / 100
                emit onWithdrawOrderRefund(arg1, (23 * oID_Order_[arg1].field_768 / 100) - oID_Order_[arg1].field_2816, block.timestamp, oID_Order_[arg1].field_0, msg.sender);
        else:
            if 2 == (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1:
                if not oID_Order_[arg1].field_768:
                    require oID_Order_[arg1].field_2816 <= 0
                    if -oID_Order_[arg1].field_2816 <= 0:
                        revert with 0, 'no order refund need to be withdrawn'
                    call msg.sender with:
                       value -oID_Order_[arg1].field_2816 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 >= oID_Order_[arg1].field_2816
                    oID_Order_[arg1].field_2816 = 0
                    emit onWithdrawOrderRefund(arg1, -oID_Order_[arg1].field_2816, block.timestamp, oID_Order_[arg1].field_0, msg.sender);
                else:
                    require 30 * oID_Order_[arg1].field_768 / oID_Order_[arg1].field_768 == 30
                    require 30 * oID_Order_[arg1].field_768 / 100 >= 0
                    require oID_Order_[arg1].field_2816 <= 30 * oID_Order_[arg1].field_768 / 100
                    if (30 * oID_Order_[arg1].field_768 / 100) - oID_Order_[arg1].field_2816 <= 0:
                        revert with 0, 'no order refund need to be withdrawn'
                    call msg.sender with:
                       value (30 * oID_Order_[arg1].field_768 / 100) - oID_Order_[arg1].field_2816 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 30 * oID_Order_[arg1].field_768 / 100 >= oID_Order_[arg1].field_2816
                    oID_Order_[arg1].field_2816 = 30 * oID_Order_[arg1].field_768 / 100
                    emit onWithdrawOrderRefund(arg1, (30 * oID_Order_[arg1].field_768 / 100) - oID_Order_[arg1].field_2816, block.timestamp, oID_Order_[arg1].field_0, msg.sender);
            else:
                if not oID_Order_[arg1].field_768:
                    if (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1 > 9:
                        mem[1344] = oID_Order_[arg1].field_1024
                        idx = 1344
                        s = 4
                        while 1568 > idx + 32:
                            mem[idx + 32] = oID_Order_[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        s = 0
                        while idx <= 6:
                            require idx < 7
                            _230 = mem[(32 * idx) + 1344]
                            require mem[(32 * idx) + 1344] + s >= s
                            idx = idx + 1
                            s = mem[(32 * idx) + 1344] + s
                            continue 
                        require oID_Order_[arg1].field_2816 <= 7 * _230
                        if (7 * _230) - oID_Order_[arg1].field_2816 <= 0:
                            revert with 0, 'no order refund need to be withdrawn'
                        call msg.sender with:
                           value (7 * _230) - oID_Order_[arg1].field_2816 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 7 * _230 >= oID_Order_[arg1].field_2816
                        oID_Order_[arg1].field_2816 = 7 * _230
                        emit onWithdrawOrderRefund(arg1, (7 * _230) - oID_Order_[arg1].field_2816, block.timestamp, oID_Order_[arg1].field_0, msg.sender);
                    else:
                        require 3 <= (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1
                        mem[0] = arg1
                        mem[32] = 13
                        mem[64] = 1568
                        mem[1344] = oID_Order_[arg1].field_1024
                        idx = 1344
                        s = 4
                        while 1568 > idx + 32:
                            mem[idx + 32] = oID_Order_[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        s = 0
                        while idx <= (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 - 2:
                            require idx < 7
                            _231 = mem[(32 * idx) + 1344]
                            require mem[(32 * idx) + 1344] + s >= s
                            idx = idx + 1
                            s = mem[(32 * idx) + 1344] + s
                            continue 
                        require oID_Order_[arg1].field_2816 <= -_231 + (block.timestamp - activated_time_ / 24 * 3600 * _231) - (oID_Order_[arg1].field_512 * _231)
                        if -_231 + (block.timestamp - activated_time_ / 24 * 3600 * _231) - (oID_Order_[arg1].field_512 * _231) - oID_Order_[arg1].field_2816 <= 0:
                            revert with 0, 'no order refund need to be withdrawn'
                        call msg.sender with:
                           value -_231 + (block.timestamp - activated_time_ / 24 * 3600 * _231) - (oID_Order_[arg1].field_512 * _231) - oID_Order_[arg1].field_2816 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require -_231 + (block.timestamp - activated_time_ / 24 * 3600 * _231) - (oID_Order_[arg1].field_512 * _231) >= oID_Order_[arg1].field_2816
                        oID_Order_[arg1].field_2816 = -_231 + (block.timestamp - activated_time_ / 24 * 3600 * _231) - (oID_Order_[arg1].field_512 * _231)
                        emit onWithdrawOrderRefund(arg1, -_231 + (block.timestamp - activated_time_ / 24 * 3600 * _231) - (oID_Order_[arg1].field_512 * _231) - oID_Order_[arg1].field_2816, block.timestamp, oID_Order_[arg1].field_0, msg.sender);
                else:
                    require 30 * oID_Order_[arg1].field_768 / oID_Order_[arg1].field_768 == 30
                    require 30 * oID_Order_[arg1].field_768 / 100 >= 0
                    if (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1 > 9:
                        mem[1344] = oID_Order_[arg1].field_1024
                        idx = 1344
                        s = 4
                        while 1568 > idx + 32:
                            mem[idx + 32] = oID_Order_[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        s = 30 * oID_Order_[arg1].field_768 / 100
                        while idx <= 6:
                            require idx < 7
                            _228 = mem[(32 * idx) + 1344]
                            require mem[(32 * idx) + 1344] + s >= s
                            idx = idx + 1
                            s = mem[(32 * idx) + 1344] + s
                            continue 
                        require oID_Order_[arg1].field_2816 <= (30 * oID_Order_[arg1].field_768 / 100) + (7 * _228)
                        if (30 * oID_Order_[arg1].field_768 / 100) + (7 * _228) - oID_Order_[arg1].field_2816 <= 0:
                            revert with 0, 'no order refund need to be withdrawn'
                        call msg.sender with:
                           value (30 * oID_Order_[arg1].field_768 / 100) + (7 * _228) - oID_Order_[arg1].field_2816 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require (30 * oID_Order_[arg1].field_768 / 100) + (7 * _228) >= oID_Order_[arg1].field_2816
                        oID_Order_[arg1].field_2816 = (30 * oID_Order_[arg1].field_768 / 100) + (7 * _228)
                        emit onWithdrawOrderRefund(arg1, (30 * oID_Order_[arg1].field_768 / 100) + (7 * _228) - oID_Order_[arg1].field_2816, block.timestamp, oID_Order_[arg1].field_0, msg.sender);
                    else:
                        require 3 <= (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 + 1
                        mem[0] = arg1
                        mem[32] = 13
                        mem[64] = 1568
                        mem[1344] = oID_Order_[arg1].field_1024
                        idx = 1344
                        s = 4
                        while 1568 > idx + 32:
                            mem[idx + 32] = oID_Order_[arg1][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        s = 30 * oID_Order_[arg1].field_768 / 100
                        while idx <= (block.timestamp - activated_time_ / 24 * 3600) + -oID_Order_[arg1].field_512 - 2:
                            require idx < 7
                            _229 = mem[(32 * idx) + 1344]
                            require mem[(32 * idx) + 1344] + s >= s
                            idx = idx + 1
                            s = mem[(32 * idx) + 1344] + s
                            continue 
                        require oID_Order_[arg1].field_2816 <= (30 * oID_Order_[arg1].field_768 / 100) - _229 + (block.timestamp - activated_time_ / 24 * 3600 * _229) - (oID_Order_[arg1].field_512 * _229)
                        if (30 * oID_Order_[arg1].field_768 / 100) - _229 + (block.timestamp - activated_time_ / 24 * 3600 * _229) - (oID_Order_[arg1].field_512 * _229) - oID_Order_[arg1].field_2816 <= 0:
                            revert with 0, 'no order refund need to be withdrawn'
                        call msg.sender with:
                           value (30 * oID_Order_[arg1].field_768 / 100) - _229 + (block.timestamp - activated_time_ / 24 * 3600 * _229) - (oID_Order_[arg1].field_512 * _229) - oID_Order_[arg1].field_2816 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require (30 * oID_Order_[arg1].field_768 / 100) - _229 + (block.timestamp - activated_time_ / 24 * 3600 * _229) - (oID_Order_[arg1].field_512 * _229) >= oID_Order_[arg1].field_2816
                        oID_Order_[arg1].field_2816 = (30 * oID_Order_[arg1].field_768 / 100) - _229 + (block.timestamp - activated_time_ / 24 * 3600 * _229) - (oID_Order_[arg1].field_512 * _229)
                        emit onWithdrawOrderRefund(arg1, (30 * oID_Order_[arg1].field_768 / 100) - _229 + (block.timestamp - activated_time_ / 24 * 3600 * _229) - (oID_Order_[arg1].field_512 * _229) - oID_Order_[arg1].field_2816, block.timestamp, oID_Order_[arg1].field_0, msg.sender);
}

function enableInviteOfSU(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = address(msg.sender)
    if not stor3[msg.sender]:
        revert with 0, 'only administrator can'
    if bool(stor0) != 1:
        revert with 0, 'not activated'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if not addr_pID_[msg.sender]:
        require pIDIndex_ + 1 >= pIDIndex_
        pIDIndex_++
        inviteInfo[stor7 + 1].field_0 = msg.sender or Mask(96, 160, inviteInfo[stor7 + 1].field_0)
        addr_pID_[msg.sender] = pIDIndex_
    mem[0] = addr_pID_[msg.sender]
    mem[32] = 8
    if inviteInfo[stor9[msg.sender]].field_512:
        revert with 0, 'you can only enable invite once'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require 1 <= arg1.length
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 88, mem[arg1.length + 127 len ceil32(arg1.length) + -arg1.length + 1]) << 160:
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
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if idx < arg1.length:
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    if idx < arg1.length:
                        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                            if s:
                                if idx + 1 >= idx:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            else:
                                if idx < arg1.length:
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        if idx + 1 >= idx:
                                            idx = idx + 1
                                            s = 1
                                            continue 
                                    else:
                                        if idx < arg1.length:
                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = s
                                                    continue 
                                            else:
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = 1
                                                    continue 
                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                        else:
                            if idx + 1 >= idx:
                                if idx + 1 < arg1.length:
                                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                        revert with 0, 'string cannot contain consecutive spaces'
                                    if s:
                                        if idx + 1 >= idx:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                    else:
                                        if idx < arg1.length:
                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = 1
                                                    continue 
                                            else:
                                                if idx < arg1.length:
                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = 1
                                                            continue 
                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                else:
                    if idx < arg1.length:
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            if idx < arg1.length:
                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                if idx < arg1.length:
                                    if Mask(8, 248, mem[idx + 128]) >= ':':
                                        revert with 0, 'string contains invalid characters'
                                    if idx < arg1.length:
                                        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                            if s:
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = s
                                                    continue 
                                            else:
                                                if idx < arg1.length:
                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = 1
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                        else:
                                            if idx + 1 >= idx:
                                                if idx + 1 < arg1.length:
                                                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                        revert with 0, 'string cannot contain consecutive spaces'
                                                    if s:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = s
                                                                            continue 
                                                                    else:
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                        else:
                            if idx < arg1.length:
                                if Mask(8, 248, mem[idx + 128]) < '{':
                                    if idx < arg1.length:
                                        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                            if s:
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = s
                                                    continue 
                                            else:
                                                if idx < arg1.length:
                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = 1
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                        else:
                                            if idx + 1 >= idx:
                                                if idx + 1 < arg1.length:
                                                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                        revert with 0, 'string cannot contain consecutive spaces'
                                                    if s:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = s
                                                                            continue 
                                                                    else:
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                else:
                                    if idx < arg1.length:
                                        if Mask(8, 248, mem[idx + 128]) <= '/':
                                            revert with 0, 'string contains invalid characters'
                                        if idx < arg1.length:
                                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                                revert with 0, 'string contains invalid characters'
                                            if idx < arg1.length:
                                                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                                    if s:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = s
                                                                            continue 
                                                                    else:
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                                else:
                                                    if idx + 1 >= idx:
                                                        if idx + 1 < arg1.length:
                                                            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                                revert with 0, 'string cannot contain consecutive spaces'
                                                            if s:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    else:
                                                                        if idx < arg1.length:
                                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = s
                                                                                    continue 
                                                                            else:
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = 1
                                                                                    continue 
                                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
        else:
            if idx < arg1.length:
                if Mask(8, 248, mem[idx + 128]) < '[':
                    if idx < arg1.length:
                        if idx < arg1.length:
                            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                            if s:
                                if idx + 1 >= idx:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            else:
                                if idx + 1 >= idx:
                                    idx = idx + 1
                                    s = 1
                                    continue 
                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                else:
                    if idx < arg1.length:
                        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                            if idx < arg1.length:
                                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if s:
                                        if idx + 1 >= idx:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                    else:
                                        if idx < arg1.length:
                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = 1
                                                    continue 
                                            else:
                                                if idx < arg1.length:
                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = 1
                                                            continue 
                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                else:
                                    if idx + 1 >= idx:
                                        if idx + 1 < arg1.length:
                                            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                revert with 0, 'string cannot contain consecutive spaces'
                                            if s:
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = s
                                                    continue 
                                            else:
                                                if idx < arg1.length:
                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = 1
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                        else:
                            if idx < arg1.length:
                                if Mask(8, 248, mem[idx + 128]) <= '`':
                                    if idx < arg1.length:
                                        if Mask(8, 248, mem[idx + 128]) <= '/':
                                            revert with 0, 'string contains invalid characters'
                                        if idx < arg1.length:
                                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                                revert with 0, 'string contains invalid characters'
                                            if idx < arg1.length:
                                                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                                    if s:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = s
                                                                            continue 
                                                                    else:
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                                else:
                                                    if idx + 1 >= idx:
                                                        if idx + 1 < arg1.length:
                                                            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                                revert with 0, 'string cannot contain consecutive spaces'
                                                            if s:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    else:
                                                                        if idx < arg1.length:
                                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = s
                                                                                    continue 
                                                                            else:
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = 1
                                                                                    continue 
                                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                else:
                                    if idx < arg1.length:
                                        if Mask(8, 248, mem[idx + 128]) < '{':
                                            if idx < arg1.length:
                                                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                                    if s:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = s
                                                                            continue 
                                                                    else:
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                                else:
                                                    if idx + 1 >= idx:
                                                        if idx + 1 < arg1.length:
                                                            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                                revert with 0, 'string cannot contain consecutive spaces'
                                                            if s:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    else:
                                                                        if idx < arg1.length:
                                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = s
                                                                                    continue 
                                                                            else:
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = 1
                                                                                    continue 
                                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                        else:
                                            if idx < arg1.length:
                                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                                    revert with 0, 'string contains invalid characters'
                                                if idx < arg1.length:
                                                    if Mask(8, 248, mem[idx + 128]) >= ':':
                                                        revert with 0, 'string contains invalid characters'
                                                    if idx < arg1.length:
                                                        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                                            if s:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    else:
                                                                        if idx < arg1.length:
                                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = s
                                                                                    continue 
                                                                            else:
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = 1
                                                                                    continue 
                                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                                        else:
                                                            if idx + 1 >= idx:
                                                                if idx + 1 < arg1.length:
                                                                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                                        revert with 0, 'string cannot contain consecutive spaces'
                                                                    if s:
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = s
                                                                            continue 
                                                                    else:
                                                                        if idx < arg1.length:
                                                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = 1
                                                                                    continue 
                                                                            else:
                                                                                if idx < arg1.length:
                                                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                                        if idx + 1 >= idx:
                                                                                            idx = idx + 1
                                                                                            s = s
                                                                                            continue 
                                                                                    else:
                                                                                        if idx + 1 >= idx:
                                                                                            idx = idx + 1
                                                                                            s = 1
                                                                                            continue 
                                                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
        revert
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    if name_pID_[mem[128]]:
        revert with 0, 'your name is already registered by others'
    name_pID_[mem[128]] = addr_pID_[msg.sender]
    inviteInfo[stor9[msg.sender]].field_256 = mem[128]
    inviteInfo[stor9[msg.sender]].field_512 = 1
}

function enableInvite(string arg1, bytes32 arg2) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if bool(stor0) != 1:
        revert with 0, 'not activated'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if not addr_pID_[msg.sender]:
        require pIDIndex_ + 1 >= pIDIndex_
        pIDIndex_++
        inviteInfo[stor7 + 1].field_0 = msg.sender or Mask(96, 160, inviteInfo[stor7 + 1].field_0)
        addr_pID_[msg.sender] = pIDIndex_
    if inviteInfo[stor9[msg.sender]].field_768:
        mem[0] = addr_pID_[msg.sender]
        mem[32] = 8
        if inviteInfo[stor9[msg.sender]].field_512:
            revert with 0, 'you can only enable invite once'
        if arg1.length > 32:
            revert with 0, 'string must be between 1 and 32 characters'
        if arg1.length <= 0:
            revert with 0, 'string must be between 1 and 32 characters'
        require 0 < arg1.length
        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
            revert with 0, 'string cannot start or end with space'
        require 1 <= arg1.length
        require arg1.length - 1 < arg1.length
        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
            revert with 0, 'string cannot start or end with space'
    else:
        if not name_pID_[arg2]:
            revert with 0, 'your inviter name must be registered'
        if bool(inviteInfo[stor10[arg2]].field_512) != 1:
            revert with 0, 'your inviter must enable invite'
        if addr_pID_[msg.sender] == name_pID_[arg2]:
            revert with 0, 'you can not invite yourself'
        inviteInfo[stor9[msg.sender]].field_768 = name_pID_[arg2]
        mem[ceil32(arg1.length) + 128] = addr_pID_[msg.sender]
        mem[ceil32(arg1.length) + 160] = msg.sender
        mem[ceil32(arg1.length) + 192] = block.timestamp
        emit onSetInviter(addr_pID_[msg.sender], msg.sender, block.timestamp, name_pID_[arg2], inviteInfo[stor10[arg2]].field_0, arg2);
        mem[0] = addr_pID_[msg.sender]
        mem[32] = 8
        if inviteInfo[stor9[msg.sender]].field_512:
            revert with 0, 'you can only enable invite once'
        if arg1.length > 32:
            revert with 0, 'string must be between 1 and 32 characters'
        if arg1.length <= 0:
            revert with 0, 'string must be between 1 and 32 characters'
        require 0 < arg1.length
        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
            revert with 0, 'string cannot start or end with space'
        require 1 <= arg1.length
        require arg1.length - 1 < arg1.length
        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(8 * arg1.length + -ceil32(arg1.length) + 31) + 248, mem[arg1.length + 127 len ceil32(arg1.length) + -arg1.length + 1]) << 8 * arg1.length + -ceil32(arg1.length) + 31:
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
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if idx < arg1.length:
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    if idx < arg1.length:
                        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                            if s:
                                if idx + 1 >= idx:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            else:
                                if idx < arg1.length:
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        if idx + 1 >= idx:
                                            idx = idx + 1
                                            s = 1
                                            continue 
                                    else:
                                        if idx < arg1.length:
                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = s
                                                    continue 
                                            else:
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = 1
                                                    continue 
                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                        else:
                            if idx + 1 >= idx:
                                if idx + 1 < arg1.length:
                                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                        revert with 0, 'string cannot contain consecutive spaces'
                                    if s:
                                        if idx + 1 >= idx:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                    else:
                                        if idx < arg1.length:
                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = 1
                                                    continue 
                                            else:
                                                if idx < arg1.length:
                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = 1
                                                            continue 
                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                else:
                    if idx < arg1.length:
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            if idx < arg1.length:
                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                if idx < arg1.length:
                                    if Mask(8, 248, mem[idx + 128]) >= ':':
                                        revert with 0, 'string contains invalid characters'
                                    if idx < arg1.length:
                                        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                            if s:
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = s
                                                    continue 
                                            else:
                                                if idx < arg1.length:
                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = 1
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                        else:
                                            if idx + 1 >= idx:
                                                if idx + 1 < arg1.length:
                                                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                        revert with 0, 'string cannot contain consecutive spaces'
                                                    if s:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = s
                                                                            continue 
                                                                    else:
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                        else:
                            if idx < arg1.length:
                                if Mask(8, 248, mem[idx + 128]) < '{':
                                    if idx < arg1.length:
                                        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                            if s:
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = s
                                                    continue 
                                            else:
                                                if idx < arg1.length:
                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = 1
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                        else:
                                            if idx + 1 >= idx:
                                                if idx + 1 < arg1.length:
                                                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                        revert with 0, 'string cannot contain consecutive spaces'
                                                    if s:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = s
                                                                            continue 
                                                                    else:
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                else:
                                    if idx < arg1.length:
                                        if Mask(8, 248, mem[idx + 128]) <= '/':
                                            revert with 0, 'string contains invalid characters'
                                        if idx < arg1.length:
                                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                                revert with 0, 'string contains invalid characters'
                                            if idx < arg1.length:
                                                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                                    if s:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = s
                                                                            continue 
                                                                    else:
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                                else:
                                                    if idx + 1 >= idx:
                                                        if idx + 1 < arg1.length:
                                                            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                                revert with 0, 'string cannot contain consecutive spaces'
                                                            if s:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    else:
                                                                        if idx < arg1.length:
                                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = s
                                                                                    continue 
                                                                            else:
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = 1
                                                                                    continue 
                                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
        else:
            if idx < arg1.length:
                if Mask(8, 248, mem[idx + 128]) < '[':
                    if idx < arg1.length:
                        if idx < arg1.length:
                            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                            if s:
                                if idx + 1 >= idx:
                                    idx = idx + 1
                                    s = s
                                    continue 
                            else:
                                if idx + 1 >= idx:
                                    idx = idx + 1
                                    s = 1
                                    continue 
                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                else:
                    if idx < arg1.length:
                        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                            if idx < arg1.length:
                                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if s:
                                        if idx + 1 >= idx:
                                            idx = idx + 1
                                            s = s
                                            continue 
                                    else:
                                        if idx < arg1.length:
                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = 1
                                                    continue 
                                            else:
                                                if idx < arg1.length:
                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = 1
                                                            continue 
                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                else:
                                    if idx + 1 >= idx:
                                        if idx + 1 < arg1.length:
                                            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                revert with 0, 'string cannot contain consecutive spaces'
                                            if s:
                                                if idx + 1 >= idx:
                                                    idx = idx + 1
                                                    s = s
                                                    continue 
                                            else:
                                                if idx < arg1.length:
                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = 1
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                        else:
                            if idx < arg1.length:
                                if Mask(8, 248, mem[idx + 128]) <= '`':
                                    if idx < arg1.length:
                                        if Mask(8, 248, mem[idx + 128]) <= '/':
                                            revert with 0, 'string contains invalid characters'
                                        if idx < arg1.length:
                                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                                revert with 0, 'string contains invalid characters'
                                            if idx < arg1.length:
                                                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                                    if s:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = s
                                                                            continue 
                                                                    else:
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                                else:
                                                    if idx + 1 >= idx:
                                                        if idx + 1 < arg1.length:
                                                            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                                revert with 0, 'string cannot contain consecutive spaces'
                                                            if s:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    else:
                                                                        if idx < arg1.length:
                                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = s
                                                                                    continue 
                                                                            else:
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = 1
                                                                                    continue 
                                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                else:
                                    if idx < arg1.length:
                                        if Mask(8, 248, mem[idx + 128]) < '{':
                                            if idx < arg1.length:
                                                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                                    if s:
                                                        if idx + 1 >= idx:
                                                            idx = idx + 1
                                                            s = s
                                                            continue 
                                                    else:
                                                        if idx < arg1.length:
                                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = 1
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = s
                                                                            continue 
                                                                    else:
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                                else:
                                                    if idx + 1 >= idx:
                                                        if idx + 1 < arg1.length:
                                                            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                                revert with 0, 'string cannot contain consecutive spaces'
                                                            if s:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    else:
                                                                        if idx < arg1.length:
                                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = s
                                                                                    continue 
                                                                            else:
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = 1
                                                                                    continue 
                                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                        else:
                                            if idx < arg1.length:
                                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                                    revert with 0, 'string contains invalid characters'
                                                if idx < arg1.length:
                                                    if Mask(8, 248, mem[idx + 128]) >= ':':
                                                        revert with 0, 'string contains invalid characters'
                                                    if idx < arg1.length:
                                                        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                                            if s:
                                                                if idx + 1 >= idx:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    continue 
                                                            else:
                                                                if idx < arg1.length:
                                                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = 1
                                                                            continue 
                                                                    else:
                                                                        if idx < arg1.length:
                                                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = s
                                                                                    continue 
                                                                            else:
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = 1
                                                                                    continue 
                                                                            ('lt', ('add', 1, ('var', 0)), ('var', 0))
                                                        else:
                                                            if idx + 1 >= idx:
                                                                if idx + 1 < arg1.length:
                                                                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                                                                        revert with 0, 'string cannot contain consecutive spaces'
                                                                    if s:
                                                                        if idx + 1 >= idx:
                                                                            idx = idx + 1
                                                                            s = s
                                                                            continue 
                                                                    else:
                                                                        if idx < arg1.length:
                                                                            if Mask(8, 248, mem[idx + 128]) < '0':
                                                                                if idx + 1 >= idx:
                                                                                    idx = idx + 1
                                                                                    s = 1
                                                                                    continue 
                                                                            else:
                                                                                if idx < arg1.length:
                                                                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                                                                        if idx + 1 >= idx:
                                                                                            idx = idx + 1
                                                                                            s = s
                                                                                            continue 
                                                                                    else:
                                                                                        if idx + 1 >= idx:
                                                                                            idx = idx + 1
                                                                                            s = 1
                                                                                            continue 
                                                                                    ('lt', ('add', 1, ('var', 0)), ('var', 0))
        revert
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    if name_pID_[mem[128]]:
        revert with 0, 'your name is already registered by others'
    inviteInfo[stor9[msg.sender]].field_256 = mem[128]
    inviteInfo[stor9[msg.sender]].field_512 = 1
    name_pID_[mem[128]] = addr_pID_[msg.sender]
    require msg.value + sub_175baf94 >= sub_175baf94
    sub_175baf94 += msg.value
    emit onEnableInvite(addr_pID_[msg.sender], msg.sender, mem[128], block.timestamp);
}



}
