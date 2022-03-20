contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;

function _fallback() payable {
    stor1 = 0
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[41 len 1031]
}



// =====================  Runtime code  =====================


array of address participants;
uint256 payoutIdx;
uint256 collectedFees;
address owner;
uint256 stor3;

function participants(uint256 arg1) payable {
    require arg1 < participants.length
    return address(participants[arg1])
}

function owner() payable {
    return address(owner)
}

function collectedFees() payable {
    return collectedFees
}

function payoutIdx() payable {
    return payoutIdx
}

function getNumberOfParticipants() payable {
    return participants.length
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
}

function collectFees(address arg1) payable {
    if msg.sender == address(owner):
        if collectedFees != 0:
            call arg1 with:
               value collectedFees wei
                 gas 0 wei
            collectedFees = 0
}

function _fallback() payable {
    if msg.value < 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value > 10^18:
            call msg.sender with:
               value msg.value - 10^18 wei
                 gas 0 wei
        participants.length++
        if not participants.length <= participants.length + 1:
            idx = participants.length + 1
            while participants.length > idx:
                address(participants[idx]) = 0
                idx = idx + 1
                continue 
        require participants.length < participants.length
        uint256(participants[participants.length]) = msg.sender or Mask(96, 160, uint256(participants[participants.length]))
        emit NewParticipant(participants.length);
        if not participants.length:
            collectedFees += 10^18
        else:
            collectedFees += 10^17
        if participants.length != 0:
            if 0 == participants.length % 3:
                require payoutIdx < participants.length
                call address(participants[stor1]) with:
                   value 75 * 10^13 * 24 * 3600 wei
                     gas 0 wei
                payoutIdx++
}

function sub_d4734f4a(?) payable {
    if msg.value < 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value > 10^18:
            call msg.sender with:
               value msg.value - 10^18 wei
                 gas 0 wei
        participants.length++
        if not participants.length <= participants.length + 1:
            idx = participants.length + 1
            while participants.length > idx:
                address(participants[idx]) = 0
                idx = idx + 1
                continue 
        require participants.length < participants.length
        uint256(participants[participants.length]) = msg.sender or Mask(96, 160, uint256(participants[participants.length]))
        emit NewParticipant(participants.length);
        if not participants.length:
            collectedFees += 10^18
        else:
            collectedFees += 10^17
        if participants.length != 0:
            if 0 == participants.length % 3:
                require payoutIdx < participants.length
                call address(participants[stor1]) with:
                   value 75 * 10^13 * 24 * 3600 wei
                     gas 0 wei
                payoutIdx++
}



}
