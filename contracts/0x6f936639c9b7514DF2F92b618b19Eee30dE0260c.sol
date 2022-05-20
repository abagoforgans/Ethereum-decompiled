contract main {




// =====================  Runtime code  =====================


#
#  - oraclizeSetWinner(uint256 arg1)
#  - __callback(bytes32 arg1, string arg2)
#  - getPlayerData(address arg1)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#
array of uint8 stor2;
address owner;
array of uint256 oraclizeSource;
array of struct WINNER;
array of struct loserOne;
array of struct loserTwo;
array of struct teamOne;
array of struct teamTwo;
array of struct draw;
uint256 betsCloseAt;
uint256 endsAt;
array of uint256 stor99;

function endsAt() {
    return endsAt
}

function draw() {
    return draw[0 len draw.length].field_0
}

function loserOne() {
    return loserOne[0 len loserOne.length].field_0
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
    return teamTwo[0 len teamTwo.length].field_0
}

function loserTwo() {
    return loserTwo[0 len loserTwo.length].field_0
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
    mem[288] = uint256(teamTwo.field_0)
    idx = 288
    s = 0
    while teamTwo.length + 288 > idx + 32:
        mem[idx + 32] = teamTwo[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[teamTwo.length + 288] = 8
    mem[224] = stor[sha3(mem[288 len stor17.length + 32])]
    mem[288] = uint256(draw.field_0)
    idx = 288
    s = 0
    while draw.length + 288 > idx + 32:
        mem[idx + 32] = draw[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[draw.length + 288] = 8
    mem[288 len 96] = mem[192 len 64], stor[sha3(mem[288 len stor18.length + 32])]
    return memory
      from 288
       len 96
}

function withdrawReward() {
    require block.timestamp >= endsAt
    mem[128] = uint256(WINNER.field_0)
    idx = 128
    s = 0
    while WINNER.length + 96 > idx:
        mem[idx + 32] = WINNER[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require WINNER.length != 0
    mem[ceil32(WINNER.length) + 128] = uint256(WINNER.field_0)
    idx = ceil32(WINNER.length) + 128
    s = 0
    while ceil32(WINNER.length) + WINNER.length + 128 > idx + 32:
        mem[idx + 32] = WINNER[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(WINNER.length) + WINNER.length + 128] = 7
    _3673 = sha3(mem[ceil32(WINNER.length) + 128 len WINNER.length + 32])
    mem[ceil32(WINNER.length) + 128] = uint256(WINNER.field_0)
    idx = ceil32(WINNER.length) + 128
    s = 0
    while ceil32(WINNER.length) + WINNER.length + 128 > idx + 32:
        mem[idx + 32] = WINNER[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(WINNER.length) + WINNER.length + 128] = 8
    _6766 = sha3(mem[ceil32(WINNER.length) + 128 len WINNER.length + 32])
    mem[ceil32(WINNER.length) + 128] = uint256(loserTwo.field_0)
    idx = ceil32(WINNER.length) + 128
    s = 0
    while ceil32(WINNER.length) + loserTwo.length + 128 > idx + 32:
        mem[idx + 32] = loserTwo[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(WINNER.length) + loserTwo.length + 128] = 8
    _8950 = sha3(mem[ceil32(WINNER.length) + 128 len loserTwo.length + 32])
    mem[ceil32(WINNER.length) + 128] = uint256(loserOne.field_0)
    idx = ceil32(WINNER.length) + 128
    s = 0
    while ceil32(WINNER.length) + loserOne.length + 128 > idx + 32:
        mem[idx + 32] = loserOne[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(WINNER.length) + loserOne.length + 128] = 8
    _9868 = sha3(mem[ceil32(WINNER.length) + 128 len loserOne.length + 32])
    require stor[_6766]
    call msg.sender with:
       value stor[_3673][msg.sender] + ((stor[sha3(mem[ceil32(stor13.length) + 128 len stor14.length + 32])] * stor[_3673][msg.sender]) + (stor[_8950] * stor[_3673][msg.sender]) / stor[_6766]) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(WINNER.length) + 128] = uint256(WINNER.field_0)
    idx = ceil32(WINNER.length) + 128
    s = 0
    while ceil32(WINNER.length) + WINNER.length + 128 > idx + 32:
        mem[idx + 32] = WINNER[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(WINNER.length) + WINNER.length + 128] = sha3(address(msg.sender), 12)
    stor2[sha3(mem[ceil32(stor13.length) + 128 len stor13.length + 32])] = 1
    mem[ceil32(WINNER.length) + 128] = uint256(WINNER.field_0)
    idx = ceil32(WINNER.length) + 128
    s = 0
    while ceil32(WINNER.length) + WINNER.length + 128 > idx + 32:
        mem[idx + 32] = WINNER[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(WINNER.length) + WINNER.length + 128] = 7
    stor[sha3(mem[ceil32(stor13.length) + 128 len stor13.length + 32])][msg.sender] = 0
    emit RewardWithdrawn(msg.sender, stor[_3673][msg.sender] + ((stor[_9868] * stor[_3673][msg.sender]) + (stor[_8950] * stor[_3673][msg.sender]) / stor[_6766]));
}

function bet(string arg1) payable {
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
        mem[ceil32(arg1.length) + 128] = uint256(teamTwo.field_0)
        idx = ceil32(arg1.length) + 128
        s = 0
        while ceil32(arg1.length) + teamTwo.length + 128 > idx + 32:
            mem[idx + 32] = teamTwo[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _8585 = sha3(mem[ceil32(arg1.length) + 128 len teamTwo.length])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == _8585:
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
            var34002 = ceil32(arg1.length) + floor32(arg1.length) + 128
            var34003 = arg1.length - (32 * Mask(251, 0, arg1.length) >> 5)
            mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + arg1.length + 128] = sha3(msg.sender, 12)
            if stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]:
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                var38001 = floor32(arg1.length) + 128
                mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 128] = sha3(address(msg.sender), 12)
                stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] += msg.value
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                var42001 = floor32(arg1.length) + 128
                mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                emit PlayerJoined(msg.sender, msg.value, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]));
            else:
                mem[ceil32(arg1.length) + 128] = msg.value
                mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                var38001 = floor32(arg1.length) + 128
                mem[ceil32(arg1.length) + floor32(arg1.length) + 224] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 224] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 224] = sha3(msg.sender, 12)
                stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = msg.value
                stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1][] = Array(len=arg1.length, data=arg1[all])
                stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = 0
                mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                var55001 = floor32(arg1.length) + 128
                mem[ceil32(arg1.length) + floor32(arg1.length) + 224] = mem[ceil32(arg1.length) + floor32(arg1.length) + 224] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                emit PlayerJoined(msg.sender, msg.value, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len arg1.length % 32]));
        else:
            mem[ceil32(arg1.length) + 128] = uint256(draw.field_0)
            idx = ceil32(arg1.length) + 128
            s = 0
            while ceil32(arg1.length) + draw.length + 128 > idx + 32:
                mem[idx + 32] = draw[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _15671 = sha3(mem[ceil32(arg1.length) + 128 len draw.length])
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == _15671
            require block.timestamp < betsCloseAt
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            var38001 = floor32(arg1.length) + 128
            mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + arg1.length + 128] = 7
            stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][msg.sender] += msg.value
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            var41002 = ceil32(arg1.length) + floor32(arg1.length) + 128
            var41003 = arg1.length - (32 * Mask(251, 0, arg1.length) >> 5)
            mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + arg1.length + 128] = 8
            stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] += msg.value
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            var44002 = ceil32(arg1.length) + floor32(arg1.length) + 128
            var44003 = arg1.length - (32 * Mask(251, 0, arg1.length) >> 5)
            mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + arg1.length + 128] = sha3(msg.sender, 12)
            if stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]:
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                var48001 = floor32(arg1.length) + 128
                var48002 = ceil32(arg1.length) + floor32(arg1.length) + 128
                var48003 = arg1.length - (32 * Mask(251, 0, arg1.length) >> 5)
                mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 128] = sha3(address(msg.sender), 12)
                stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] += msg.value
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                var52001 = floor32(arg1.length) + 128
                mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                emit PlayerJoined(msg.sender, msg.value, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]));
            else:
                mem[ceil32(arg1.length) + 128] = msg.value
                mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                var48001 = floor32(arg1.length) + 128
                var48002 = ceil32(arg1.length) + floor32(arg1.length) + 224
                var48003 = arg1.length - (32 * Mask(251, 0, arg1.length) >> 5)
                mem[ceil32(arg1.length) + floor32(arg1.length) + 224] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 224] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 224] = sha3(msg.sender, 12)
                stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = msg.value
                stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1][] = Array(len=arg1.length, data=arg1[all])
                stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = 0
                mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + 224] = mem[ceil32(arg1.length) + floor32(arg1.length) + 224] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                emit PlayerJoined(msg.sender, msg.value, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len arg1.length % 32]));
}



}
