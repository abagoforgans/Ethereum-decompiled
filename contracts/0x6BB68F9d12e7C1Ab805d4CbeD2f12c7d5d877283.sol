contract main {


// =======================  Init code  ======================


uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor4 = 1
    stor5 = 0
    stor6 = msg.sender or Mask(96, 160, stor6)
    return code.data[46 len 798]
}



// =====================  Runtime code  =====================


array of address stor0;
uint256 stor1;
uint256 stor2;
uint256 collectedFees;
uint256 active;
uint256 balance;
address owner;
uint256 stor6;

function active() payable {
    return active
}

function contestant(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor[code.data[766 len 32] + arg1])
}

function owner() payable {
    return address(owner)
}

function collectedFees() payable {
    return collectedFees
}

function balance() payable {
    return balance
}

function kill() payable {
    if address(owner) != msg.sender:
    active = 0
    selfdestruct(address(owner))
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor6) = arg1 or Mask(96, 160, uint256(stor6))
}

function enter() payable {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    uint256(stor[code.data[766 len 32] + stor0.length]) = msg.sender or Mask(96, 160, uint256(stor[code.data[766 len 32] + stor0.length]))
    if msg.value != 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        call address(owner) with:
           value msg.value / 10 wei
             gas 0 wei
        balance += 9 * msg.value / 10
        stor2 = block.timestamp
        if block.timestamp - stor1 <= 180:
            stor1 = stor2
        else:
            require stor0.length < stor0.length
            call address(stor[code.data[766 len 32] + stor0.length]) with:
               value balance wei
                 gas 0 wei
            balance = 0
            stor0.length = 0
            if not stor0.length <= 0:
                idx = code.data[766 len 32]
                while code.data[766 len 32] + stor0.length > idx:
                    address(stor[idx]) = 0
                    idx = idx + 1
                    continue 
}

function _fallback() payable {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    uint256(stor[code.data[766 len 32] + stor0.length]) = msg.sender or Mask(96, 160, uint256(stor[code.data[766 len 32] + stor0.length]))
    if msg.value != 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        call address(owner) with:
           value msg.value / 10 wei
             gas 0 wei
        balance += 9 * msg.value / 10
        stor2 = block.timestamp
        if block.timestamp - stor1 <= 180:
            stor1 = stor2
        else:
            require stor0.length < stor0.length
            call address(stor[code.data[766 len 32] + stor0.length]) with:
               value balance wei
                 gas 0 wei
            balance = 0
            stor0.length = 0
            if not stor0.length <= 0:
                idx = code.data[766 len 32]
                while code.data[766 len 32] + stor0.length > idx:
                    address(stor[idx]) = 0
                    idx = idx + 1
                    continue 
}



}
