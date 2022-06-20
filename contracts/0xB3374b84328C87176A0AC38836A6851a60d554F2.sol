contract main {




// =====================  Runtime code  =====================


#
#  - setRewards(address[] arg1, uint256[] arg2, uint256[] arg3)
#  - triggerDispute()
#
address owner;
array of uint256 stor1;
address sub_073f03fbAddress;
array of struct stor3;
address stor4;
array of struct stor5;
uint8 stor6;
address stor7;
array of uint256 stor8;
uint256 stor9;
uint256 stor10;
array of uint256 stor11;
mapping of uint256 stor12;
uint256 sub_00f16142;
mapping of uint8 stor16;
array of struct stor17;
mapping of uint256 reward;
array of struct stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
array of uint256 sub_42380eaf;
uint256 sub_f38a803f;
uint256 stakingAmount;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
big1280 stor31;
uint256 stor32;
address stor34;
array of uint256 eventName;
uint256 stor37;
uint256 stor38;
array of uint256 sub_4227357c;
array of struct stor40;
uint256 stor41;
uint256 stor42;
uint256 stor43;
uint256 stor44;
uint256 stor45;
uint8 stor46;
uint8 state;
uint8 sub_148b597c; offset 8
uint256 stor47;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function sub_00f16142(?) {
    return sub_00f16142
}

function sub_073f03fb(?) {
    return sub_073f03fbAddress
}

function sub_148b597c(?) {
    return bool(sub_148b597c)
}

function getState() {
    require state <= 5
    return state
}

function getReward() {
    return reward[msg.sender][0], reward[msg.sender][1]
}

function sub_4227357c(?) {
    return sub_4227357c[0 len sub_4227357c.length]
}

function sub_42380eaf(?) {
    return sub_42380eaf[0 len sub_42380eaf.length]
}

function stakingAmount() {
    return stakingAmount
}

function eventName() {
    return eventName[0 len eventName.length]
}

function owner() {
    return owner
}

function tokenAddress() {
    return address(stor1.length)
}

function sub_f38a803f(?) {
    return sub_f38a803f
}

function isParticipating(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor16[address(arg1)])
}

function _fallback() payable {
  stop
}

function isMasterNode() {
    return (msg.sender == stor7)
}

function getDisputeData() {
    return Mask(1280, 0, stor31), stor34
}

function getEventTimes() {
    return stor21, stor22, stor23, stor24, sub_f38a803f
}

function getConsensusRules() {
    require stor46 <= 1
    return stor41, stor42, stor43, stor44, stor45, stor46
}

function sub_181b3f5a(?) {
    if not stor30:
        return stor28
    if stor32 != 1:
        return (stor28 * stor32)
    require stor30
    return (stor28 + (stor28 / stor30))
}

function sub_fce1a10c(?) {
    idx = 192
    s = 38
    while 224 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return stor37, stor38
}

function setDataFeedHash(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    sub_4227357c[] = Array(len=arg1.length, data=arg1[all])
}

function getBalance() {
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return eth.balance(this.address), ext_call.return_data[0]
}

function sub_e0807f89(?) {
    if stor5.length:
        mem[128] = uint256(stor5.field_0)
        if (32 * stor5.length) + 32 > 64:
            mem[160] = uint256(stor5.field_256)
            idx = 160
            s = 1
            while (32 * stor5.length) + 96 > idx:
                mem[idx + 32] = uint256(stor5[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return memory
      from (32 * stor5.length) + 128
       len (96 * stor5.length) + 64
}

function getEventResolvers() {
    if stor3.length:
        mem[128] = address(stor3.field_0)
        if (32 * stor3.length) + 32 > 64:
            mem[160] = address(stor3.field_256)
            idx = 160
            s = 1
            while (32 * stor3.length) + 96 > idx:
                mem[idx + 32] = address(stor3[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor3.length) + 128] = 32
    mem[(32 * stor3.length) + 160] = stor3.length
    mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
    return memory
      from (32 * stor3.length) + 128
       len (96 * stor3.length) + 64
}

function getParticipants() {
    if stor17.length:
        mem[128] = address(stor17.field_0)
        if (32 * stor17.length) + 32 > 64:
            mem[160] = address(stor17.field_256)
            idx = 160
            s = 1
            while (32 * stor17.length) + 96 > idx:
                mem[idx + 32] = address(stor17[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor17.length) + 128] = 32
    mem[(32 * stor17.length) + 160] = stor17.length
    mem[(32 * stor17.length) + 192 len floor32(stor17.length)] = mem[128 len floor32(stor17.length)]
    return memory
      from (32 * stor17.length) + 128
       len (96 * stor17.length) + 64
}

function getResults() {
    if not stor40.length:
        mem[(32 * stor40.length) + 128] = 32
        mem[(32 * stor40.length) + 160] = stor40.length
        mem[(32 * stor40.length) + 192 len floor32(stor40.length)] = mem[128 len floor32(stor40.length)]
        return memory
          from (32 * stor40.length) + 128
           len (96 * stor40.length) + 64
    mem[128] = uint256(stor40.field_0)
    idx = 128
    s = 0
    while (32 * stor40.length) + 96 > idx:
        mem[idx + 32] = uint256(stor40[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor40.length) + 192 len floor32(stor40.length)] = mem[128 len floor32(stor40.length)]
    return Array(len=stor40.length, data=mem[128 len floor32(stor40.length)], mem[(32 * stor40.length) + floor32(stor40.length) + 192 len (32 * stor40.length) - floor32(stor40.length)]), 
}

function getRewardsIndex() {
    if not stor20.length:
        mem[(32 * stor20.length) + 128] = 32
        mem[(32 * stor20.length) + 160] = stor20.length
        mem[(32 * stor20.length) + 192 len floor32(stor20.length)] = mem[128 len floor32(stor20.length)]
        return memory
          from (32 * stor20.length) + 128
           len (96 * stor20.length) + 64
    mem[128] = address(stor20.field_0)
    idx = 128
    s = 0
    while (32 * stor20.length) + 96 > idx:
        mem[idx + 32] = address(stor20[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor20.length) + 192 len floor32(stor20.length)] = mem[128 len floor32(stor20.length)]
    return Array(len=stor20.length, data=mem[128 len floor32(stor20.length)], mem[(32 * stor20.length) + floor32(stor20.length) + 192 len (32 * stor20.length) - floor32(stor20.length)]), 
}

function sub_fb6c9537(?) {
    require msg.sender == owner
    if block.timestamp >= stor23:
        revert with 0, 'Event already started.'
    sub_148b597c = 1
    stor24 = block.timestamp
    require state <= 5
    if state >= 4:
        revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
    state = 5
    emit EventFailed('Event canceled by creator.');
    require state <= 5
    emit 0xb9eb8a30: state
    if stakingAmount > 0:
        idx = 0
        while idx < stor17.length:
            mem[0] = 17
            mem[164] = address(stor17[idx].field_0)
            mem[196] = stakingAmount
            require ext_code.size(address(stor1.length))
            call address(stor1.length).0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor17[idx].field_0), stakingAmount
            mem[160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
}

function approveRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    require state <= 5
    if state != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                    mem[200 len 28]
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if address(stor3[idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        if msg.sender == stor7:
            revert with 0, 'Not a valid sender address.'
        require stor6 <= 2
        if stor6 != 1:
            revert with 0, 'Not validating rewards.'
        if arg1 != sub_00f16142:
            revert with 0, 'Validation round mismatch.'
        if stor12[msg.sender] >= sub_00f16142:
            revert with 0, 'Already voted for this round.'
        stor9++
        stor12[msg.sender] = sub_00f16142
        require stor3.length
        if 100 * stor9 / stor3.length >= stor43:
            stor6 = 2
            if not stor40.length:
                uint256(stor31) = block.timestamp
                state = 4
            else:
                uint256(stor31) = block.timestamp + stor29
                require state <= 5
                if state >= 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[202 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
            require state <= 5
            emit 0xb9eb8a30: state
    revert with 0, 'Not a valid sender address.'
}

function getRewards(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        mem[(64 * arg1.length) + 160] = arg1.length
        mem[64] = (98 * arg1.length) + 192
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * arg1.length) + (32 * idx) + 160] = reward[mem[(32 * idx) + 140 len 20]][0]
                require idx < mem[96]
                mem[0] = 1
                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 19)
                require idx < mem[(64 * arg1.length) + 160]
                mem[(64 * arg1.length) + (32 * idx) + 192] = reward[mem[(32 * idx) + 140 len 20]][1]
                idx = idx + 1
                continue 
            _92 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
            _94 = mem[(32 * arg1.length) + 128]
            s = 0
            while arg1.length < 32 * _94:
                mem[arg1.length + mem[64] + 96] = mem[(34 * arg1.length) + 160]
                s = arg1.length + 32
                continue 
            mem[_92 + 32] = (32 * _94) + 96
            mem[(32 * _94) + _92 + 96] = mem[(64 * arg1.length) + 160]
            _161 = mem[(64 * arg1.length) + 160]
            mem[(32 * _94) + _92 + 128 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            return memory
              from mem[64]
               len (32 * _161) + (32 * _94) + _92 + -mem[64] + 128
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[17943 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * arg1.length) + (32 * idx) + 160] = reward[mem[(32 * idx) + 140 len 20]][0]
            require idx < mem[96]
            mem[0] = 1
            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 19)
            require idx < mem[(64 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * idx) + 192] = reward[mem[(32 * idx) + 140 len 20]][1]
            idx = idx + 1
            continue 
        _99 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
        _101 = mem[(32 * arg1.length) + 128]
        s = 0
        while arg1.length < 32 * _101:
            mem[arg1.length + mem[64] + 96] = mem[(34 * arg1.length) + 160]
            s = arg1.length + 32
            continue 
        mem[_99 + 32] = (32 * _101) + 96
        mem[(32 * _101) + _99 + 96] = mem[(64 * arg1.length) + 160]
        _164 = mem[(64 * arg1.length) + 160]
        mem[(32 * _101) + _99 + 128 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _164) + (32 * _101) + _99 + -mem[64] + 128
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[17943 len 32 * arg1.length]
    mem[(64 * arg1.length) + 160] = arg1.length
    mem[64] = (98 * arg1.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * arg1.length) + (32 * idx) + 160] = reward[mem[(32 * idx) + 140 len 20]][0]
            require idx < mem[96]
            mem[0] = 1
            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 19)
            require idx < mem[(64 * arg1.length) + 160]
            mem[(64 * arg1.length) + (32 * idx) + 192] = reward[mem[(32 * idx) + 140 len 20]][1]
            idx = idx + 1
            continue 
        _106 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
        _108 = mem[(32 * arg1.length) + 128]
        s = 0
        while arg1.length < 32 * _108:
            mem[arg1.length + mem[64] + 96] = mem[(34 * arg1.length) + 160]
            s = arg1.length + 32
            continue 
        mem[_106 + 32] = (32 * _108) + 96
        mem[(32 * _108) + _106 + 96] = mem[(64 * arg1.length) + 160]
        _167 = mem[(64 * arg1.length) + 160]
        mem[(32 * _108) + _106 + 128 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _167) + (32 * _108) + _106 + -mem[64] + 128
    mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[17943 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * arg1.length) + (32 * idx) + 160] = reward[mem[(32 * idx) + 140 len 20]][0]
        require idx < mem[96]
        mem[0] = 1
        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 19)
        require idx < mem[(64 * arg1.length) + 160]
        mem[(64 * arg1.length) + (32 * idx) + 192] = reward[mem[(32 * idx) + 140 len 20]][1]
        idx = idx + 1
        continue 
    _113 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
    _115 = mem[(32 * arg1.length) + 128]
    s = 0
    while arg1.length < 32 * _115:
        mem[arg1.length + mem[64] + 96] = mem[(34 * arg1.length) + 160]
        s = arg1.length + 32
        continue 
    mem[_113 + 32] = (32 * _115) + 96
    mem[(32 * _115) + _113 + 96] = mem[(64 * arg1.length) + 160]
    _170 = mem[(64 * arg1.length) + 160]
    mem[(32 * _115) + _113 + 128 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    return memory
      from mem[64]
       len (32 * _170) + (32 * _115) + _113 + -mem[64] + 128
}

function sub_d563f0c5(?) {
    require state <= 5
    require state <= 5
    if state:
    else:
        if block.timestamp < stor21:
        else:
            if state >= 4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                            mem[202 len 26]
            require state <= 5
            require state + 1 <= 5
            stor47 = state + 1 or Mask(248, 8, stor47)
            require state <= 5
            emit 0xb9eb8a30: state
    require state <= 5
    if state != 1:
        require state <= 5
        if state != 3:
        else:
            if block.timestamp < uint256(stor31):
            else:
                if state >= 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[202 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                emit 0xb9eb8a30: state
        if state == 2:
            if block.timestamp >= stor24 + sub_f38a803f:
                require state <= 5
                if state >= 4:
                    revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                state = 5
                emit EventFailed('.Event took too long to complete');
                require state <= 5
                emit 0xb9eb8a30: state
    else:
        if block.timestamp < stor22:
            require state <= 5
            if state != 3:
            else:
                if block.timestamp < uint256(stor31):
                else:
                    if state >= 4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                    mem[202 len 26]
                    require state <= 5
                    require state + 1 <= 5
                    stor47 = state + 1 or Mask(248, 8, stor47)
                    require state <= 5
                    emit 0xb9eb8a30: state
            if state == 2:
                if block.timestamp >= stor24 + sub_f38a803f:
                    require state <= 5
                    if state >= 4:
                        revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                    state = 5
                    emit EventFailed('.Event took too long to complete');
                    require state <= 5
                    emit 0xb9eb8a30: state
        else:
            if stor17.length < stor41:
                if state >= 4:
                    revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[298 len 26]
                state = 5
                emit EventFailed(Array(len=51, data=0x2e4e6f7420656e6f756768207573657273206a6f696e656420666f72207265717569726564206d696e696d756d20766f746573, mem[179 len 13], Mask(152, -256, mem[179 len 13]) << 256));
                require state <= 5
                emit 0xb9eb8a30: state
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        Mask(72, -256, mem[179 len 13]) << 360,
                                        mem[320 len 4]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        emit 0xb9eb8a30: state
                if state == 2:
                    if block.timestamp >= stor24 + sub_f38a803f:
                        require state <= 5
                        if state >= 4:
                            revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[362 len 26]
                        state = 5
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        emit 0xb9eb8a30: state
            else:
                if state >= 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[202 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                emit 0xb9eb8a30: state
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        mem[202 len 26]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        emit 0xb9eb8a30: state
                if state == 2:
                    if block.timestamp >= stor24 + sub_f38a803f:
                        require state <= 5
                        if state >= 4:
                            revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                        state = 5
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        emit 0xb9eb8a30: state
}

function recoverLeftovers() {
    require msg.sender == owner
    require state <= 5
    require state <= 5
    if state:
    else:
        if block.timestamp < stor21:
        else:
            if state >= 4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                            mem[202 len 26]
            require state <= 5
            require state + 1 <= 5
            stor47 = state + 1 or Mask(248, 8, stor47)
            require state <= 5
            emit 0xb9eb8a30: state
    require state <= 5
    if state != 1:
        require state <= 5
        if state != 3:
        else:
            if block.timestamp < uint256(stor31):
            else:
                if state >= 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[202 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                emit 0xb9eb8a30: state
        require state <= 5
        if state != 2:
        else:
            if block.timestamp < stor24 + sub_f38a803f:
            else:
                if state >= 4:
                    revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                state = 5
                emit EventFailed('.Event took too long to complete');
                require state <= 5
                emit 0xb9eb8a30: state
    else:
        if block.timestamp < stor22:
            require state <= 5
            if state != 3:
            else:
                if block.timestamp < uint256(stor31):
                else:
                    if state >= 4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                    mem[202 len 26]
                    require state <= 5
                    require state + 1 <= 5
                    stor47 = state + 1 or Mask(248, 8, stor47)
                    require state <= 5
                    emit 0xb9eb8a30: state
            require state <= 5
            if state != 2:
            else:
                if block.timestamp < stor24 + sub_f38a803f:
                else:
                    if state >= 4:
                        revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                    state = 5
                    emit EventFailed('.Event took too long to complete');
                    require state <= 5
                    emit 0xb9eb8a30: state
        else:
            if stor17.length < stor41:
                if state >= 4:
                    revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[298 len 26]
                state = 5
                emit EventFailed(Array(len=51, data=0x2e4e6f7420656e6f756768207573657273206a6f696e656420666f72207265717569726564206d696e696d756d20766f746573, mem[179 len 13], Mask(152, -256, mem[179 len 13]) << 256));
                require state <= 5
                emit 0xb9eb8a30: state
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        Mask(72, -256, mem[179 len 13]) << 360,
                                        mem[320 len 4]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        emit 0xb9eb8a30: state
                require state <= 5
                if state != 2:
                else:
                    if block.timestamp < stor24 + sub_f38a803f:
                    else:
                        if state >= 4:
                            revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[362 len 26]
                        state = 5
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        emit 0xb9eb8a30: state
            else:
                if state >= 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[202 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                emit 0xb9eb8a30: state
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        mem[202 len 26]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        emit 0xb9eb8a30: state
                require state <= 5
                if state != 2:
                else:
                    if block.timestamp < stor24 + sub_f38a803f:
                    else:
                        if state >= 4:
                            revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                        state = 5
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        emit 0xb9eb8a30: state
    if state != 4:
        require state <= 5
        require state == 5
    require block.timestamp >= stor24 + sub_f38a803f + (672 * 24 * 3600)
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claimFailed() {
    if not stor16[address(msg.sender)]:
        revert with 0, 'Not participating.'
    require state <= 5
    require state <= 5
    if state:
    else:
        if block.timestamp < stor21:
        else:
            if state >= 4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                            mem[202 len 26]
            require state <= 5
            require state + 1 <= 5
            stor47 = state + 1 or Mask(248, 8, stor47)
            require state <= 5
            emit 0xb9eb8a30: state
    require state <= 5
    if state != 1:
        require state <= 5
        if state != 3:
        else:
            if block.timestamp < uint256(stor31):
            else:
                if state >= 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[202 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                emit 0xb9eb8a30: state
        require state <= 5
        if state != 2:
            if state != 5:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                            mem[200 len 28]
        else:
            if block.timestamp < stor24 + sub_f38a803f:
                if state != 5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                36,
                                0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                mem[200 len 28]
            else:
                if state >= 4:
                    revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                state = 5
                emit EventFailed('.Event took too long to complete');
                require state <= 5
                emit 0xb9eb8a30: state
                if state != 5:
                    revert with 0, 32, 36, 0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465, mem[264 len 28]
    else:
        if block.timestamp < stor22:
            require state <= 5
            if state != 3:
            else:
                if block.timestamp < uint256(stor31):
                else:
                    if state >= 4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                    mem[202 len 26]
                    require state <= 5
                    require state + 1 <= 5
                    stor47 = state + 1 or Mask(248, 8, stor47)
                    require state <= 5
                    emit 0xb9eb8a30: state
            require state <= 5
            if state != 2:
                if state != 5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                36,
                                0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                mem[200 len 28]
            else:
                if block.timestamp < stor24 + sub_f38a803f:
                    if state != 5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    mem[200 len 28]
                else:
                    if state >= 4:
                        revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                    state = 5
                    emit EventFailed('.Event took too long to complete');
                    require state <= 5
                    emit 0xb9eb8a30: state
                    if state != 5:
                        revert with 0, 32, 36, 0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465, mem[264 len 28]
        else:
            if stor17.length < stor41:
                if state >= 4:
                    revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[298 len 26]
                state = 5
                emit EventFailed(Array(len=51, data=0x2e4e6f7420656e6f756768207573657273206a6f696e656420666f72207265717569726564206d696e696d756d20766f746573, mem[179 len 13], Mask(152, -256, mem[179 len 13]) << 256));
                require state <= 5
                emit 0xb9eb8a30: state
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        Mask(72, -256, mem[179 len 13]) << 360,
                                        mem[320 len 4]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        emit 0xb9eb8a30: state
                require state <= 5
                if state != 2:
                    if state != 5:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    Mask(88, -256, mem[179 len 13]) << 360,
                                    mem[320 len 4]
                else:
                    if block.timestamp < stor24 + sub_f38a803f:
                        if state != 5:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                        Mask(88, -256, mem[179 len 13]) << 360,
                                        mem[320 len 4]
                    else:
                        if state >= 4:
                            revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[362 len 26]
                        state = 5
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        emit 0xb9eb8a30: state
                        if state != 5:
                            revert with 0, 32, 36, 0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465, mem[360 len 28]
            else:
                if state >= 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[202 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                emit 0xb9eb8a30: state
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        mem[202 len 26]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        emit 0xb9eb8a30: state
                require state <= 5
                if state != 2:
                    if state != 5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    mem[200 len 28]
                else:
                    if block.timestamp < stor24 + sub_f38a803f:
                        if state != 5:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        36,
                                        0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                        mem[200 len 28]
                    else:
                        if state >= 4:
                            revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                        state = 5
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        emit 0xb9eb8a30: state
                        if state != 5:
                            revert with 0, 32, 36, 0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465, mem[264 len 28]
    ('eq', 5, ('stor', ('name', 'state', 47)))
    if stakingAmount > 0:
        require ext_code.size(address(stor1.length))
        if stor34 != msg.sender:
            call address(stor1.length).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stakingAmount
        else:
            call address(stor1.length).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stakingAmount + stor28
    else:
        if 0 >= stor30:
            revert with 0, 'No stake to claim'
        if stor34 != msg.sender:
            revert with 0, 'No stake to claim'
        require ext_code.size(address(stor1.length))
        call address(stor1.length).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stakingAmount + stor28
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor16[msg.sender] = 0
    emit ClaimStake(msg.sender);
}

function rejectRewards(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require state <= 5
    if state != 2:
        revert with 0, 
                    32,
                    36,
                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                    mem[ceil32(arg2.length) + 232 len 28]
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if address(stor3[idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        if msg.sender == stor7:
            revert with 0, 'Not a valid sender address.'
        require stor6 <= 2
        if stor6 != 1:
            revert with 0, 'Not validating rewards.'
        if arg1 != sub_00f16142:
            revert with 0, 'Validation round mismatch.'
        if stor12[msg.sender] >= sub_00f16142:
            revert with 0, 'Already voted for this round.'
        stor10++
        stor12[msg.sender] = sub_00f16142
        s = 128
        t = ceil32(arg2.length) + 128
        idx = arg2.length
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or mem[floor32(arg2.length) + 128] and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + arg2.length + 128] = 14
        if uint8(stor[sha3(mem[ceil32(arg2.length) + 128 len arg2.length + 32])]):
            require stor3.length
            if 100 * stor10 / stor3.length >= -stor43 + 100:
                mem[ceil32(arg2.length) + 128] = stor8
                idx = ceil32(arg2.length) + 128
                s = sha3(8)
                while ceil32(arg2.length) + stor8.length + 128 > idx + 32:
                    mem[idx + 32] = uint256(stor1[s])
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(arg2.length) + stor8.length + 128] = 14
                uint8(stor[sha3(mem[ceil32(arg2.length) + 128 len stor8.length + 32])]) = 1
                if stor9 + sub_00f16142 - 1 > stor10 + -stor11.length + 1:
                    mem[ceil32(arg2.length) + 160] = 'Consensus can't be reached'
                    require state <= 5
                    if state >= 4:
                        revert with 0, 
                                    32,
                                    38,
                                    0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                    mem[ceil32(arg2.length) + 298 len 26]
                    state = 5
                    mem[ceil32(arg2.length) + 192] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + ceil32(arg2.length) + 256] = mem[idx + ceil32(arg2.length) + 160]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg2.length) + 256] = mem[ceil32(arg2.length) + 262 len 26]
                    emit EventFailed(Array(len=26, data=mem[ceil32(arg2.length) + 256]));
                    require state <= 5
                    emit 0xb9eb8a30: state
                else:
                    sub_00f16142++
                    require 0 < stor11.length
                    mem[0] = sha3(11)
                    mem[ceil32(arg2.length) + 128] = stor[sha3(('name', 'stor11', 11))]
                    idx = mem[64]
                    s = sha3(mem[0])
                    while ceil32(arg2.length) + stor11.length + 128 > idx + 32:
                        mem[idx + 32] = uint256(stor1[s])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(arg2.length) + stor11.length + 128] = 13
                    require 0 < uint256(stor[sha3(mem[mem[64] len ceil32(arg2.length) + stor11.length + -mem[64] + 160])])
                    mem[0] = sha3(mem[mem[64] len ceil32(arg2.length) + stor11.length + -mem[64] + 160])
                    stor7 = address(stor[sha3(mem[0])])
                    stor9 = 0
                    stor10 = 0
                    idx = 0
                    while idx < stor11.length:
                        _4075 = mem[64]
                        mem[0] = sha3(11) + idx
                        mem[mem[64]] = stor11[idx]
                        s = mem[64]
                        t = sha3(mem[0])
                        while _4075 + stor11[idx].length > s + 32:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_4075 + stor11[idx].length] = 13
                        _4998 = sha3(mem[mem[64] len _4075 + stor11[idx].length + -mem[64] + 32])
                        uint256(stor[sha3(mem[mem[64] len _4075 + stor11[idx].length + -mem[64] + 32])]) = 0
                        mem[0] = sha3(mem[mem[64] len _4075 + stor11[idx].length + -mem[64] + 32])
                        s = sha3(mem[0])
                        while sha3(mem[0]) + uint256(stor[_4998]) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                    stor11.length = 0
                    mem[0] = 11
                    s = sha3(mem[0])
                    while sha3(11) + stor11.length > s:
                        uint256(stor[s]) = 0
                        if 31 < stor[s].length:
                            mem[0] = s
                            t = sha3(s)
                            while sha3(s) + (stor[s].length + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        s = s + 1
                        continue 
                    stor6 = 0
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = address(stor3[idx].field_0)
                        mem[32] = 12
                        stor12[address(stor3[idx].field_0)] = 0
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < stor20.length:
                        reward[address(stor20[idx].field_0)][0] = 0
                        mem[0] = 1
                        mem[32] = sha3(address(stor20[idx].field_0), 19)
                        reward[address(stor20[idx].field_0)][1] = 0
                        idx = idx + 1
                        continue 
                    stor20.length = 0
                    idx = sha3(20)
                    while sha3(20) + stor20.length > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                    emit 0x372d3c12: sub_00f16142, stor7
        else:
            stor11.length++
            stor175B[stor11.length] = (2 * arg2.length) + 1
            s = sha3(stor11.length + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9)
            idx = 128
            while arg2.length + 128 > idx:
                uint256(stor[s]) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(stor11.length + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9) + (Mask(251, 0, arg2.length + 31) >> 5)
            while sha3(stor11.length + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9) + (stor[stor11.length + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9].length + 31 / 32) > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
            s = 128
            t = ceil32(arg2.length) + 128
            idx = arg2.length
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = !(256^(-(arg2.length % 32) + 32) - 1) and mem[floor32(arg2.length) + 128] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128]
            mem[ceil32(arg2.length) + arg2.length + 128] = 13
            uint256(stor[sha3(mem[ceil32(arg2.length) + 128 len arg2.length + 32])])++
            uint256(stor[uint256(stor[sha3(mem[ceil32(arg2.length) + 128 len arg2.length + 32])]) + sha3(sha3(mem[ceil32(arg2.length) + 128 len arg2.length + 32]))]) = msg.sender or Mask(96, 160, uint256(stor[uint256(stor[sha3(mem[ceil32(arg2.length) + 128 len arg2.length + 32])]) + sha3(sha3(mem[ceil32(arg2.length) + 128 len arg2.length + 32]))]))
            require stor3.length
            if 100 * stor10 / stor3.length >= -stor43 + 100:
                mem[ceil32(arg2.length) + 128] = stor8
                idx = ceil32(arg2.length) + 128
                s = sha3(8)
                while ceil32(arg2.length) + stor8.length + 128 > idx + 32:
                    mem[idx + 32] = uint256(stor1[s])
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(arg2.length) + stor8.length + 128] = 14
                uint8(stor[sha3(mem[ceil32(arg2.length) + 128 len stor8.length + 32])]) = 1
                if stor9 + sub_00f16142 - 1 > stor10 + -stor11.length + 1:
                    mem[ceil32(arg2.length) + 160] = 'Consensus can't be reached'
                    require state <= 5
                    if state >= 4:
                        revert with 0, 
                                    32,
                                    38,
                                    0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                    mem[ceil32(arg2.length) + 298 len 26]
                    state = 5
                    mem[ceil32(arg2.length) + 192] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + ceil32(arg2.length) + 256] = mem[idx + ceil32(arg2.length) + 160]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg2.length) + 256] = mem[ceil32(arg2.length) + 262 len 26]
                    emit EventFailed(Array(len=26, data=mem[ceil32(arg2.length) + 256]));
                    require state <= 5
                    emit 0xb9eb8a30: state
                else:
                    sub_00f16142++
                    require 0 < stor11.length
                    mem[0] = sha3(11)
                    mem[ceil32(arg2.length) + 128] = stor[sha3(('name', 'stor11', 11))]
                    idx = mem[64]
                    s = sha3(mem[0])
                    while ceil32(arg2.length) + stor11.length + 128 > idx + 32:
                        mem[idx + 32] = uint256(stor1[s])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(arg2.length) + stor11.length + 128] = 13
                    require 0 < uint256(stor[sha3(mem[mem[64] len ceil32(arg2.length) + stor11.length + -mem[64] + 160])])
                    mem[0] = sha3(mem[mem[64] len ceil32(arg2.length) + stor11.length + -mem[64] + 160])
                    stor7 = address(stor[sha3(mem[0])])
                    stor9 = 0
                    stor10 = 0
                    idx = 0
                    while idx < stor11.length:
                        _5338 = mem[64]
                        mem[0] = sha3(11) + idx
                        mem[mem[64]] = stor11[idx]
                        s = mem[64]
                        t = sha3(mem[0])
                        while _5338 + stor11[idx].length > s + 32:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_5338 + stor11[idx].length] = 13
                        _5586 = sha3(mem[mem[64] len _5338 + stor11[idx].length + -mem[64] + 32])
                        uint256(stor[sha3(mem[mem[64] len _5338 + stor11[idx].length + -mem[64] + 32])]) = 0
                        mem[0] = sha3(mem[mem[64] len _5338 + stor11[idx].length + -mem[64] + 32])
                        s = sha3(mem[0])
                        while sha3(mem[0]) + uint256(stor[_5586]) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                    stor11.length = 0
                    mem[0] = 11
                    s = sha3(mem[0])
                    while sha3(11) + stor11.length > s:
                        uint256(stor[s]) = 0
                        if 31 < stor[s].length:
                            mem[0] = s
                            t = sha3(s)
                            while sha3(s) + (stor[s].length + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        s = s + 1
                        continue 
                    stor6 = 0
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = address(stor3[idx].field_0)
                        mem[32] = 12
                        stor12[address(stor3[idx].field_0)] = 0
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < stor20.length:
                        reward[address(stor20[idx].field_0)][0] = 0
                        mem[0] = 1
                        mem[32] = sha3(address(stor20[idx].field_0), 19)
                        reward[address(stor20[idx].field_0)][1] = 0
                        idx = idx + 1
                        continue 
                    stor20.length = 0
                    idx = sha3(20)
                    while sha3(20) + stor20.length > idx:
                        uint256(stor[idx]) = 0
                        idx = idx + 1
                        continue 
                    emit 0x372d3c12: sub_00f16142, stor7
    revert with 0, 'Not a valid sender address.'
}

function setResults(bytes32[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor7 != msg.sender:
        revert with 0, 'Not a designated master node.'
    require state <= 5
    require state <= 5
    if state:
    else:
        if block.timestamp < stor21:
        else:
            if state >= 4:
                revert with 0, 
                            32,
                            38,
                            0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                            mem[(32 * arg1.length) + 234 len 26]
            require state <= 5
            require state + 1 <= 5
            stor47 = state + 1 or Mask(248, 8, stor47)
            require state <= 5
            mem[(32 * arg1.length) + 128] = state
            emit 0xb9eb8a30: state
    if state != 1:
        require state <= 5
        require state <= 5
        if state != 3:
        else:
            if block.timestamp < uint256(stor31):
            else:
                if state >= 4:
                    revert with 0, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[(32 * arg1.length) + 234 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                mem[(32 * arg1.length) + 128] = state
                emit 0xb9eb8a30: state
        if state != 2:
            require state <= 5
            if state != 2:
                revert with 0, 
                            32,
                            36,
                            0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                            mem[(32 * arg1.length) + 232 len 28]
        else:
            if block.timestamp < stor24 + sub_f38a803f:
                require state <= 5
                if state != 2:
                    revert with 0, 
                                32,
                                36,
                                0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                mem[(32 * arg1.length) + 232 len 28]
            else:
                mem[(32 * arg1.length) + 128] = 32
                mem[(32 * arg1.length) + 160] = 0x2e4576656e7420746f6f6b20746f6f206c6f6e6720746f20636f6d706c657465
                require state <= 5
                if state >= 4:
                    revert with 0, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[(32 * arg1.length) + 298 len 26]
                state = 5
                mem[(32 * arg1.length) + 224] = 32
                mem[(32 * arg1.length) + 256] = 0x2e4576656e7420746f6f6b20746f6f206c6f6e6720746f20636f6d706c657465
                emit EventFailed('.Event took too long to complete');
                require state <= 5
                mem[(32 * arg1.length) + 192] = state
                emit 0xb9eb8a30: state
                if state != 2:
                    revert with 0, 
                                32,
                                36,
                                0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                mem[(32 * arg1.length) + 296 len 28]
    else:
        if block.timestamp < stor22:
            require state <= 5
            require state <= 5
            if state != 3:
            else:
                if block.timestamp < uint256(stor31):
                else:
                    if state >= 4:
                        revert with 0, 
                                    32,
                                    38,
                                    0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                    mem[(32 * arg1.length) + 234 len 26]
                    require state <= 5
                    require state + 1 <= 5
                    stor47 = state + 1 or Mask(248, 8, stor47)
                    require state <= 5
                    mem[(32 * arg1.length) + 128] = state
                    emit 0xb9eb8a30: state
            if state != 2:
                require state <= 5
                if state != 2:
                    revert with 0, 
                                32,
                                36,
                                0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                mem[(32 * arg1.length) + 232 len 28]
            else:
                if block.timestamp < stor24 + sub_f38a803f:
                    require state <= 5
                    if state != 2:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    mem[(32 * arg1.length) + 232 len 28]
                else:
                    mem[(32 * arg1.length) + 128] = 32
                    mem[(32 * arg1.length) + 160] = 0x2e4576656e7420746f6f6b20746f6f206c6f6e6720746f20636f6d706c657465
                    require state <= 5
                    if state >= 4:
                        revert with 0, 
                                    32,
                                    38,
                                    0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                    mem[(32 * arg1.length) + 298 len 26]
                    state = 5
                    mem[(32 * arg1.length) + 224] = 32
                    mem[(32 * arg1.length) + 256] = 0x2e4576656e7420746f6f6b20746f6f206c6f6e6720746f20636f6d706c657465
                    emit EventFailed('.Event took too long to complete');
                    require state <= 5
                    mem[(32 * arg1.length) + 192] = state
                    emit 0xb9eb8a30: state
                    if state != 2:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    mem[(32 * arg1.length) + 296 len 28]
        else:
            if stor17.length >= stor41:
                require state <= 5
                if state >= 4:
                    revert with 0, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[(32 * arg1.length) + 234 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                mem[(32 * arg1.length) + 128] = state
                emit 0xb9eb8a30: state
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        mem[(32 * arg1.length) + 234 len 26]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        mem[(32 * arg1.length) + 128] = state
                        emit 0xb9eb8a30: state
                if state != 2:
                    require state <= 5
                    if state != 2:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    mem[(32 * arg1.length) + 232 len 28]
                else:
                    if block.timestamp < stor24 + sub_f38a803f:
                        require state <= 5
                        if state != 2:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                        mem[(32 * arg1.length) + 232 len 28]
                    else:
                        mem[(32 * arg1.length) + 128] = 32
                        mem[(32 * arg1.length) + 160] = 0x2e4576656e7420746f6f6b20746f6f206c6f6e6720746f20636f6d706c657465
                        require state <= 5
                        if state >= 4:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        mem[(32 * arg1.length) + 298 len 26]
                        state = 5
                        mem[(32 * arg1.length) + 224] = 32
                        mem[(32 * arg1.length) + 256] = 0x2e4576656e7420746f6f6b20746f6f206c6f6e6720746f20636f6d706c657465
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        mem[(32 * arg1.length) + 192] = state
                        emit 0xb9eb8a30: state
                        if state != 2:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                        mem[(32 * arg1.length) + 296 len 28]
            else:
                mem[(32 * arg1.length) + 128] = 51
                mem[(32 * arg1.length) + 160 len 51] = 0x2e4e6f7420656e6f756768207573657273206a6f696e656420666f72207265717569726564206d696e696d756d20766f746573
                require state <= 5
                if state >= 4:
                    revert with 0, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[(32 * arg1.length) + 330 len 26]
                state = 5
                mem[(32 * arg1.length) + 256] = 51
                mem[(32 * arg1.length) + 288 len 64] = 0x2e4e6f7420656e6f756768207573657273206a6f696e656420666f72207265717569726564206d696e696d756d20766f746573, mem[(32 * arg1.length) + 211 len 13]
                mem[(32 * arg1.length) + 320] = Mask(152, -256, mem[(32 * arg1.length) + 211 len 13]) << 256
                emit EventFailed(Array(len=51, data=0x2e4e6f7420656e6f756768207573657273206a6f696e656420666f72207265717569726564206d696e696d756d20766f746573, mem[(32 * arg1.length) + 211 len 13], Mask(152, -256, mem[(32 * arg1.length) + 211 len 13]) << 256));
                require state <= 5
                mem[(32 * arg1.length) + 224] = state
                emit 0xb9eb8a30: state
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        Mask(72, -256, mem[(32 * arg1.length) + 211 len 13]) << 360,
                                        mem[(32 * arg1.length) + 352 len 4]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        mem[(32 * arg1.length) + 224] = state
                        emit 0xb9eb8a30: state
                if state != 2:
                    require state <= 5
                    if state != 2:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    Mask(88, -256, mem[(32 * arg1.length) + 211 len 13]) << 360,
                                    mem[(32 * arg1.length) + 352 len 4]
                else:
                    if block.timestamp < stor24 + sub_f38a803f:
                        require state <= 5
                        if state != 2:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                        Mask(88, -256, mem[(32 * arg1.length) + 211 len 13]) << 360,
                                        mem[(32 * arg1.length) + 352 len 4]
                    else:
                        mem[(32 * arg1.length) + 224] = 32
                        mem[(32 * arg1.length) + 256] = 0x2e4576656e7420746f6f6b20746f6f206c6f6e6720746f20636f6d706c657465
                        require state <= 5
                        if state >= 4:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        mem[(32 * arg1.length) + 394 len 26]
                        state = 5
                        mem[(32 * arg1.length) + 320] = 32
                        mem[(32 * arg1.length) + 352] = 0x2e4576656e7420746f6f6b20746f6f206c6f6e6720746f20636f6d706c657465
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        mem[(32 * arg1.length) + 288] = state
                        emit 0xb9eb8a30: state
                        if state != 2:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                        mem[(32 * arg1.length) + 392 len 28]
    ('eq', 2, ('stor', ('name', 'state', 47)))
    require stor6 <= 2
    if stor6:
        revert with 0, 'Only before validation starts.'
    stor40.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor40.length > idx:
            uint256(stor40[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        if 32 * arg1.length <= 0:
            idx = 0
            while stor40.length > idx:
                uint256(stor40[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor40.field_0) = mem[128]
            s = 1
            idx = 160
            while (32 * arg1.length) + 128 > idx:
                uint256(stor40[s].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, (32 * arg1.length) - 1) >> 5) + 1
            while stor40.length > idx:
                uint256(stor40[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function markRewardsSet(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if stor7 != msg.sender:
        revert with 0, 'Not a designated master node.'
    require state <= 5
    require state <= 5
    if state:
    else:
        if block.timestamp < stor21:
        else:
            if state >= 4:
                revert with 0, 
                            32,
                            38,
                            0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                            mem[ceil32(arg1.length) + 234 len 26]
            require state <= 5
            require state + 1 <= 5
            stor47 = state + 1 or Mask(248, 8, stor47)
            require state <= 5
            mem[ceil32(arg1.length) + 128] = state
            emit 0xb9eb8a30: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    require state <= 5
    if state != 1:
        require state <= 5
        if state != 3:
        else:
            if block.timestamp < uint256(stor31):
            else:
                if state >= 4:
                    revert with 0, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[ceil32(arg1.length) + 234 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                mem[ceil32(arg1.length) + 128] = state
                emit 0xb9eb8a30: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        require state <= 5
        if state != 2:
            if state != 2:
                revert with 0, 
                            32,
                            36,
                            0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                            mem[ceil32(arg1.length) + 232 len 28]
            require stor6 <= 2
            if stor6:
                revert with 0, 
                            32,
                            38,
                            0x2e4e6f7420706f737369626c6520696e20746869732076616c69646174696f6e207374617465,
                            mem[ceil32(arg1.length) + 234 len 26]
            stor8[] = Array(len=arg1.length, data=arg1[all])
            stor9 = 1
            stor6 = 1
            mem[ceil32(arg1.length) + 128] = sub_00f16142
            emit ValidationStarted(uint256 arg1):
                                   Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                   mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)],
        else:
            if block.timestamp < stor24 + sub_f38a803f:
                if state != 2:
                    revert with 0, 
                                32,
                                36,
                                0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                mem[ceil32(arg1.length) + 232 len 28]
                require stor6 <= 2
                if stor6:
                    revert with 0, 
                                32,
                                38,
                                0x2e4e6f7420706f737369626c6520696e20746869732076616c69646174696f6e207374617465,
                                mem[ceil32(arg1.length) + 234 len 26]
                stor8[] = Array(len=arg1.length, data=arg1[all])
                stor9 = 1
                stor6 = 1
                mem[ceil32(arg1.length) + 128] = sub_00f16142
                emit ValidationStarted(uint256 arg1):
                                       Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                       mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)],
            else:
                if state >= 4:
                    revert with 0, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[ceil32(arg1.length) + 298 len 26]
                state = 5
                emit EventFailed('.Event took too long to complete');
                require state <= 5
                emit 0xb9eb8a30: state
                if state != 2:
                    revert with 0, 
                                32,
                                36,
                                0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                mem[ceil32(arg1.length) + 296 len 28]
                require stor6 <= 2
                if stor6:
                    revert with 0, 
                                32,
                                38,
                                0x2e4e6f7420706f737369626c6520696e20746869732076616c69646174696f6e207374617465,
                                mem[ceil32(arg1.length) + 298 len 26]
                stor8[] = Array(len=arg1.length, data=arg1[all])
                stor9 = 1
                stor6 = 1
                emit ValidationStarted(sub_00f16142);
    else:
        if block.timestamp < stor22:
            require state <= 5
            if state != 3:
            else:
                if block.timestamp < uint256(stor31):
                else:
                    if state >= 4:
                        revert with 0, 
                                    32,
                                    38,
                                    0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                    mem[ceil32(arg1.length) + 234 len 26]
                    require state <= 5
                    require state + 1 <= 5
                    stor47 = state + 1 or Mask(248, 8, stor47)
                    require state <= 5
                    mem[ceil32(arg1.length) + 128] = state
                    emit 0xb9eb8a30: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            require state <= 5
            if state != 2:
                if state != 2:
                    revert with 0, 
                                32,
                                36,
                                0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                mem[ceil32(arg1.length) + 232 len 28]
                require stor6 <= 2
                if stor6:
                    revert with 0, 
                                32,
                                38,
                                0x2e4e6f7420706f737369626c6520696e20746869732076616c69646174696f6e207374617465,
                                mem[ceil32(arg1.length) + 234 len 26]
                stor8[] = Array(len=arg1.length, data=arg1[all])
                stor9 = 1
                stor6 = 1
                mem[ceil32(arg1.length) + 128] = sub_00f16142
                emit ValidationStarted(uint256 arg1):
                                       Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                       mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)],
            else:
                if block.timestamp < stor24 + sub_f38a803f:
                    if state != 2:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    mem[ceil32(arg1.length) + 232 len 28]
                    require stor6 <= 2
                    if stor6:
                        revert with 0, 
                                    32,
                                    38,
                                    0x2e4e6f7420706f737369626c6520696e20746869732076616c69646174696f6e207374617465,
                                    mem[ceil32(arg1.length) + 234 len 26]
                    stor8[] = Array(len=arg1.length, data=arg1[all])
                    stor9 = 1
                    stor6 = 1
                    mem[ceil32(arg1.length) + 128] = sub_00f16142
                    emit ValidationStarted(uint256 arg1):
                                           Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                           mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)],
                else:
                    if state >= 4:
                        revert with 0, 
                                    32,
                                    38,
                                    0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                    mem[ceil32(arg1.length) + 298 len 26]
                    state = 5
                    emit EventFailed('.Event took too long to complete');
                    require state <= 5
                    emit 0xb9eb8a30: state
                    if state != 2:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    mem[ceil32(arg1.length) + 296 len 28]
                    require stor6 <= 2
                    if stor6:
                        revert with 0, 
                                    32,
                                    38,
                                    0x2e4e6f7420706f737369626c6520696e20746869732076616c69646174696f6e207374617465,
                                    mem[ceil32(arg1.length) + 298 len 26]
                    stor8[] = Array(len=arg1.length, data=arg1[all])
                    stor9 = 1
                    stor6 = 1
                    emit ValidationStarted(sub_00f16142);
        else:
            if stor17.length < stor41:
                if state >= 4:
                    revert with 0, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[ceil32(arg1.length) + 330 len 26]
                state = 5
                emit EventFailed(Array(len=51, data=0x2e4e6f7420656e6f756768207573657273206a6f696e656420666f72207265717569726564206d696e696d756d20766f746573, mem[ceil32(arg1.length) + 211 len 13], Mask(152, -256, mem[ceil32(arg1.length) + 211 len 13]) << 256));
                require state <= 5
                emit 0xb9eb8a30: state
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        Mask(72, -256, mem[ceil32(arg1.length) + 211 len 13]) << 360,
                                        mem[ceil32(arg1.length) + 352 len 4]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        emit 0xb9eb8a30: state
                require state <= 5
                if state != 2:
                    if state != 2:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    Mask(88, -256, mem[ceil32(arg1.length) + 211 len 13]) << 360,
                                    mem[ceil32(arg1.length) + 352 len 4]
                    require stor6 <= 2
                    if stor6:
                        revert with 0, 
                                    32,
                                    38,
                                    0x2e4e6f7420706f737369626c6520696e20746869732076616c69646174696f6e207374617465,
                                    Mask(72, -256, mem[ceil32(arg1.length) + 211 len 13]) << 360,
                                    mem[ceil32(arg1.length) + 352 len 4]
                else:
                    if block.timestamp < stor24 + sub_f38a803f:
                        if state != 2:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                        Mask(88, -256, mem[ceil32(arg1.length) + 211 len 13]) << 360,
                                        mem[ceil32(arg1.length) + 352 len 4]
                        require stor6 <= 2
                        if stor6:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4e6f7420706f737369626c6520696e20746869732076616c69646174696f6e207374617465,
                                        Mask(72, -256, mem[ceil32(arg1.length) + 211 len 13]) << 360,
                                        mem[ceil32(arg1.length) + 352 len 4]
                    else:
                        if state >= 4:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        mem[ceil32(arg1.length) + 394 len 26]
                        state = 5
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        emit 0xb9eb8a30: state
                        if state != 2:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                        mem[ceil32(arg1.length) + 392 len 28]
                        require stor6 <= 2
                        if stor6:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4e6f7420706f737369626c6520696e20746869732076616c69646174696f6e207374617465,
                                        mem[ceil32(arg1.length) + 394 len 26]
                ('iszero', ('stor', ('name', 'stor6', 6)))
                stor8[] = Array(len=arg1.length, data=arg1[all])
                stor9 = 1
                stor6 = 1
                emit ValidationStarted(sub_00f16142);
            else:
                if state >= 4:
                    revert with 0, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[ceil32(arg1.length) + 234 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                mem[ceil32(arg1.length) + 128] = state
                emit 0xb9eb8a30: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        mem[ceil32(arg1.length) + 234 len 26]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        mem[ceil32(arg1.length) + 128] = state
                        emit 0xb9eb8a30: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                require state <= 5
                if state != 2:
                    if state != 2:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    mem[ceil32(arg1.length) + 232 len 28]
                    require stor6 <= 2
                    if stor6:
                        revert with 0, 
                                    32,
                                    38,
                                    0x2e4e6f7420706f737369626c6520696e20746869732076616c69646174696f6e207374617465,
                                    mem[ceil32(arg1.length) + 234 len 26]
                    stor8[] = Array(len=arg1.length, data=arg1[all])
                    stor9 = 1
                    stor6 = 1
                    mem[ceil32(arg1.length) + 128] = sub_00f16142
                    emit ValidationStarted(uint256 arg1):
                                           Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                           mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)],
                else:
                    if block.timestamp < stor24 + sub_f38a803f:
                        if state != 2:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                        mem[ceil32(arg1.length) + 232 len 28]
                        require stor6 <= 2
                        if stor6:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4e6f7420706f737369626c6520696e20746869732076616c69646174696f6e207374617465,
                                        mem[ceil32(arg1.length) + 234 len 26]
                        stor8[] = Array(len=arg1.length, data=arg1[all])
                        stor9 = 1
                        stor6 = 1
                        mem[ceil32(arg1.length) + 128] = sub_00f16142
                        emit ValidationStarted(uint256 arg1):
                                               Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                               mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)],
                    else:
                        if state >= 4:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        mem[ceil32(arg1.length) + 298 len 26]
                        state = 5
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        emit 0xb9eb8a30: state
                        if state != 2:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                        mem[ceil32(arg1.length) + 296 len 28]
                        require stor6 <= 2
                        if stor6:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4e6f7420706f737369626c6520696e20746869732076616c69646174696f6e207374617465,
                                        mem[ceil32(arg1.length) + 298 len 26]
                        stor8[] = Array(len=arg1.length, data=arg1[all])
                        stor9 = 1
                        stor6 = 1
                        emit ValidationStarted(sub_00f16142);
}

function claimReward() {
    if not stor16[address(msg.sender)]:
        revert with 0, 'Not participating.'
    require state <= 5
    require state <= 5
    if state:
    else:
        if block.timestamp < stor21:
        else:
            if state >= 4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                            mem[202 len 26]
            require state <= 5
            require state + 1 <= 5
            stor47 = state + 1 or Mask(248, 8, stor47)
            require state <= 5
            emit 0xb9eb8a30: state
    require state <= 5
    if state != 1:
        require state <= 5
        if state != 3:
        else:
            if block.timestamp < uint256(stor31):
            else:
                if state >= 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[202 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                emit 0xb9eb8a30: state
        require state <= 5
        if state != 2:
            if state != 4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                            mem[200 len 28]
            if reward[msg.sender][0]:
                if eth.balance(this.address) < reward[msg.sender][0]:
                    emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                else:
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < reward[msg.sender][1]:
                        emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                    else:
                        reward[msg.sender][0] = 0
                        reward[msg.sender][1] = 0
                        call msg.sender with:
                           value reward[msg.sender][0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if reward[msg.sender][1] > 0:
                            require ext_code.size(address(stor1.length))
                            call address(stor1.length).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, reward[msg.sender][1]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
            else:
                if not reward[msg.sender][1]:
                    emit 0x2ecfa5f6: Array(len=37, data=0x57596f7520646f206e6f74206861766520616e79207265776172647320746f20636c61696d, mem[197 len 27]), msg.sender
                else:
                    if eth.balance(this.address) < reward[msg.sender][0]:
                        emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                    else:
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < reward[msg.sender][1]:
                            emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                        else:
                            reward[msg.sender][0] = 0
                            reward[msg.sender][1] = 0
                            call msg.sender with:
                               value reward[msg.sender][0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if reward[msg.sender][1] > 0:
                                require ext_code.size(address(stor1.length))
                                call address(stor1.length).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, reward[msg.sender][1]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
        else:
            if block.timestamp < stor24 + sub_f38a803f:
                if state != 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                36,
                                0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                mem[200 len 28]
                if reward[msg.sender][0]:
                    if eth.balance(this.address) < reward[msg.sender][0]:
                        emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                    else:
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < reward[msg.sender][1]:
                            emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                        else:
                            reward[msg.sender][0] = 0
                            reward[msg.sender][1] = 0
                            call msg.sender with:
                               value reward[msg.sender][0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if reward[msg.sender][1] > 0:
                                require ext_code.size(address(stor1.length))
                                call address(stor1.length).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, reward[msg.sender][1]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                else:
                    if not reward[msg.sender][1]:
                        emit 0x2ecfa5f6: Array(len=37, data=0x57596f7520646f206e6f74206861766520616e79207265776172647320746f20636c61696d, mem[197 len 27]), msg.sender
                    else:
                        if eth.balance(this.address) < reward[msg.sender][0]:
                            emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                        else:
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < reward[msg.sender][1]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                            else:
                                reward[msg.sender][0] = 0
                                reward[msg.sender][1] = 0
                                call msg.sender with:
                                   value reward[msg.sender][0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if reward[msg.sender][1] > 0:
                                    require ext_code.size(address(stor1.length))
                                    call address(stor1.length).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, reward[msg.sender][1]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
            else:
                if state >= 4:
                    revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                state = 5
                emit EventFailed('.Event took too long to complete');
                require state <= 5
                emit 0xb9eb8a30: state
                if state != 4:
                    revert with 0, 32, 36, 0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465, mem[264 len 28]
                if reward[msg.sender][0]:
                    if eth.balance(this.address) < reward[msg.sender][0]:
                        emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[293 len 27]), msg.sender
                    else:
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < reward[msg.sender][1]:
                            emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[293 len 27]), msg.sender
                        else:
                            reward[msg.sender][0] = 0
                            reward[msg.sender][1] = 0
                            call msg.sender with:
                               value reward[msg.sender][0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if reward[msg.sender][1] > 0:
                                require ext_code.size(address(stor1.length))
                                call address(stor1.length).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, reward[msg.sender][1]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                else:
                    if not reward[msg.sender][1]:
                        emit 0x2ecfa5f6: Array(len=37, data=0x57596f7520646f206e6f74206861766520616e79207265776172647320746f20636c61696d, mem[261 len 27]), msg.sender
                    else:
                        if eth.balance(this.address) < reward[msg.sender][0]:
                            emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[293 len 27]), msg.sender
                        else:
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < reward[msg.sender][1]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[293 len 27]), msg.sender
                            else:
                                reward[msg.sender][0] = 0
                                reward[msg.sender][1] = 0
                                call msg.sender with:
                                   value reward[msg.sender][0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if reward[msg.sender][1] > 0:
                                    require ext_code.size(address(stor1.length))
                                    call address(stor1.length).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, reward[msg.sender][1]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
    else:
        if block.timestamp < stor22:
            require state <= 5
            if state != 3:
            else:
                if block.timestamp < uint256(stor31):
                else:
                    if state >= 4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                    mem[202 len 26]
                    require state <= 5
                    require state + 1 <= 5
                    stor47 = state + 1 or Mask(248, 8, stor47)
                    require state <= 5
                    emit 0xb9eb8a30: state
            require state <= 5
            if state != 2:
                if state != 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                36,
                                0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                mem[200 len 28]
                if reward[msg.sender][0]:
                    if eth.balance(this.address) < reward[msg.sender][0]:
                        emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                    else:
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < reward[msg.sender][1]:
                            emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                        else:
                            reward[msg.sender][0] = 0
                            reward[msg.sender][1] = 0
                            call msg.sender with:
                               value reward[msg.sender][0] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if reward[msg.sender][1] > 0:
                                require ext_code.size(address(stor1.length))
                                call address(stor1.length).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, reward[msg.sender][1]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                else:
                    if not reward[msg.sender][1]:
                        emit 0x2ecfa5f6: Array(len=37, data=0x57596f7520646f206e6f74206861766520616e79207265776172647320746f20636c61696d, mem[197 len 27]), msg.sender
                    else:
                        if eth.balance(this.address) < reward[msg.sender][0]:
                            emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                        else:
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < reward[msg.sender][1]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                            else:
                                reward[msg.sender][0] = 0
                                reward[msg.sender][1] = 0
                                call msg.sender with:
                                   value reward[msg.sender][0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if reward[msg.sender][1] > 0:
                                    require ext_code.size(address(stor1.length))
                                    call address(stor1.length).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, reward[msg.sender][1]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
            else:
                if block.timestamp < stor24 + sub_f38a803f:
                    if state != 4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    mem[200 len 28]
                    if reward[msg.sender][0]:
                        if eth.balance(this.address) < reward[msg.sender][0]:
                            emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                        else:
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < reward[msg.sender][1]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                            else:
                                reward[msg.sender][0] = 0
                                reward[msg.sender][1] = 0
                                call msg.sender with:
                                   value reward[msg.sender][0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if reward[msg.sender][1] > 0:
                                    require ext_code.size(address(stor1.length))
                                    call address(stor1.length).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, reward[msg.sender][1]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                    else:
                        if not reward[msg.sender][1]:
                            emit 0x2ecfa5f6: Array(len=37, data=0x57596f7520646f206e6f74206861766520616e79207265776172647320746f20636c61696d, mem[197 len 27]), msg.sender
                        else:
                            if eth.balance(this.address) < reward[msg.sender][0]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                            else:
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < reward[msg.sender][1]:
                                    emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                                else:
                                    reward[msg.sender][0] = 0
                                    reward[msg.sender][1] = 0
                                    call msg.sender with:
                                       value reward[msg.sender][0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if reward[msg.sender][1] > 0:
                                        require ext_code.size(address(stor1.length))
                                        call address(stor1.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, reward[msg.sender][1]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                else:
                    if state >= 4:
                        revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                    state = 5
                    emit EventFailed('.Event took too long to complete');
                    require state <= 5
                    emit 0xb9eb8a30: state
                    if state != 4:
                        revert with 0, 32, 36, 0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465, mem[264 len 28]
                    if reward[msg.sender][0]:
                        if eth.balance(this.address) < reward[msg.sender][0]:
                            emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[293 len 27]), msg.sender
                        else:
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < reward[msg.sender][1]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[293 len 27]), msg.sender
                            else:
                                reward[msg.sender][0] = 0
                                reward[msg.sender][1] = 0
                                call msg.sender with:
                                   value reward[msg.sender][0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if reward[msg.sender][1] > 0:
                                    require ext_code.size(address(stor1.length))
                                    call address(stor1.length).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, reward[msg.sender][1]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                    else:
                        if not reward[msg.sender][1]:
                            emit 0x2ecfa5f6: Array(len=37, data=0x57596f7520646f206e6f74206861766520616e79207265776172647320746f20636c61696d, mem[261 len 27]), msg.sender
                        else:
                            if eth.balance(this.address) < reward[msg.sender][0]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[293 len 27]), msg.sender
                            else:
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < reward[msg.sender][1]:
                                    emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[293 len 27]), msg.sender
                                else:
                                    reward[msg.sender][0] = 0
                                    reward[msg.sender][1] = 0
                                    call msg.sender with:
                                       value reward[msg.sender][0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if reward[msg.sender][1] > 0:
                                        require ext_code.size(address(stor1.length))
                                        call address(stor1.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, reward[msg.sender][1]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
        else:
            if stor17.length < stor41:
                if state >= 4:
                    revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[298 len 26]
                state = 5
                emit EventFailed(Array(len=51, data=0x2e4e6f7420656e6f756768207573657273206a6f696e656420666f72207265717569726564206d696e696d756d20766f746573, mem[179 len 13], Mask(152, -256, mem[179 len 13]) << 256));
                require state <= 5
                emit 0xb9eb8a30: state
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        Mask(72, -256, mem[179 len 13]) << 360,
                                        mem[320 len 4]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        emit 0xb9eb8a30: state
                require state <= 5
                if state != 2:
                    if state != 4:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    Mask(88, -256, mem[179 len 13]) << 360,
                                    mem[320 len 4]
                    if reward[msg.sender][0]:
                        if eth.balance(this.address) < reward[msg.sender][0]:
                            emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[325 len 27]), msg.sender
                        else:
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < reward[msg.sender][1]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[325 len 27]), msg.sender
                            else:
                                reward[msg.sender][0] = 0
                                reward[msg.sender][1] = 0
                                call msg.sender with:
                                   value reward[msg.sender][0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if reward[msg.sender][1] > 0:
                                    require ext_code.size(address(stor1.length))
                                    call address(stor1.length).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, reward[msg.sender][1]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                    else:
                        if not reward[msg.sender][1]:
                            emit 0x2ecfa5f6: Array(len=37, data=0x57596f7520646f206e6f74206861766520616e79207265776172647320746f20636c61696d, Mask(112, -256, mem[179 len 13]) << 360), msg.sender
                        else:
                            if eth.balance(this.address) < reward[msg.sender][0]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[325 len 27]), msg.sender
                            else:
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < reward[msg.sender][1]:
                                    emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[325 len 27]), msg.sender
                                else:
                                    reward[msg.sender][0] = 0
                                    reward[msg.sender][1] = 0
                                    call msg.sender with:
                                       value reward[msg.sender][0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if reward[msg.sender][1] > 0:
                                        require ext_code.size(address(stor1.length))
                                        call address(stor1.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, reward[msg.sender][1]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                else:
                    if block.timestamp < stor24 + sub_f38a803f:
                        if state != 4:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                        Mask(88, -256, mem[179 len 13]) << 360,
                                        mem[320 len 4]
                        if reward[msg.sender][0]:
                            if eth.balance(this.address) < reward[msg.sender][0]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[325 len 27]), msg.sender
                            else:
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < reward[msg.sender][1]:
                                    emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[325 len 27]), msg.sender
                                else:
                                    reward[msg.sender][0] = 0
                                    reward[msg.sender][1] = 0
                                    call msg.sender with:
                                       value reward[msg.sender][0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if reward[msg.sender][1] > 0:
                                        require ext_code.size(address(stor1.length))
                                        call address(stor1.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, reward[msg.sender][1]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                        else:
                            if not reward[msg.sender][1]:
                                emit 0x2ecfa5f6: Array(len=37, data=0x57596f7520646f206e6f74206861766520616e79207265776172647320746f20636c61696d, Mask(112, -256, mem[179 len 13]) << 360), msg.sender
                            else:
                                if eth.balance(this.address) < reward[msg.sender][0]:
                                    emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[325 len 27]), msg.sender
                                else:
                                    require ext_code.size(address(stor1.length))
                                    staticcall address(stor1.length).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < reward[msg.sender][1]:
                                        emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[325 len 27]), msg.sender
                                    else:
                                        reward[msg.sender][0] = 0
                                        reward[msg.sender][1] = 0
                                        call msg.sender with:
                                           value reward[msg.sender][0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if reward[msg.sender][1] > 0:
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, reward[msg.sender][1]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                    else:
                        if state >= 4:
                            revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[362 len 26]
                        state = 5
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        emit 0xb9eb8a30: state
                        if state != 4:
                            revert with 0, 32, 36, 0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465, mem[360 len 28]
                        if reward[msg.sender][0]:
                            if eth.balance(this.address) < reward[msg.sender][0]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[389 len 27]), msg.sender
                            else:
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < reward[msg.sender][1]:
                                    emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[389 len 27]), msg.sender
                                else:
                                    reward[msg.sender][0] = 0
                                    reward[msg.sender][1] = 0
                                    call msg.sender with:
                                       value reward[msg.sender][0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if reward[msg.sender][1] > 0:
                                        require ext_code.size(address(stor1.length))
                                        call address(stor1.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, reward[msg.sender][1]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                        else:
                            if not reward[msg.sender][1]:
                                emit 0x2ecfa5f6: Array(len=37, data=0x57596f7520646f206e6f74206861766520616e79207265776172647320746f20636c61696d, mem[357 len 27]), msg.sender
                            else:
                                if eth.balance(this.address) < reward[msg.sender][0]:
                                    emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[389 len 27]), msg.sender
                                else:
                                    require ext_code.size(address(stor1.length))
                                    staticcall address(stor1.length).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < reward[msg.sender][1]:
                                        emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[389 len 27]), msg.sender
                                    else:
                                        reward[msg.sender][0] = 0
                                        reward[msg.sender][1] = 0
                                        call msg.sender with:
                                           value reward[msg.sender][0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if reward[msg.sender][1] > 0:
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, reward[msg.sender][1]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
            else:
                if state >= 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[202 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                emit 0xb9eb8a30: state
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        mem[202 len 26]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        emit 0xb9eb8a30: state
                require state <= 5
                if state != 2:
                    if state != 4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    36,
                                    0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                    mem[200 len 28]
                    if reward[msg.sender][0]:
                        if eth.balance(this.address) < reward[msg.sender][0]:
                            emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                        else:
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < reward[msg.sender][1]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                            else:
                                reward[msg.sender][0] = 0
                                reward[msg.sender][1] = 0
                                call msg.sender with:
                                   value reward[msg.sender][0] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if reward[msg.sender][1] > 0:
                                    require ext_code.size(address(stor1.length))
                                    call address(stor1.length).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, reward[msg.sender][1]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                    else:
                        if not reward[msg.sender][1]:
                            emit 0x2ecfa5f6: Array(len=37, data=0x57596f7520646f206e6f74206861766520616e79207265776172647320746f20636c61696d, mem[197 len 27]), msg.sender
                        else:
                            if eth.balance(this.address) < reward[msg.sender][0]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                            else:
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < reward[msg.sender][1]:
                                    emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                                else:
                                    reward[msg.sender][0] = 0
                                    reward[msg.sender][1] = 0
                                    call msg.sender with:
                                       value reward[msg.sender][0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if reward[msg.sender][1] > 0:
                                        require ext_code.size(address(stor1.length))
                                        call address(stor1.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, reward[msg.sender][1]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                else:
                    if block.timestamp < stor24 + sub_f38a803f:
                        if state != 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        36,
                                        0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465,
                                        mem[200 len 28]
                        if reward[msg.sender][0]:
                            if eth.balance(this.address) < reward[msg.sender][0]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                            else:
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < reward[msg.sender][1]:
                                    emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                                else:
                                    reward[msg.sender][0] = 0
                                    reward[msg.sender][1] = 0
                                    call msg.sender with:
                                       value reward[msg.sender][0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if reward[msg.sender][1] > 0:
                                        require ext_code.size(address(stor1.length))
                                        call address(stor1.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, reward[msg.sender][1]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                        else:
                            if not reward[msg.sender][1]:
                                emit 0x2ecfa5f6: Array(len=37, data=0x57596f7520646f206e6f74206861766520616e79207265776172647320746f20636c61696d, mem[197 len 27]), msg.sender
                            else:
                                if eth.balance(this.address) < reward[msg.sender][0]:
                                    emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                                else:
                                    require ext_code.size(address(stor1.length))
                                    staticcall address(stor1.length).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < reward[msg.sender][1]:
                                        emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[229 len 27]), msg.sender
                                    else:
                                        reward[msg.sender][0] = 0
                                        reward[msg.sender][1] = 0
                                        call msg.sender with:
                                           value reward[msg.sender][0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if reward[msg.sender][1] > 0:
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, reward[msg.sender][1]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                    else:
                        if state >= 4:
                            revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                        state = 5
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        emit 0xb9eb8a30: state
                        if state != 4:
                            revert with 0, 32, 36, 0xfe4e6f7420706f737369626c6520696e2063757272656e74206576656e74207374617465, mem[264 len 28]
                        if reward[msg.sender][0]:
                            if eth.balance(this.address) < reward[msg.sender][0]:
                                emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[293 len 27]), msg.sender
                            else:
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < reward[msg.sender][1]:
                                    emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[293 len 27]), msg.sender
                                else:
                                    reward[msg.sender][0] = 0
                                    reward[msg.sender][1] = 0
                                    call msg.sender with:
                                       value reward[msg.sender][0] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if reward[msg.sender][1] > 0:
                                        require ext_code.size(address(stor1.length))
                                        call address(stor1.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, reward[msg.sender][1]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
                        else:
                            if not reward[msg.sender][1]:
                                emit 0x2ecfa5f6: Array(len=37, data=0x57596f7520646f206e6f74206861766520616e79207265776172647320746f20636c61696d, mem[261 len 27]), msg.sender
                            else:
                                if eth.balance(this.address) < reward[msg.sender][0]:
                                    emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[293 len 27]), msg.sender
                                else:
                                    require ext_code.size(address(stor1.length))
                                    staticcall address(stor1.length).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < reward[msg.sender][1]:
                                        emit 0x2ecfa5f6: Array(len=69, data=0x2e437269746963616c206572726f723a206e6f7420656e6f7567682062616c616e636520746f20706179206f7574207265776172642e20436f6e7461637420566572697479, mem[293 len 27]), msg.sender
                                    else:
                                        reward[msg.sender][0] = 0
                                        reward[msg.sender][1] = 0
                                        call msg.sender with:
                                           value reward[msg.sender][0] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if reward[msg.sender][1] > 0:
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, reward[msg.sender][1]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        emit ClaimReward(reward[msg.sender][0], reward[msg.sender][1], msg.sender);
}

function joinEvent() {
    require state <= 5
    require state <= 5
    if state:
    else:
        if block.timestamp < stor21:
        else:
            if state >= 4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                            mem[202 len 26]
            require state <= 5
            require state + 1 <= 5
            stor47 = state + 1 or Mask(248, 8, stor47)
            require state <= 5
            emit 0xb9eb8a30: state
    require state <= 5
    if state != 1:
        require state <= 5
        if state != 3:
        else:
            if block.timestamp < uint256(stor31):
            else:
                if state >= 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[202 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                emit 0xb9eb8a30: state
        if state != 2:
            if 0 >= stor5.length:
                if stor17.length >= stor45:
                    emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                else:
                    if stor16[address(msg.sender)]:
                        emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                    else:
                        require state <= 5
                        if state != 1:
                            emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[208 len 16]), msg.sender
                        else:
                            if stakingAmount <= 0:
                                stor16[msg.sender] = 1
                                stor17.length++
                                uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                require ext_code.size(sub_073f03fbAddress)
                                call sub_073f03fbAddress.0xb9d3514d with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit JoinEvent(msg.sender);
                            else:
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args msg.sender, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < stakingAmount:
                                    emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                else:
                                    if stakingAmount > 0:
                                        require ext_code.size(address(stor1.length))
                                        call address(stor1.length).0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, this.address, stakingAmount
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    stor16[msg.sender] = 1
                                    stor17.length++
                                    uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                    require ext_code.size(sub_073f03fbAddress)
                                    call sub_073f03fbAddress.0xb9d3514d with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit JoinEvent(msg.sender);
            else:
                if not stor5.length:
                    require ext_code.size(stor4)
                    staticcall stor4.0x35fe9034 with:
                            gas gas_remaining wei
                           args msg.sender, 64, stor5.length
                else:
                    mem[196] = uint256(stor5.field_0)
                    idx = 196
                    s = 0
                    while (32 * stor5.length) + 196 > idx + 32:
                        mem[idx + 32] = uint256(stor5[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.0x35fe9034 with:
                            gas gas_remaining wei
                           args msg.sender, Array(len=stor5.length, data=mem[196 len 32 * stor5.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                else:
                    if stor17.length >= stor45:
                        emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                    else:
                        if stor16[address(msg.sender)]:
                            emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                        else:
                            require state <= 5
                            if state != 1:
                                emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[208 len 16]), msg.sender
                            else:
                                if stakingAmount <= 0:
                                    stor16[msg.sender] = 1
                                    stor17.length++
                                    uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                    require ext_code.size(sub_073f03fbAddress)
                                    call sub_073f03fbAddress.0xb9d3514d with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit JoinEvent(msg.sender);
                                else:
                                    require ext_code.size(address(stor1.length))
                                    staticcall address(stor1.length).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args msg.sender, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < stakingAmount:
                                        emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                    else:
                                        if stakingAmount > 0:
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, this.address, stakingAmount
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        stor16[msg.sender] = 1
                                        stor17.length++
                                        uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                        require ext_code.size(sub_073f03fbAddress)
                                        call sub_073f03fbAddress.0xb9d3514d with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit JoinEvent(msg.sender);
        else:
            if block.timestamp < stor24 + sub_f38a803f:
                if 0 >= stor5.length:
                    if stor17.length >= stor45:
                        emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                    else:
                        if stor16[address(msg.sender)]:
                            emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                        else:
                            require state <= 5
                            if state != 1:
                                emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[208 len 16]), msg.sender
                            else:
                                if stakingAmount <= 0:
                                    stor16[msg.sender] = 1
                                    stor17.length++
                                    uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                    require ext_code.size(sub_073f03fbAddress)
                                    call sub_073f03fbAddress.0xb9d3514d with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit JoinEvent(msg.sender);
                                else:
                                    require ext_code.size(address(stor1.length))
                                    staticcall address(stor1.length).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args msg.sender, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < stakingAmount:
                                        emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                    else:
                                        if stakingAmount > 0:
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, this.address, stakingAmount
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        stor16[msg.sender] = 1
                                        stor17.length++
                                        uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                        require ext_code.size(sub_073f03fbAddress)
                                        call sub_073f03fbAddress.0xb9d3514d with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit JoinEvent(msg.sender);
                else:
                    if not stor5.length:
                        require ext_code.size(stor4)
                        staticcall stor4.0x35fe9034 with:
                                gas gas_remaining wei
                               args msg.sender, 64, stor5.length
                    else:
                        mem[196] = uint256(stor5.field_0)
                        idx = 196
                        s = 0
                        while (32 * stor5.length) + 196 > idx + 32:
                            mem[idx + 32] = uint256(stor5[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.0x35fe9034 with:
                                gas gas_remaining wei
                               args msg.sender, Array(len=stor5.length, data=mem[196 len 32 * stor5.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                    else:
                        if stor17.length >= stor45:
                            emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                        else:
                            if stor16[address(msg.sender)]:
                                emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                            else:
                                require state <= 5
                                if state != 1:
                                    emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[208 len 16]), msg.sender
                                else:
                                    if stakingAmount <= 0:
                                        stor16[msg.sender] = 1
                                        stor17.length++
                                        uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                        require ext_code.size(sub_073f03fbAddress)
                                        call sub_073f03fbAddress.0xb9d3514d with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit JoinEvent(msg.sender);
                                    else:
                                        require ext_code.size(address(stor1.length))
                                        staticcall address(stor1.length).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args msg.sender, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < stakingAmount:
                                            emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                        else:
                                            if stakingAmount > 0:
                                                require ext_code.size(address(stor1.length))
                                                call address(stor1.length).0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, this.address, stakingAmount
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
            else:
                require state <= 5
                if state >= 4:
                    revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                state = 5
                emit EventFailed('.Event took too long to complete');
                require state <= 5
                emit 0xb9eb8a30: state
                if 0 >= stor5.length:
                    if stor17.length >= stor45:
                        emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                    else:
                        if stor16[address(msg.sender)]:
                            emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                        else:
                            require state <= 5
                            if state != 1:
                                emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[272 len 16]), msg.sender
                            else:
                                if stakingAmount <= 0:
                                    stor16[msg.sender] = 1
                                    stor17.length++
                                    uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                    require ext_code.size(sub_073f03fbAddress)
                                    call sub_073f03fbAddress.0xb9d3514d with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit JoinEvent(msg.sender);
                                else:
                                    require ext_code.size(address(stor1.length))
                                    staticcall address(stor1.length).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args msg.sender, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < stakingAmount:
                                        emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                    else:
                                        if stakingAmount > 0:
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, this.address, stakingAmount
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        stor16[msg.sender] = 1
                                        stor17.length++
                                        uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                        require ext_code.size(sub_073f03fbAddress)
                                        call sub_073f03fbAddress.0xb9d3514d with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit JoinEvent(msg.sender);
                else:
                    if not stor5.length:
                        require ext_code.size(stor4)
                        staticcall stor4.0x35fe9034 with:
                                gas gas_remaining wei
                               args msg.sender, 64, stor5.length
                    else:
                        mem[260] = uint256(stor5.field_0)
                        idx = 260
                        s = 0
                        while (32 * stor5.length) + 260 > idx + 32:
                            mem[idx + 32] = uint256(stor5[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.0x35fe9034 with:
                                gas gas_remaining wei
                               args msg.sender, Array(len=stor5.length, data=mem[260 len 32 * stor5.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                    else:
                        if stor17.length >= stor45:
                            emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                        else:
                            if stor16[address(msg.sender)]:
                                emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                            else:
                                require state <= 5
                                if state != 1:
                                    emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[272 len 16]), msg.sender
                                else:
                                    if stakingAmount <= 0:
                                        stor16[msg.sender] = 1
                                        stor17.length++
                                        uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                        require ext_code.size(sub_073f03fbAddress)
                                        call sub_073f03fbAddress.0xb9d3514d with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit JoinEvent(msg.sender);
                                    else:
                                        require ext_code.size(address(stor1.length))
                                        staticcall address(stor1.length).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args msg.sender, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < stakingAmount:
                                            emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                        else:
                                            if stakingAmount > 0:
                                                require ext_code.size(address(stor1.length))
                                                call address(stor1.length).0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, this.address, stakingAmount
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
    else:
        if block.timestamp < stor22:
            require state <= 5
            if state != 3:
            else:
                if block.timestamp < uint256(stor31):
                else:
                    if state >= 4:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                    mem[202 len 26]
                    require state <= 5
                    require state + 1 <= 5
                    stor47 = state + 1 or Mask(248, 8, stor47)
                    require state <= 5
                    emit 0xb9eb8a30: state
            if state != 2:
                if 0 >= stor5.length:
                    if stor17.length >= stor45:
                        emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                    else:
                        if stor16[address(msg.sender)]:
                            emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                        else:
                            require state <= 5
                            if state != 1:
                                emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[208 len 16]), msg.sender
                            else:
                                if stakingAmount <= 0:
                                    stor16[msg.sender] = 1
                                    stor17.length++
                                    uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                    require ext_code.size(sub_073f03fbAddress)
                                    call sub_073f03fbAddress.0xb9d3514d with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit JoinEvent(msg.sender);
                                else:
                                    require ext_code.size(address(stor1.length))
                                    staticcall address(stor1.length).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args msg.sender, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < stakingAmount:
                                        emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                    else:
                                        if stakingAmount > 0:
                                            require ext_code.size(address(stor1.length))
                                            call address(stor1.length).0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, this.address, stakingAmount
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        stor16[msg.sender] = 1
                                        stor17.length++
                                        uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                        require ext_code.size(sub_073f03fbAddress)
                                        call sub_073f03fbAddress.0xb9d3514d with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit JoinEvent(msg.sender);
                else:
                    if not stor5.length:
                        require ext_code.size(stor4)
                        staticcall stor4.0x35fe9034 with:
                                gas gas_remaining wei
                               args msg.sender, 64, stor5.length
                    else:
                        mem[196] = uint256(stor5.field_0)
                        idx = 196
                        s = 0
                        while (32 * stor5.length) + 196 > idx + 32:
                            mem[idx + 32] = uint256(stor5[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(stor4)
                        staticcall stor4.0x35fe9034 with:
                                gas gas_remaining wei
                               args msg.sender, Array(len=stor5.length, data=mem[196 len 32 * stor5.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                    else:
                        if stor17.length >= stor45:
                            emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                        else:
                            if stor16[address(msg.sender)]:
                                emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                            else:
                                require state <= 5
                                if state != 1:
                                    emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[208 len 16]), msg.sender
                                else:
                                    if stakingAmount <= 0:
                                        stor16[msg.sender] = 1
                                        stor17.length++
                                        uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                        require ext_code.size(sub_073f03fbAddress)
                                        call sub_073f03fbAddress.0xb9d3514d with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit JoinEvent(msg.sender);
                                    else:
                                        require ext_code.size(address(stor1.length))
                                        staticcall address(stor1.length).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args msg.sender, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < stakingAmount:
                                            emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                        else:
                                            if stakingAmount > 0:
                                                require ext_code.size(address(stor1.length))
                                                call address(stor1.length).0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, this.address, stakingAmount
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
            else:
                if block.timestamp < stor24 + sub_f38a803f:
                    if 0 >= stor5.length:
                        if stor17.length >= stor45:
                            emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                        else:
                            if stor16[address(msg.sender)]:
                                emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                            else:
                                require state <= 5
                                if state != 1:
                                    emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[208 len 16]), msg.sender
                                else:
                                    if stakingAmount <= 0:
                                        stor16[msg.sender] = 1
                                        stor17.length++
                                        uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                        require ext_code.size(sub_073f03fbAddress)
                                        call sub_073f03fbAddress.0xb9d3514d with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit JoinEvent(msg.sender);
                                    else:
                                        require ext_code.size(address(stor1.length))
                                        staticcall address(stor1.length).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args msg.sender, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < stakingAmount:
                                            emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                        else:
                                            if stakingAmount > 0:
                                                require ext_code.size(address(stor1.length))
                                                call address(stor1.length).0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, this.address, stakingAmount
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
                    else:
                        if not stor5.length:
                            require ext_code.size(stor4)
                            staticcall stor4.0x35fe9034 with:
                                    gas gas_remaining wei
                                   args msg.sender, 64, stor5.length
                        else:
                            mem[196] = uint256(stor5.field_0)
                            idx = 196
                            s = 0
                            while (32 * stor5.length) + 196 > idx + 32:
                                mem[idx + 32] = uint256(stor5[s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(stor4)
                            staticcall stor4.0x35fe9034 with:
                                    gas gas_remaining wei
                                   args msg.sender, Array(len=stor5.length, data=mem[196 len 32 * stor5.length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                        else:
                            if stor17.length >= stor45:
                                emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                            else:
                                if stor16[address(msg.sender)]:
                                    emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                else:
                                    require state <= 5
                                    if state != 1:
                                        emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[208 len 16]), msg.sender
                                    else:
                                        if stakingAmount <= 0:
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
                                        else:
                                            require ext_code.size(address(stor1.length))
                                            staticcall address(stor1.length).0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < stakingAmount:
                                                emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                            else:
                                                if stakingAmount > 0:
                                                    require ext_code.size(address(stor1.length))
                                                    call address(stor1.length).0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, this.address, stakingAmount
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                stor16[msg.sender] = 1
                                                stor17.length++
                                                uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                require ext_code.size(sub_073f03fbAddress)
                                                call sub_073f03fbAddress.0xb9d3514d with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit JoinEvent(msg.sender);
                else:
                    require state <= 5
                    if state >= 4:
                        revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                    state = 5
                    emit EventFailed('.Event took too long to complete');
                    require state <= 5
                    emit 0xb9eb8a30: state
                    if 0 >= stor5.length:
                        if stor17.length >= stor45:
                            emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                        else:
                            if stor16[address(msg.sender)]:
                                emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                            else:
                                require state <= 5
                                if state != 1:
                                    emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[272 len 16]), msg.sender
                                else:
                                    if stakingAmount <= 0:
                                        stor16[msg.sender] = 1
                                        stor17.length++
                                        uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                        require ext_code.size(sub_073f03fbAddress)
                                        call sub_073f03fbAddress.0xb9d3514d with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit JoinEvent(msg.sender);
                                    else:
                                        require ext_code.size(address(stor1.length))
                                        staticcall address(stor1.length).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args msg.sender, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < stakingAmount:
                                            emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                        else:
                                            if stakingAmount > 0:
                                                require ext_code.size(address(stor1.length))
                                                call address(stor1.length).0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, this.address, stakingAmount
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
                    else:
                        if not stor5.length:
                            require ext_code.size(stor4)
                            staticcall stor4.0x35fe9034 with:
                                    gas gas_remaining wei
                                   args msg.sender, 64, stor5.length
                        else:
                            mem[260] = uint256(stor5.field_0)
                            idx = 260
                            s = 0
                            while (32 * stor5.length) + 260 > idx + 32:
                                mem[idx + 32] = uint256(stor5[s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(stor4)
                            staticcall stor4.0x35fe9034 with:
                                    gas gas_remaining wei
                                   args msg.sender, Array(len=stor5.length, data=mem[260 len 32 * stor5.length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                        else:
                            if stor17.length >= stor45:
                                emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                            else:
                                if stor16[address(msg.sender)]:
                                    emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                else:
                                    require state <= 5
                                    if state != 1:
                                        emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[272 len 16]), msg.sender
                                    else:
                                        if stakingAmount <= 0:
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
                                        else:
                                            require ext_code.size(address(stor1.length))
                                            staticcall address(stor1.length).0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < stakingAmount:
                                                emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                            else:
                                                if stakingAmount > 0:
                                                    require ext_code.size(address(stor1.length))
                                                    call address(stor1.length).0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, this.address, stakingAmount
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                stor16[msg.sender] = 1
                                                stor17.length++
                                                uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                require ext_code.size(sub_073f03fbAddress)
                                                call sub_073f03fbAddress.0xb9d3514d with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit JoinEvent(msg.sender);
        else:
            if stor17.length < stor41:
                if state >= 4:
                    revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[298 len 26]
                state = 5
                emit EventFailed(Array(len=51, data=0x2e4e6f7420656e6f756768207573657273206a6f696e656420666f72207265717569726564206d696e696d756d20766f746573, mem[179 len 13], Mask(152, -256, mem[179 len 13]) << 256));
                require state <= 5
                emit 0xb9eb8a30: state
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        Mask(72, -256, mem[179 len 13]) << 360,
                                        mem[320 len 4]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        emit 0xb9eb8a30: state
                if state != 2:
                    if 0 >= stor5.length:
                        if stor17.length >= stor45:
                            emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                        else:
                            if stor16[address(msg.sender)]:
                                emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                            else:
                                require state <= 5
                                if state != 1:
                                    emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, Mask(24, -256, mem[179 len 13]) << 360), msg.sender
                                else:
                                    if stakingAmount <= 0:
                                        stor16[msg.sender] = 1
                                        stor17.length++
                                        uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                        require ext_code.size(sub_073f03fbAddress)
                                        call sub_073f03fbAddress.0xb9d3514d with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit JoinEvent(msg.sender);
                                    else:
                                        require ext_code.size(address(stor1.length))
                                        staticcall address(stor1.length).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args msg.sender, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < stakingAmount:
                                            emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                        else:
                                            if stakingAmount > 0:
                                                require ext_code.size(address(stor1.length))
                                                call address(stor1.length).0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, this.address, stakingAmount
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
                    else:
                        if not stor5.length:
                            require ext_code.size(stor4)
                            staticcall stor4.0x35fe9034 with:
                                    gas gas_remaining wei
                                   args msg.sender, 64, stor5.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                            else:
                                if stor17.length >= stor45:
                                    emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                                else:
                                    if stor16[address(msg.sender)]:
                                        emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                    else:
                                        require state <= 5
                                        if state != 1:
                                            emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, Mask(24, -256, mem[179 len 13]) << 360), msg.sender
                                        else:
                                            if stakingAmount <= 0:
                                                stor16[msg.sender] = 1
                                                stor17.length++
                                                uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                require ext_code.size(sub_073f03fbAddress)
                                                call sub_073f03fbAddress.0xb9d3514d with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit JoinEvent(msg.sender);
                                            else:
                                                require ext_code.size(address(stor1.length))
                                                staticcall address(stor1.length).0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args msg.sender, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < stakingAmount:
                                                    emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                                else:
                                                    if stakingAmount > 0:
                                                        require ext_code.size(address(stor1.length))
                                                        call address(stor1.length).0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, this.address, stakingAmount
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    stor16[msg.sender] = 1
                                                    stor17.length++
                                                    uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                    require ext_code.size(sub_073f03fbAddress)
                                                    call sub_073f03fbAddress.0xb9d3514d with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit JoinEvent(msg.sender);
                        else:
                            mem[292] = uint256(stor5.field_0)
                            idx = 292
                            s = 0
                            while (32 * stor5.length) + 292 > idx + 32:
                                mem[idx + 32] = uint256(stor5[s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(stor4)
                            staticcall stor4.0x35fe9034 with:
                                    gas gas_remaining wei
                                   args msg.sender, Array(len=stor5.length, data=mem[292 len 32 * stor5.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                            else:
                                if stor17.length >= stor45:
                                    emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                                else:
                                    if stor16[address(msg.sender)]:
                                        emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                    else:
                                        require state <= 5
                                        if state != 1:
                                            emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[304 len 16]), msg.sender
                                        else:
                                            if stakingAmount <= 0:
                                                stor16[msg.sender] = 1
                                                stor17.length++
                                                uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                require ext_code.size(sub_073f03fbAddress)
                                                call sub_073f03fbAddress.0xb9d3514d with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit JoinEvent(msg.sender);
                                            else:
                                                require ext_code.size(address(stor1.length))
                                                staticcall address(stor1.length).0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args msg.sender, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < stakingAmount:
                                                    emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                                else:
                                                    if stakingAmount > 0:
                                                        require ext_code.size(address(stor1.length))
                                                        call address(stor1.length).0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, this.address, stakingAmount
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    stor16[msg.sender] = 1
                                                    stor17.length++
                                                    uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                    require ext_code.size(sub_073f03fbAddress)
                                                    call sub_073f03fbAddress.0xb9d3514d with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit JoinEvent(msg.sender);
                else:
                    if block.timestamp < stor24 + sub_f38a803f:
                        if 0 >= stor5.length:
                            if stor17.length >= stor45:
                                emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                            else:
                                if stor16[address(msg.sender)]:
                                    emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                else:
                                    require state <= 5
                                    if state != 1:
                                        emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, Mask(24, -256, mem[179 len 13]) << 360), msg.sender
                                    else:
                                        if stakingAmount <= 0:
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
                                        else:
                                            require ext_code.size(address(stor1.length))
                                            staticcall address(stor1.length).0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < stakingAmount:
                                                emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                            else:
                                                if stakingAmount > 0:
                                                    require ext_code.size(address(stor1.length))
                                                    call address(stor1.length).0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, this.address, stakingAmount
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                stor16[msg.sender] = 1
                                                stor17.length++
                                                uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                require ext_code.size(sub_073f03fbAddress)
                                                call sub_073f03fbAddress.0xb9d3514d with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit JoinEvent(msg.sender);
                        else:
                            if not stor5.length:
                                require ext_code.size(stor4)
                                staticcall stor4.0x35fe9034 with:
                                        gas gas_remaining wei
                                       args msg.sender, 64, stor5.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                                else:
                                    if stor17.length >= stor45:
                                        emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                                    else:
                                        if stor16[address(msg.sender)]:
                                            emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                        else:
                                            require state <= 5
                                            if state != 1:
                                                emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, Mask(24, -256, mem[179 len 13]) << 360), msg.sender
                                            else:
                                                if stakingAmount <= 0:
                                                    stor16[msg.sender] = 1
                                                    stor17.length++
                                                    uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                    require ext_code.size(sub_073f03fbAddress)
                                                    call sub_073f03fbAddress.0xb9d3514d with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit JoinEvent(msg.sender);
                                                else:
                                                    require ext_code.size(address(stor1.length))
                                                    staticcall address(stor1.length).0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args msg.sender, this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < stakingAmount:
                                                        emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                                    else:
                                                        if stakingAmount > 0:
                                                            require ext_code.size(address(stor1.length))
                                                            call address(stor1.length).0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, this.address, stakingAmount
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                        stor16[msg.sender] = 1
                                                        stor17.length++
                                                        uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                        require ext_code.size(sub_073f03fbAddress)
                                                        call sub_073f03fbAddress.0xb9d3514d with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit JoinEvent(msg.sender);
                            else:
                                mem[292] = uint256(stor5.field_0)
                                idx = 292
                                s = 0
                                while (32 * stor5.length) + 292 > idx + 32:
                                    mem[idx + 32] = uint256(stor5[s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(stor4)
                                staticcall stor4.0x35fe9034 with:
                                        gas gas_remaining wei
                                       args msg.sender, Array(len=stor5.length, data=mem[292 len 32 * stor5.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                                else:
                                    if stor17.length >= stor45:
                                        emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                                    else:
                                        if stor16[address(msg.sender)]:
                                            emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                        else:
                                            require state <= 5
                                            if state != 1:
                                                emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[304 len 16]), msg.sender
                                            else:
                                                if stakingAmount <= 0:
                                                    stor16[msg.sender] = 1
                                                    stor17.length++
                                                    uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                    require ext_code.size(sub_073f03fbAddress)
                                                    call sub_073f03fbAddress.0xb9d3514d with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit JoinEvent(msg.sender);
                                                else:
                                                    require ext_code.size(address(stor1.length))
                                                    staticcall address(stor1.length).0xdd62ed3e with:
                                                            gas gas_remaining wei
                                                           args msg.sender, this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < stakingAmount:
                                                        emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                                    else:
                                                        if stakingAmount > 0:
                                                            require ext_code.size(address(stor1.length))
                                                            call address(stor1.length).0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, this.address, stakingAmount
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                        stor16[msg.sender] = 1
                                                        stor17.length++
                                                        uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                        require ext_code.size(sub_073f03fbAddress)
                                                        call sub_073f03fbAddress.0xb9d3514d with:
                                                             gas gas_remaining wei
                                                            args msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit JoinEvent(msg.sender);
                    else:
                        require state <= 5
                        if state >= 4:
                            revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[362 len 26]
                        state = 5
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        emit 0xb9eb8a30: state
                        if 0 >= stor5.length:
                            if stor17.length >= stor45:
                                emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                            else:
                                if stor16[address(msg.sender)]:
                                    emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                else:
                                    require state <= 5
                                    if state != 1:
                                        emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[368 len 16]), msg.sender
                                    else:
                                        if stakingAmount <= 0:
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
                                        else:
                                            require ext_code.size(address(stor1.length))
                                            staticcall address(stor1.length).0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < stakingAmount:
                                                emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                            else:
                                                if stakingAmount > 0:
                                                    require ext_code.size(address(stor1.length))
                                                    call address(stor1.length).0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, this.address, stakingAmount
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                stor16[msg.sender] = 1
                                                stor17.length++
                                                uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                require ext_code.size(sub_073f03fbAddress)
                                                call sub_073f03fbAddress.0xb9d3514d with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit JoinEvent(msg.sender);
                        else:
                            if not stor5.length:
                                require ext_code.size(stor4)
                                staticcall stor4.0x35fe9034 with:
                                        gas gas_remaining wei
                                       args msg.sender, 64, stor5.length
                            else:
                                mem[356] = uint256(stor5.field_0)
                                idx = 356
                                s = 0
                                while (32 * stor5.length) + 356 > idx + 32:
                                    mem[idx + 32] = uint256(stor5[s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(stor4)
                                staticcall stor4.0x35fe9034 with:
                                        gas gas_remaining wei
                                       args msg.sender, Array(len=stor5.length, data=mem[356 len 32 * stor5.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                            else:
                                if stor17.length >= stor45:
                                    emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                                else:
                                    if stor16[address(msg.sender)]:
                                        emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                    else:
                                        require state <= 5
                                        if state != 1:
                                            emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[368 len 16]), msg.sender
                                        else:
                                            if stakingAmount <= 0:
                                                stor16[msg.sender] = 1
                                                stor17.length++
                                                uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                require ext_code.size(sub_073f03fbAddress)
                                                call sub_073f03fbAddress.0xb9d3514d with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit JoinEvent(msg.sender);
                                            else:
                                                require ext_code.size(address(stor1.length))
                                                staticcall address(stor1.length).0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args msg.sender, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < stakingAmount:
                                                    emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                                else:
                                                    if stakingAmount > 0:
                                                        require ext_code.size(address(stor1.length))
                                                        call address(stor1.length).0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, this.address, stakingAmount
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    stor16[msg.sender] = 1
                                                    stor17.length++
                                                    uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                    require ext_code.size(sub_073f03fbAddress)
                                                    call sub_073f03fbAddress.0xb9d3514d with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit JoinEvent(msg.sender);
            else:
                if state >= 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                mem[202 len 26]
                require state <= 5
                require state + 1 <= 5
                stor47 = state + 1 or Mask(248, 8, stor47)
                require state <= 5
                emit 0xb9eb8a30: state
                require state <= 5
                if state != 3:
                else:
                    if block.timestamp < uint256(stor31):
                    else:
                        if state >= 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265,
                                        mem[202 len 26]
                        require state <= 5
                        require state + 1 <= 5
                        stor47 = state + 1 or Mask(248, 8, stor47)
                        require state <= 5
                        emit 0xb9eb8a30: state
                if state != 2:
                    if 0 >= stor5.length:
                        if stor17.length >= stor45:
                            emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                        else:
                            if stor16[address(msg.sender)]:
                                emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                            else:
                                require state <= 5
                                if state != 1:
                                    emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[208 len 16]), msg.sender
                                else:
                                    if stakingAmount <= 0:
                                        stor16[msg.sender] = 1
                                        stor17.length++
                                        uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                        require ext_code.size(sub_073f03fbAddress)
                                        call sub_073f03fbAddress.0xb9d3514d with:
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit JoinEvent(msg.sender);
                                    else:
                                        require ext_code.size(address(stor1.length))
                                        staticcall address(stor1.length).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args msg.sender, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < stakingAmount:
                                            emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                        else:
                                            if stakingAmount > 0:
                                                require ext_code.size(address(stor1.length))
                                                call address(stor1.length).0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, this.address, stakingAmount
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
                    else:
                        if not stor5.length:
                            require ext_code.size(stor4)
                            staticcall stor4.0x35fe9034 with:
                                    gas gas_remaining wei
                                   args msg.sender, 64, stor5.length
                        else:
                            mem[196] = uint256(stor5.field_0)
                            idx = 196
                            s = 0
                            while (32 * stor5.length) + 196 > idx + 32:
                                mem[idx + 32] = uint256(stor5[s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(stor4)
                            staticcall stor4.0x35fe9034 with:
                                    gas gas_remaining wei
                                   args msg.sender, Array(len=stor5.length, data=mem[196 len 32 * stor5.length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                        else:
                            if stor17.length >= stor45:
                                emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                            else:
                                if stor16[address(msg.sender)]:
                                    emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                else:
                                    require state <= 5
                                    if state != 1:
                                        emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[208 len 16]), msg.sender
                                    else:
                                        if stakingAmount <= 0:
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
                                        else:
                                            require ext_code.size(address(stor1.length))
                                            staticcall address(stor1.length).0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < stakingAmount:
                                                emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                            else:
                                                if stakingAmount > 0:
                                                    require ext_code.size(address(stor1.length))
                                                    call address(stor1.length).0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, this.address, stakingAmount
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                stor16[msg.sender] = 1
                                                stor17.length++
                                                uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                require ext_code.size(sub_073f03fbAddress)
                                                call sub_073f03fbAddress.0xb9d3514d with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit JoinEvent(msg.sender);
                else:
                    if block.timestamp < stor24 + sub_f38a803f:
                        if 0 >= stor5.length:
                            if stor17.length >= stor45:
                                emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                            else:
                                if stor16[address(msg.sender)]:
                                    emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                else:
                                    require state <= 5
                                    if state != 1:
                                        emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[208 len 16]), msg.sender
                                    else:
                                        if stakingAmount <= 0:
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
                                        else:
                                            require ext_code.size(address(stor1.length))
                                            staticcall address(stor1.length).0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < stakingAmount:
                                                emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                            else:
                                                if stakingAmount > 0:
                                                    require ext_code.size(address(stor1.length))
                                                    call address(stor1.length).0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, this.address, stakingAmount
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                stor16[msg.sender] = 1
                                                stor17.length++
                                                uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                require ext_code.size(sub_073f03fbAddress)
                                                call sub_073f03fbAddress.0xb9d3514d with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit JoinEvent(msg.sender);
                        else:
                            if not stor5.length:
                                require ext_code.size(stor4)
                                staticcall stor4.0x35fe9034 with:
                                        gas gas_remaining wei
                                       args msg.sender, 64, stor5.length
                            else:
                                mem[196] = uint256(stor5.field_0)
                                idx = 196
                                s = 0
                                while (32 * stor5.length) + 196 > idx + 32:
                                    mem[idx + 32] = uint256(stor5[s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(stor4)
                                staticcall stor4.0x35fe9034 with:
                                        gas gas_remaining wei
                                       args msg.sender, Array(len=stor5.length, data=mem[196 len 32 * stor5.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                            else:
                                if stor17.length >= stor45:
                                    emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                                else:
                                    if stor16[address(msg.sender)]:
                                        emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                    else:
                                        require state <= 5
                                        if state != 1:
                                            emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[208 len 16]), msg.sender
                                        else:
                                            if stakingAmount <= 0:
                                                stor16[msg.sender] = 1
                                                stor17.length++
                                                uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                require ext_code.size(sub_073f03fbAddress)
                                                call sub_073f03fbAddress.0xb9d3514d with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit JoinEvent(msg.sender);
                                            else:
                                                require ext_code.size(address(stor1.length))
                                                staticcall address(stor1.length).0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args msg.sender, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < stakingAmount:
                                                    emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                                else:
                                                    if stakingAmount > 0:
                                                        require ext_code.size(address(stor1.length))
                                                        call address(stor1.length).0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, this.address, stakingAmount
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    stor16[msg.sender] = 1
                                                    stor17.length++
                                                    uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                    require ext_code.size(sub_073f03fbAddress)
                                                    call sub_073f03fbAddress.0xb9d3514d with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit JoinEvent(msg.sender);
                    else:
                        require state <= 5
                        if state >= 4:
                            revert with 0, 32, 38, 0x2e4576656e742073746174652063616e2774206265206d6f64696669656420616e796d6f7265, mem[266 len 26]
                        state = 5
                        emit EventFailed('.Event took too long to complete');
                        require state <= 5
                        emit 0xb9eb8a30: state
                        if 0 >= stor5.length:
                            if stor17.length >= stor45:
                                emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                            else:
                                if stor16[address(msg.sender)]:
                                    emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                else:
                                    require state <= 5
                                    if state != 1:
                                        emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[272 len 16]), msg.sender
                                    else:
                                        if stakingAmount <= 0:
                                            stor16[msg.sender] = 1
                                            stor17.length++
                                            uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                            require ext_code.size(sub_073f03fbAddress)
                                            call sub_073f03fbAddress.0xb9d3514d with:
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit JoinEvent(msg.sender);
                                        else:
                                            require ext_code.size(address(stor1.length))
                                            staticcall address(stor1.length).0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args msg.sender, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < stakingAmount:
                                                emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                            else:
                                                if stakingAmount > 0:
                                                    require ext_code.size(address(stor1.length))
                                                    call address(stor1.length).0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, this.address, stakingAmount
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                stor16[msg.sender] = 1
                                                stor17.length++
                                                uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                require ext_code.size(sub_073f03fbAddress)
                                                call sub_073f03fbAddress.0xb9d3514d with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit JoinEvent(msg.sender);
                        else:
                            if not stor5.length:
                                require ext_code.size(stor4)
                                staticcall stor4.0x35fe9034 with:
                                        gas gas_remaining wei
                                       args msg.sender, 64, stor5.length
                            else:
                                mem[260] = uint256(stor5.field_0)
                                idx = 260
                                s = 0
                                while (32 * stor5.length) + 260 > idx + 32:
                                    mem[idx + 32] = uint256(stor5[s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(stor4)
                                staticcall stor4.0x35fe9034 with:
                                        gas gas_remaining wei
                                       args msg.sender, Array(len=stor5.length, data=mem[260 len 32 * stor5.length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                emit 0x2ecfa5f6: Array(len=18, data='Permission denied.'), msg.sender
                            else:
                                if stor17.length >= stor45:
                                    emit 0x2ecfa5f6: Array(len=14, data='Event is full.'), msg.sender
                                else:
                                    if stor16[address(msg.sender)]:
                                        emit 0x2ecfa5f6: Array(len=30, data='You are already participating.'), msg.sender
                                    else:
                                        require state <= 5
                                        if state != 1:
                                            emit 0x2ecfa5f6: Array(len=48, data=0x2e596f752063616e206e6f74206a6f696e20746865206576656e7420696e206974732063757272656e74207374617465, mem[272 len 16]), msg.sender
                                        else:
                                            if stakingAmount <= 0:
                                                stor16[msg.sender] = 1
                                                stor17.length++
                                                uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                require ext_code.size(sub_073f03fbAddress)
                                                call sub_073f03fbAddress.0xb9d3514d with:
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit JoinEvent(msg.sender);
                                            else:
                                                require ext_code.size(address(stor1.length))
                                                staticcall address(stor1.length).0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args msg.sender, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < stakingAmount:
                                                    emit 0x2ecfa5f6: Array(len=25, data='Not enough tokens staked.'), msg.sender
                                                else:
                                                    if stakingAmount > 0:
                                                        require ext_code.size(address(stor1.length))
                                                        call address(stor1.length).0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, this.address, stakingAmount
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    stor16[msg.sender] = 1
                                                    stor17.length++
                                                    uint256(stor17[stor17.length].field_0) = msg.sender or Mask(96, 160, uint256(stor17[stor17.length].field_0))
                                                    require ext_code.size(sub_073f03fbAddress)
                                                    call sub_073f03fbAddress.0xb9d3514d with:
                                                         gas gas_remaining wei
                                                        args msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit JoinEvent(msg.sender);
}



}
