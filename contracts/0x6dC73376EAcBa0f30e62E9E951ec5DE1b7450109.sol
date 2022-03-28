contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor4;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.value
    stor4 = 0
    return code.data[63 len 1184]
}



// =====================  Runtime code  =====================


address founderAddress;
uint256 reward;
address winnerAddress;
array of struct participants;
uint8 stor4;

function reward() {
    return reward
}

function participants(uint256 arg1) {
    require arg1 < participants.length
    return participants[arg1].field_0
}

function founder() {
    return founderAddress
}

function winner() {
    return winnerAddress
}

function sub_2e252e6a(?) {
    require founderAddress == msg.sender
    selfdestruct(founderAddress)
}

function _fallback() payable {
    revert 
}

function rewardWinner() {
    require founderAddress == msg.sender
    require not stor4
    require participants.length
    require sha3(block.number, block.timestamp, block.coinbase, block.difficulty) % participants.length < participants.length
    stor4 = 1
    call participants[sha3(block.number, block.timestamp, block.coinbase, block.difficulty) % participants.length].field_0 with:
       value reward wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Rewarded(participants[sha3(block.number, block.timestamp, block.coinbase, block.difficulty) % participants.length].field_0, reward);
}

function registerParticipant(address arg1) {
    require founderAddress == msg.sender
    if participants.length:
        mem[128] = address(participants.field_0)
        idx = 128
        s = 0
        while (32 * participants.length) + 96 > idx:
            mem[idx + 32] = participants[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < participants.length:
        require idx < participants.length
        require arg1 != mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    participants.length++
    if not participants.length <= participants.length + 1:
        idx = participants.length + 1
        while participants.length > idx:
            participants[idx].field_0 = 0
            idx = idx + 1
            continue 
    participants[participants.length].field_0 = arg1
}



}
