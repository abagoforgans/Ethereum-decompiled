contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor3 = 1
    stor4 = 0
    stor5 = msg.sender or Mask(96, 160, stor5)
    return code.data[46 len 874]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 active;
uint256 current_balance;
address owner;
uint256 stor5;

function active() payable {
    return active
}

function contestant(uint256 arg1) payable {
    require arg1 < stor0
    return stor[code.data[842 len 32] + arg1]
}

function owner() payable {
    return address(owner)
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
        call address(owner) with:
           value msg.value / 10 wei
             gas 0 wei
        current_balance = eth.balance(this.address)
        stor2 = block.timestamp
        stor1 = block.timestamp
}

function _fallback() payable {
    if 10^18 != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        call address(owner) with:
           value msg.value / 10 wei
             gas 0 wei
        current_balance = eth.balance(this.address)
        stor2 = block.timestamp
        stor1 = block.timestamp
}



}
