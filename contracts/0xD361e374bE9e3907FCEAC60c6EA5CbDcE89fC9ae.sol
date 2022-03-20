contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor3 = 1
    stor4 = 0
    stor5 = msg.sender or Mask(96, 160, stor5)
    return code.data[46 len 923]
}



// =====================  Runtime code  =====================


array of address contestant;
uint256 PT;
uint256 currentTime;
uint256 active;
uint256 current_balance;
address owner;
uint256 stor5;
array of address stor18569430475105882587588266137607568536673111973893317399460219858819262702946;

function active() payable {
    return active
}

function bal() payable {
    return current_balance
}

function PreviousTime() payable {
    return PT
}

function contestant(uint256 arg1) payable {
    require arg1 < contestant.length
    return address(contestant[arg1])
}

function owner() payable {
    return address(owner)
}

function CT() payable {
    return currentTime
}

function CurrentTime() payable {
    return currentTime
}

function PT() payable {
    return PT
}

function Current_balance() payable {
    return current_balance
}

function kill() payable {
    if address(owner) != msg.sender:
    if eth.balance(this.address) > 5:
    active = 0
    selfdestruct(address(owner))
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
}

function enter() payable {
    if 5 * 10^18 != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        contestant.length++
        if not contestant.length <= contestant.length + 1:
            idx = contestant.length + 1
            while contestant.length > idx:
                address(contestant[idx]) = 0
                idx = idx + 1
                continue 
        require contestant.length < contestant.length
        uint256(contestant[contestant.length]) = msg.sender or Mask(96, 160, uint256(contestant[contestant.length]))
        call address(owner) with:
           value msg.value / 10 wei
             gas 0 wei
        current_balance = eth.balance(this.address)
        currentTime = block.timestamp
        if not contestant.length:
            PT = block.timestamp
        else:
            if currentTime - PT > 24 * 3600:
                require contestant.length - 1 < contestant.length
                call stor290D[stor0.length] with:
                   value eth.balance(this.address) - 5 * 10^18 wei
                     gas 0 wei
            PT = currentTime
            current_balance = eth.balance(this.address)
}

function _fallback() payable {
    if 5 * 10^18 != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        contestant.length++
        if not contestant.length <= contestant.length + 1:
            idx = contestant.length + 1
            while contestant.length > idx:
                address(contestant[idx]) = 0
                idx = idx + 1
                continue 
        require contestant.length < contestant.length
        uint256(contestant[contestant.length]) = msg.sender or Mask(96, 160, uint256(contestant[contestant.length]))
        call address(owner) with:
           value msg.value / 10 wei
             gas 0 wei
        current_balance = eth.balance(this.address)
        currentTime = block.timestamp
        if not contestant.length:
            PT = block.timestamp
        else:
            if currentTime - PT > 24 * 3600:
                require contestant.length - 1 < contestant.length
                call stor290D[stor0.length] with:
                   value eth.balance(this.address) - 5 * 10^18 wei
                     gas 0 wei
            PT = currentTime
            current_balance = eth.balance(this.address)
}



}
