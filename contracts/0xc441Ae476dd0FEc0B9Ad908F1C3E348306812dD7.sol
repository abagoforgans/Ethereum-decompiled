contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor4 = 1
    stor5 = 1
    stor3 = msg.sender or Mask(96, 160, stor3)
    return code.data[57 len 689]
}



// =====================  Runtime code  =====================


uint256 fee;
uint256 balance;
uint256 stor2;
address owner;
uint256 stor3;
uint256 active;
uint256 stor5;

function active() payable {
    return active
}

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
    active = 0
    selfdestruct(address(owner))
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
}

function enter() payable {
    if 0 == active:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if 1 == stor5:
            balance = msg.value
            stor5 = 0
        if msg.value < 10^16:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            fee = msg.value / 10
            call address(owner) with:
               value msg.value / 10 wei
                 gas 0 wei
            fee = 0
            stor2 = 8 * balance / 10
            if 9 * msg.value / 10 <= 8 * balance / 10:
                if bool(sha3(gas_remaining) + sha3(block.timestamp)) != 0:
                    balance += 9 * msg.value / 10
                else:
                    call msg.sender with:
                       value 2 * 9 * msg.value / 10 wei
                         gas 0 wei
            else:
                call msg.sender with:
                   value (9 * msg.value / 10) - stor2 wei
                     gas 0 wei
                if bool(sha3(gas_remaining) + sha3(block.timestamp)) != 0:
                    balance += stor2
                else:
                    call msg.sender with:
                       value 2 * stor2 wei
                         gas 0 wei
}

function _fallback() payable {
    if 0 == active:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if 1 == stor5:
            balance = msg.value
            stor5 = 0
        if msg.value < 10^16:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            fee = msg.value / 10
            call address(owner) with:
               value msg.value / 10 wei
                 gas 0 wei
            fee = 0
            stor2 = 8 * balance / 10
            if 9 * msg.value / 10 <= 8 * balance / 10:
                if bool(sha3(gas_remaining) + sha3(block.timestamp)) != 0:
                    balance += 9 * msg.value / 10
                else:
                    call msg.sender with:
                       value 2 * 9 * msg.value / 10 wei
                         gas 0 wei
            else:
                call msg.sender with:
                   value (9 * msg.value / 10) - stor2 wei
                     gas 0 wei
                if bool(sha3(gas_remaining) + sha3(block.timestamp)) != 0:
                    balance += stor2
                else:
                    call msg.sender with:
                       value 2 * stor2 wei
                         gas 0 wei
}



}
