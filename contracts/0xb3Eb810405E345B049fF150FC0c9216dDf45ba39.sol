contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[41 len 466]
}



// =====================  Runtime code  =====================


uint256 fee;
uint256 balance;
address owner;
uint256 stor2;

function owner() payable {
    return address(owner)
}

function balance() payable {
    return balance
}

function fee() payable {
    return fee
}

function kill() payable {
    if address(owner) != msg.sender:
    selfdestruct(address(owner))
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function enter() payable {
    if msg.value < 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        fee = msg.value / 10
        call address(owner) with:
           value msg.value / 10 wei
             gas 0 wei
        fee = 0
        if 0 == bool(block.timestamp):
            call msg.sender with:
                 gas 0 wei
}

function _fallback() payable {
    if msg.value < 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        fee = msg.value / 10
        call address(owner) with:
           value msg.value / 10 wei
             gas 0 wei
        fee = 0
        if 0 == bool(block.timestamp):
            call msg.sender with:
                 gas 0 wei
}



}
