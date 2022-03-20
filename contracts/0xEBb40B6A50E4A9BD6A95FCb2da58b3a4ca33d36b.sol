contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor3 = 1
    stor4 = 0
    stor5 = msg.sender or Mask(96, 160, stor5)
    return code.data[46 len 1059]
}



// =====================  Runtime code  =====================


array of address stor0;
uint256 PT;
uint256 currentTime;
uint256 active;
uint256 current_balance;
address owner;
uint256 stor5;

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
    require arg1 < stor0.length
    return address(stor[code.data[1027 len 32] + arg1])
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
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = stor0.length + 1
            while stor0.length > idx:
                stor0[idx] = 0
                idx = idx + 1
                continue 
        require stor0.length < stor0.length
        uint256(stor[code.data[1027 len 32] + stor0.length]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1027 len 32] + stor0.length]))
        call address(owner) with:
           value msg.value / 10 wei
             gas 0 wei
        current_balance = eth.balance(this.address)
        currentTime = block.timestamp
        if not stor0.length:
            PT = block.timestamp
        else:
            if bool(sha3(gas_remaining) + sha3(block.timestamp)) != 0:
                if currentTime - PT > 180:
                    require stor0.length - 1 < stor0.length
                    call address(stor[code.data[1027 len 32] + stor0.length - 1]) with:
                       value eth.balance(this.address) - 10^18 wei
                         gas 0 wei
            else:
                if currentTime - PT > 120:
                    require stor0.length - 1 < stor0.length
                    call address(stor[code.data[1027 len 32] + stor0.length - 1]) with:
                       value eth.balance(this.address) - 10^18 wei
                         gas 0 wei
            PT = currentTime
            current_balance = eth.balance(this.address)
}

function _fallback() payable {
    if 10^18 != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = stor0.length + 1
            while stor0.length > idx:
                stor0[idx] = 0
                idx = idx + 1
                continue 
        require stor0.length < stor0.length
        uint256(stor[code.data[1027 len 32] + stor0.length]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1027 len 32] + stor0.length]))
        call address(owner) with:
           value msg.value / 10 wei
             gas 0 wei
        current_balance = eth.balance(this.address)
        currentTime = block.timestamp
        if not stor0.length:
            PT = block.timestamp
        else:
            if bool(sha3(gas_remaining) + sha3(block.timestamp)) != 0:
                if currentTime - PT > 180:
                    require stor0.length - 1 < stor0.length
                    call address(stor[code.data[1027 len 32] + stor0.length - 1]) with:
                       value eth.balance(this.address) - 10^18 wei
                         gas 0 wei
            else:
                if currentTime - PT > 120:
                    require stor0.length - 1 < stor0.length
                    call address(stor[code.data[1027 len 32] + stor0.length - 1]) with:
                       value eth.balance(this.address) - 10^18 wei
                         gas 0 wei
            PT = currentTime
            current_balance = eth.balance(this.address)
}



}
