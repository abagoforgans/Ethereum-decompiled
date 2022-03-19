contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    stor3 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[46 len 912]
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
        if not participants.length:
            collectedFees += msg.value
        else:
            collectedFees += 10^16
            balance += 275 * 10^12 * 3600
            if collectedFees + 10^16 >= 133 * 10^16:
                call address(owner) with:
                   value collectedFees wei
                     gas 0 wei
                collectedFees = 0
        s = 0
        while balance > 133 * 10^16:
            require payoutIdx < participants.length
            mem[0] = 0
            call address(participants[stor1]) with:
               value 133 * 10^16 wei
                 gas 0 wei
            balance -= 133 * 10^16
            payoutIdx++
            s = 133 * 10^16
            continue 
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
        if not participants.length:
            collectedFees += msg.value
        else:
            collectedFees += 10^16
            balance += 275 * 10^12 * 3600
            if collectedFees + 10^16 >= 133 * 10^16:
                call address(owner) with:
                   value collectedFees wei
                     gas 0 wei
                collectedFees = 0
        s = 0
        while balance > 133 * 10^16:
            require payoutIdx < participants.length
            mem[0] = 0
            call address(participants[stor1]) with:
               value 133 * 10^16 wei
                 gas 0 wei
            balance -= 133 * 10^16
            payoutIdx++
            s = 133 * 10^16
            continue 
}



}
