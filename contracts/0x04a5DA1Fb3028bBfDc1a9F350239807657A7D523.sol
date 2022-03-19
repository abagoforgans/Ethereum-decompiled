contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[46 len 823]
}



// =====================  Runtime code  =====================


array of address participants;
uint256 payoutIdx;
uint256 collectedFees;
uint256 balance;
address owner;
uint256 stor4;

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

function balance() payable {
    return balance
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function collectFees() payable {
    if msg.sender == address(owner):
        if collectedFees != 0:
            call address(owner) with:
               value collectedFees wei
                 gas 0 wei
            collectedFees = 0
}

function enter() payable {
    if 10^18 != msg.value:
        call msg.sender with:
           value msg.value wei
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
    if not participants.length:
        collectedFees += msg.value
    else:
        if collectedFees >= 0:
            call address(owner) with:
               value collectedFees wei
                 gas 0 wei
            collectedFees = 0
    # nil
}

function _fallback() payable {
    if 10^18 != msg.value:
        call msg.sender with:
           value msg.value wei
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
    if not participants.length:
        collectedFees += msg.value
    else:
        if collectedFees >= 0:
            call address(owner) with:
               value collectedFees wei
                 gas 0 wei
            collectedFees = 0
    # nil
}



}
