contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
mapping of uint256 stor2;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor2[address(stor0)] = 0
    return code.data[150 len 2155]
}



// =====================  Runtime code  =====================


address whoIsOwner;
uint256 stor0;
array of uint256 myBalance;
mapping of uint256 stor2;

function getMyBalance() payable {
    return myBalance[address(msg.sender)]
}

function whoIsOwner() payable {
    return address(whoIsOwner)
}

function getBalance(address arg1) payable {
    return myBalance[address(arg1)]
}

function withdraw() payable {
    call msg.sender with:
       value myBalance[address(msg.sender)] wei
         gas 300000 wei
    myBalance[address(msg.sender)] = 0
}

function main() payable {
    stor2[address(stor0)] += msg.value / 10
    myBalance[address(msg.sender)] = myBalance[address(msg.sender)] + msg.value - (msg.value / 10)
}

function _fallback() payable {
    stor2[address(stor0)] += msg.value / 10
    myBalance[address(msg.sender)] = myBalance[address(msg.sender)] + msg.value - (msg.value / 10)
}

function changeOwner(address arg1) payable {
    if address(whoIsOwner) != msg.sender:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function setNickname(string arg1) payable {
    myBalance[address(msg.sender)][1][] = Array(len=arg1.length, data=arg1[all])
    emit 0x543f4e70: msg.sender, Array(len=arg1.length, data=arg1[all])
    return Array(len=arg1.length, data=arg1[all])
}

function balanceCheck() payable {
    call address(whoIsOwner) with:
       value stor2[address(stor0)] wei
         gas 0 wei
    stor2[address(stor0)] = 0
    call msg.sender with:
       value myBalance[address(msg.sender)] wei
         gas 300000 wei
}



}
