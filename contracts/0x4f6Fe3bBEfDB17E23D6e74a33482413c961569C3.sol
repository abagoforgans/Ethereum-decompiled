contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;

function _fallback() {
    stor0 = msg.sender
    stor4 = 0
    stor1 = 10^17
    stor2 = 5 * 10^16
    stor3 = 0
    return code.data[111 len 4732]
}



// =====================  Runtime code  =====================


address owner;
uint256 potTarget;
uint256 stake;
uint256 fee;
uint8 state;
array of address participants;
uint256 ownerRandomHash;
uint256 minerRandomNumber;
uint256 ownerRandomNumber;
uint256 participationEndTimestamp;
uint256 pot;
address winnerAddress;
mapping of uint256 funds;
uint256 fees;
uint256 lastRefundedIndex;

function ownerRandomHash() {
    return ownerRandomHash
}

function participants(uint256 arg1) {
    require arg1 < participants.length
    return address(participants[arg1])
}

function stake() {
    return stake
}

function pot() {
    return pot
}

function ownerRandomNumber() {
    return ownerRandomNumber
}

function owner() {
    return owner
}

function lastRefundedIndex() {
    return lastRefundedIndex
}

function potTarget() {
    return potTarget
}

function minerRandomNumber() {
    return minerRandomNumber
}

function fees() {
    return fees
}

function state() {
    require state <= 3
    return state
}

function fee() {
    return fee
}

function winner() {
    return winnerAddress
}

function funds(address arg1) {
    return funds[arg1]
}

function participationEndTimestamp() {
    return participationEndTimestamp
}

function _fallback() payable {
    revert
}

function setContractOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    emit ContractOwnershipTransferred(arg1);
}

function withdraw() {
    funds[address(msg.sender)] = 0
    call msg.sender with:
       value funds[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawFees() {
    require owner == msg.sender
    require state <= 3
    require not state
    fees = 0
    call msg.sender with:
       value fees wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setParams(uint256 arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require state <= 3
    require not state
    require arg3 < arg2
    potTarget = arg1
    stake = arg2
    fee = arg3
    emit ParametersChanged(arg1, arg2, arg3);
}

function start(bytes32 arg1) {
    require owner == msg.sender
    require state <= 3
    require not state
    ownerRandomHash = arg1
    minerRandomNumber = 0
    ownerRandomNumber = 0
    participationEndTimestamp = 0
    winnerAddress = 0
    pot = 0
    lastRefundedIndex = 0
    participants.length = 0
    idx = 0
    while participants.length > idx:
        uint256(participants[idx]) = 0
        idx = idx + 1
        continue 
    state = 1
    require state <= 3
    emit StateChange(state);
}

function cancel() {
    require state <= 3
    if owner != msg.sender:
        require state == 2
        require participationEndTimestamp
        require block.timestamp > participationEndTimestamp + (24 * 3600)
    else:
        if state != 1:
            require state <= 3
            require state == 2
    emit Cancelled(msg.sender);
    if participants.length <= 0:
        state = 0
    else:
        require 0 < participants.length
        funds[address(stor5)] += stake
        fees -= fee
        lastRefundedIndex = 0
        emit Refund(address(participants), stake);
        if participants.length != 1:
            state = 3
        else:
            state = 0
    require state <= 3
    emit StateChange(state);
}

function participate() payable {
    require state <= 3
    require state == 1
    require msg.value >= stake
    participants.length++
    if not participants.length <= participants.length + 1:
        idx = participants.length + 1
        while participants.length > idx:
            uint256(participants[idx]) = 0
            idx = idx + 1
            continue 
    address(participants[participants.length]) = msg.sender
    pot = stake - fee + pot
    fees += fee
    emit NewParticipant(address(msg.sender), msg.value, stake - fee, msg.value - stake);
    if pot >= potTarget:
        participationEndTimestamp = block.timestamp
        minerRandomNumber = block.timestamp
        emit MinerRandomNumber(block.timestamp);
        state = 2
        require state <= 3
        emit StateChange(state);
    if msg.value > stake:
        call msg.sender with:
           value msg.value - stake wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function refund(uint256 arg1) {
    require state <= 3
    require state == 3
    require participants.length > 0
    if arg1 + lastRefundedIndex > participants.length - 1:
        idx = lastRefundedIndex + 1
        while idx <= participants.length - 1:
            require idx < participants.length
            mem[32] = 12
            funds[address(stor5[idx])] += stake
            fees -= fee
            mem[0] = 5
            mem[96] = address(participants[idx])
            mem[128] = stake
            emit Refund(address(participants[idx]), stake);
            idx = idx + 1
            continue 
        lastRefundedIndex = participants.length - 1
        state = 0
        require state <= 3
        emit StateChange(state);
    else:
        idx = lastRefundedIndex + 1
        while idx <= arg1 + lastRefundedIndex:
            require idx < participants.length
            mem[32] = 12
            funds[address(stor5[idx])] += stake
            fees -= fee
            mem[0] = 5
            mem[96] = address(participants[idx])
            mem[128] = stake
            emit Refund(address(participants[idx]), stake);
            idx = idx + 1
            continue 
        lastRefundedIndex += arg1
        if arg1 + lastRefundedIndex >= participants.length - 1:
            state = 0
            require state <= 3
            emit StateChange(state);
}

function chooseWinner(string arg1, string arg2) {
    require owner == msg.sender
    require state <= 3
    require state == 2
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96 len arg2.length] = arg2[all]
    require sha3(mem[96 len arg1.length + arg2.length]) == ownerRandomHash
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    require 0 < arg2.length
    if Mask(8, 248, mem[128]) >= '0':
        require 0 < arg2.length
        require Mask(8, 248, mem[128]) > '9'
    mem[ceil32(arg2.length) + 192 len arg1.length] = arg1[all]
    mem[ceil32(arg2.length) + ceil32(arg1.length) + 192] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + ceil32(arg2.length) + 192]) >= '0':
            if Mask(8, 248, mem[idx + ceil32(arg2.length) + 192]) <= '9':
                require idx < arg1.length
                idx = idx + 1
                s = (10 * s) + mem[idx + ceil32(arg2.length) + 192 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    ownerRandomNumber = s
    emit OwnerRandomNumber(s);
    emit RandomNumber((ownerRandomNumber xor minerRandomNumber));
    require participants.length
    emit WinnerIndex((ownerRandomNumber xor minerRandomNumber % participants.length));
    require ownerRandomNumber xor minerRandomNumber % participants.length < participants.length
    winnerAddress = address(participants[stor8 xor stor7 % participants.length])
    funds[address(stor5[stor8 xor stor7 % stor5.length])] += pot
    emit Winner(winnerAddress, pot);
    state = 0
    require state <= 3
    emit StateChange(state);
}



}
