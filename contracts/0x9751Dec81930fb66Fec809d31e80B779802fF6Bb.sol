contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor3 = 1
    stor4 = 0
    stor5 = msg.sender or Mask(96, 160, stor5)
    return code.data[46 len 914]
}



// =====================  Runtime code  =====================


array of address stor0;
uint256 previousTime;
uint256 currentTime;
uint256 active;
uint256 current_balance;
address owner;
uint256 stor5;
uint256 idx;

function active() payable {
    return active
}

function PreviousTime() payable {
    return previousTime
}

function contestant(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor[code.data[882 len 32] + arg1])
}

function idx() payable {
    return idx
}

function owner() payable {
    return address(owner)
}

function CurrentTime() payable {
    return currentTime
}

function Current_balance() payable {
    return current_balance
}

function kill() payable {
    if address(owner) != msg.sender:
    active = 0
    selfdestruct(address(owner))
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
}

function enter() payable {
    if 10^18 != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        idx = stor0.length
        call address(owner) with:
           value msg.value / 10 wei
             gas 0 wei
        currentTime = block.timestamp
        if not idx:
            previousTime = block.timestamp
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = stor0.length + 1
                while stor0.length > idx:
                    stor0[idx] = 0
                    idx = idx + 1
                    continue 
            require idx < stor0.length
            uint256(stor[code.data[882 len 32] + stor6]) = msg.sender or Mask(96, 160, uint256(stor[code.data[882 len 32] + stor6]))
        else:
            if currentTime - previousTime <= 180:
                previousTime = currentTime
            else:
                require idx < stor0.length
                call address(stor[code.data[882 len 32] + stor6]) with:
                   value eth.balance(this.address) wei
                     gas 0 wei
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = stor0.length + 1
                while stor0.length > idx:
                    stor0[idx] = 0
                    idx = idx + 1
                    continue 
            require idx < stor0.length
            uint256(stor[code.data[882 len 32] + stor6]) = msg.sender or Mask(96, 160, uint256(stor[code.data[882 len 32] + stor6]))
            current_balance = eth.balance(this.address)
}

function _fallback() payable {
    if 10^18 != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        idx = stor0.length
        call address(owner) with:
           value msg.value / 10 wei
             gas 0 wei
        currentTime = block.timestamp
        if not idx:
            previousTime = block.timestamp
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = stor0.length + 1
                while stor0.length > idx:
                    stor0[idx] = 0
                    idx = idx + 1
                    continue 
            require idx < stor0.length
            uint256(stor[code.data[882 len 32] + stor6]) = msg.sender or Mask(96, 160, uint256(stor[code.data[882 len 32] + stor6]))
        else:
            if currentTime - previousTime <= 180:
                previousTime = currentTime
            else:
                require idx < stor0.length
                call address(stor[code.data[882 len 32] + stor6]) with:
                   value eth.balance(this.address) wei
                     gas 0 wei
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                idx = stor0.length + 1
                while stor0.length > idx:
                    stor0[idx] = 0
                    idx = idx + 1
                    continue 
            require idx < stor0.length
            uint256(stor[code.data[882 len 32] + stor6]) = msg.sender or Mask(96, 160, uint256(stor[code.data[882 len 32] + stor6]))
            current_balance = eth.balance(this.address)
}



}
