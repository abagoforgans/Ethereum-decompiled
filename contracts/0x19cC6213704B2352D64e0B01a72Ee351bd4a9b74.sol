contract main {




// =====================  Runtime code  =====================


#
#  - oraclizeSetWinner(uint256 arg1, uint256 arg2)
#  - __callback(bytes32 arg1, string arg2)
#  - getPlayerData(address arg1)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#
array of uint8 stor2;
address owner;
array of uint256 oraclizeSource;
array of struct WINNER;
array of uint256 loserOne;
array of uint256 loserTwo;
array of struct teamOne;
array of uint256 teamTwo;
array of uint256 draw;
uint256 betsCloseAt;
uint256 endsAt;

function endsAt() {
    return endsAt
}

function draw() {
    return draw[0 len draw.length]
}

function loserOne() {
    return loserOne[0 len loserOne.length]
}

function teamOne() {
    return teamOne[0 len teamOne.length].field_0
}

function betsCloseAt() {
    return betsCloseAt
}

function owner() {
    return owner
}

function WINNER() {
    return WINNER[0 len WINNER.length].field_0
}

function oraclizeSource() {
    return oraclizeSource[0 len oraclizeSource.length]
}

function teamTwo() {
    return teamTwo[0 len teamTwo.length]
}

function loserTwo() {
    return loserTwo[0 len loserTwo.length]
}

function _fallback() payable {
  stop
}

function withdrawRemainingRewards() {
    require msg.sender == owner
    require block.timestamp >= endsAt
    idx = 128
    s = 0
    while WINNER.length + 96 > idx:
        mem[idx + 32] = WINNER[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require WINNER.length != 0
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPoolAmounts() {
    mem[96 len 96] = code.data[14441 len 96]
    mem[64] = 288
    mem[288] = uint256(teamOne.field_0)
    idx = 288
    s = 0
    while teamOne.length + 288 > idx + 32:
        mem[idx + 32] = teamOne[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[teamOne.length + 288] = 8
    mem[192] = stor[sha3(mem[288 len stor16.length + 32])]
    mem[0] = 17
    mem[288] = teamTwo
    idx = mem[64]
    s = 0
    while teamTwo.length + 288 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[teamTwo.length + 288] = 8
    mem[224] = stor[sha3(mem[mem[64] len stor17.length + -mem[64] + 320])]
    _175 = mem[64]
    mem[0] = 18
    mem[mem[64]] = draw
    idx = mem[64]
    s = 0
    while _175 + draw.length > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[_175 + draw.length] = 8
    mem[256] = stor[sha3(mem[mem[64] len _175 + stor18.length + -mem[64] + 32])]
    mem[mem[64] len 96] = mem[192 len 96]
    return memory
      from mem[64]
       len 96
}

function withdrawReward() {
    require block.timestamp >= endsAt
    mem[64] = ceil32(WINNER.length) + 128
    mem[96] = WINNER.length
    mem[128] = uint256(WINNER.field_0)
    idx = 128
    s = 0
    while WINNER.length + 96 > idx:
        mem[idx + 32] = WINNER[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require WINNER.length != 0
    mem[0] = 13
    mem[ceil32(WINNER.length) + 128] = uint256(WINNER.field_0)
    idx = mem[64]
    s = 0
    while ceil32(WINNER.length) + WINNER.length + 128 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(WINNER.length) + WINNER.length + 128] = 7
    _3672 = mem[64]
    _3673 = sha3(mem[mem[64] len ceil32(WINNER.length) + WINNER.length + -mem[64] + 160])
    mem[0] = 13
    mem[mem[64]] = uint256(WINNER.field_0)
    idx = mem[64]
    s = 0
    while _3672 + WINNER.length > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[_3672 + WINNER.length] = 8
    _6766 = sha3(mem[mem[64] len _3672 + WINNER.length + -mem[64] + 32])
    _6767 = mem[64]
    mem[0] = 15
    mem[mem[64]] = loserTwo
    idx = mem[64]
    s = 0
    while _6767 + loserTwo.length > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[_6767 + loserTwo.length] = 8
    _8950 = sha3(mem[mem[64] len _6767 + loserTwo.length + -mem[64] + 32])
    _8951 = mem[64]
    mem[0] = 14
    mem[mem[64]] = loserOne
    idx = mem[64]
    s = 0
    while _8951 + loserOne.length > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[_8951 + loserOne.length] = 8
    _9868 = sha3(mem[mem[64] len _8951 + loserOne.length + -mem[64] + 32])
    require stor[_6766]
    call msg.sender with:
       value stor[_3673][msg.sender] + ((stor[sha3(mem[mem[64] len _8951 + stor14.length + -mem[64] + 32])] * stor[_3673][msg.sender]) + (stor[_8950] * stor[_3673][msg.sender]) / stor[_6766]) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _9959 = mem[64]
    mem[0] = 13
    mem[mem[64]] = uint256(WINNER.field_0)
    idx = mem[64]
    s = 0
    while _9959 + WINNER.length > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[_9959 + WINNER.length] = sha3(address(msg.sender), 12)
    stor2[sha3(mem[mem[64] len _9959 + stor13.length + -mem[64] + 32])] = 1
    _10093 = mem[64]
    mem[0] = 13
    mem[mem[64]] = uint256(WINNER.field_0)
    idx = mem[64]
    s = 0
    while _10093 + WINNER.length > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[_10093 + WINNER.length] = 7
    stor[sha3(mem[mem[64] len _10093 + stor13.length + -mem[64] + 32])][msg.sender] = 0
    emit RewardWithdrawn(msg.sender, stor[_3673][msg.sender] + ((stor[_9868] * stor[_3673][msg.sender]) + (stor[_8950] * stor[_3673][msg.sender]) / stor[_6766]));
}

function bet(string arg1) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = uint256(teamOne.field_0)
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + teamOne.length + 128 > idx + 32:
        mem[idx + 32] = teamOne[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _2347 = sha3(mem[ceil32(arg1.length) + 128 len teamOne.length])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == _2347:
        require block.timestamp < betsCloseAt
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 7
        stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][msg.sender] += msg.value
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 8
        stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] += msg.value
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        var24001 = floor32(arg1.length) + 128
        var24002 = ceil32(arg1.length) + floor32(arg1.length) + 128
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = sha3(msg.sender, 12)
        if stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]:
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + arg1.length + 128] = sha3(address(msg.sender), 12)
            stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] += msg.value
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            emit PlayerJoined(msg.sender, msg.value, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]));
        else:
            mem[ceil32(arg1.length) + 128] = msg.value
            mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + 224] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 224] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + arg1.length + 224] = sha3(msg.sender, 12)
            stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = msg.value
            stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1][] = Array(len=arg1.length, data=arg1[all])
            stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = 0
            mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            var45001 = floor32(arg1.length) + 128
            mem[ceil32(arg1.length) + floor32(arg1.length) + 224] = mem[ceil32(arg1.length) + floor32(arg1.length) + 224] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            emit PlayerJoined(msg.sender, msg.value, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len arg1.length % 32]));
    else:
        mem[0] = 17
        mem[ceil32(arg1.length) + 128] = teamTwo
        idx = mem[64]
        s = 0
        while ceil32(arg1.length) + teamTwo.length + 128 > idx + 32:
            mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        _8584 = mem[64]
        _8585 = sha3(mem[mem[64] len ceil32(arg1.length) + teamTwo.length + -mem[64] + 128])
        _8586 = mem[96]
        mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        if sha3(mem[mem[64] len _8586 + _8584 - mem[64]]) == _8585:
            require block.timestamp < betsCloseAt
            _11678 = mem[64]
            _11679 = mem[96]
            mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
            mem[_11678 + _11679] = 7
            _13661 = mem[64]
            _13662 = sha3(mem[mem[64] len _11678 + _11679 + -mem[64] + 32])
            mem[0] = msg.sender
            mem[32] = _13662
            stor[_13662][msg.sender] += msg.value
            _13664 = mem[96]
            mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
            mem[_13661 + _13664] = 8
            _15800 = mem[64]
            stor[sha3(mem[mem[64] len _13661 + _13664 + -mem[64] + 32])] += msg.value
            mem[0] = msg.sender
            mem[32] = 12
            _15803 = mem[96]
            mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            var34002 = mem[64] + floor32(mem[96])
            var34003 = mem[96] - (32 * Mask(251, 0, mem[96]) >> 5)
            mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
            mem[_15800 + _15803] = sha3(msg.sender, 12)
            if stor[sha3(mem[mem[64] len _15800 + _15803 + -mem[64] + 32])]:
                mem[0] = msg.sender
                mem[32] = 12
                _17866 = mem[64]
                _17867 = mem[96]
                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                var38001 = floor32(mem[96]) + 128
                mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                mem[_17866 + _17867] = sha3(address(msg.sender), 12)
                stor[sha3(mem[mem[64] len _17866 + _17867 + -mem[64] + 32])] += msg.value
                _19127 = mem[64]
                _19128 = mem[96]
                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                var42001 = floor32(mem[96]) + 128
                mem[mem[64] + floor32(mem[96])] = mem[mem[64] + floor32(mem[96])] and 256^(-(mem[96] % 32) + 32) - 1 or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                emit PlayerJoined(msg.sender, msg.value, sha3(mem[mem[64] len _19127 + _19128 - mem[64]]));
            else:
                _17868 = mem[64]
                mem[64] = mem[64] + 96
                mem[_17868] = msg.value
                mem[_17868 + 32] = 96
                mem[_17868 + 64] = 0
                mem[0] = msg.sender
                mem[32] = 12
                _17870 = mem[64]
                _17871 = mem[96]
                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                var38001 = floor32(mem[96]) + 128
                mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                mem[_17870 + _17871] = sha3(msg.sender, 12)
                _19005 = sha3(mem[mem[64] len _17870 + _17871 + -mem[64] + 32])
                stor[sha3(mem[mem[64] len _17870 + _17871 + -mem[64] + 32])] = msg.value
                mem[0] = sha3(mem[mem[64] len _17870 + _17871 + -mem[64] + 32]) + 1
                stor[sha3(_19005 + 1)][] = Array(len=mem[96], data=mem[128 len mem[96]])
                stor2[_19005] = 0
                _20623 = mem[64]
                _20624 = mem[96]
                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                var55001 = floor32(mem[96]) + 128
                mem[mem[64] + floor32(mem[96])] = mem[mem[64] + floor32(mem[96])] and 256^(-(mem[96] % 32) + 32) - 1 or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                emit PlayerJoined(msg.sender, msg.value, sha3(mem[mem[64] len _20623 + _20624 - mem[64]]));
        else:
            _11398 = mem[64]
            mem[0] = 18
            mem[mem[64]] = draw
            idx = mem[64]
            s = 0
            while _11398 + draw.length > idx + 32:
                mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            _15670 = mem[64]
            _15671 = sha3(mem[mem[64] len _11398 + draw.length - mem[64]])
            _15672 = mem[96]
            mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
            require sha3(mem[mem[64] len _15672 + _15670 - mem[64]]) == _15671
            require block.timestamp < betsCloseAt
            _18005 = mem[64]
            _18006 = mem[96]
            mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            var38001 = floor32(mem[96]) + 128
            mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
            mem[_18005 + _18006] = 7
            _19017 = mem[64]
            _19018 = sha3(mem[mem[64] len _18005 + _18006 + -mem[64] + 32])
            mem[0] = msg.sender
            mem[32] = _19018
            stor[_19018][msg.sender] += msg.value
            _19020 = mem[96]
            mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            var41002 = mem[64] + floor32(mem[96])
            var41003 = mem[96] - (32 * Mask(251, 0, mem[96]) >> 5)
            mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
            mem[_19017 + _19020] = 8
            _19974 = mem[64]
            stor[sha3(mem[mem[64] len _19017 + _19020 + -mem[64] + 32])] += msg.value
            mem[0] = msg.sender
            mem[32] = 12
            _19977 = mem[96]
            mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            var44002 = mem[64] + floor32(mem[96])
            var44003 = mem[96] - (32 * Mask(251, 0, mem[96]) >> 5)
            mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
            mem[_19974 + _19977] = sha3(msg.sender, 12)
            if stor[sha3(mem[mem[64] len _19974 + _19977 + -mem[64] + 32])]:
                mem[0] = msg.sender
                mem[32] = 12
                _20583 = mem[64]
                _20584 = mem[96]
                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                var48001 = floor32(mem[96]) + 128
                var48002 = mem[64] + floor32(mem[96])
                var48003 = mem[96] - (32 * Mask(251, 0, mem[96]) >> 5)
                mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                mem[_20583 + _20584] = sha3(address(msg.sender), 12)
                stor[sha3(mem[mem[64] len _20583 + _20584 + -mem[64] + 32])] += msg.value
                _20866 = mem[64]
                _20867 = mem[96]
                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                var52001 = floor32(mem[96]) + 128
                mem[mem[64] + floor32(mem[96])] = mem[mem[64] + floor32(mem[96])] and 256^(-(mem[96] % 32) + 32) - 1 or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                emit PlayerJoined(msg.sender, msg.value, sha3(mem[mem[64] len _20866 + _20867 - mem[64]]));
            else:
                _20585 = mem[64]
                mem[64] = mem[64] + 96
                mem[_20585] = msg.value
                mem[_20585 + 32] = 96
                mem[_20585 + 64] = 0
                mem[0] = msg.sender
                mem[32] = 12
                _20587 = mem[64]
                _20588 = mem[96]
                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                var48001 = floor32(mem[96]) + 128
                var48002 = mem[64] + floor32(mem[96])
                var48003 = mem[96] - (32 * Mask(251, 0, mem[96]) >> 5)
                mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                mem[_20587 + _20588] = sha3(msg.sender, 12)
                _20831 = sha3(mem[mem[64] len _20587 + _20588 + -mem[64] + 32])
                stor[sha3(mem[mem[64] len _20587 + _20588 + -mem[64] + 32])] = msg.value
                mem[0] = sha3(mem[mem[64] len _20587 + _20588 + -mem[64] + 32]) + 1
                stor[sha3(_20831 + 1)][] = Array(len=mem[96], data=mem[128 len mem[96]])
                stor2[_20831] = 0
                _21019 = mem[64]
                _21020 = mem[96]
                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + floor32(mem[96])] = mem[mem[64] + floor32(mem[96])] and 256^(-(mem[96] % 32) + 32) - 1 or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
                emit PlayerJoined(msg.sender, msg.value, sha3(mem[mem[64] len _21019 + _21020 - mem[64]]));
}



}
