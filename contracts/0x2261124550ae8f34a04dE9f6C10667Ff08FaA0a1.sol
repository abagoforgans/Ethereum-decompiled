contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
uint256 stor5;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor0[address(msg.sender)] = code.data[2622 len 32]
    stor5 += code.data[2622 len 32]
    return code.data[162 len 2460]
}



// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)


mapping of uint256 myBalance;
address getOwner;
address getOperatorAddress;
uint256 stor2;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint256 sub_e7bb31f7;
uint256 stor6;

function GetOwner() payable {
    return getOwner
}

function getMyBalance() payable {
    return myBalance[address(msg.sender)]
}

function coinBalanceOf(address arg1) payable {
    return myBalance[arg1]
}

function GetOperator() payable {
    return address(getOperatorAddress)
}

function sub_e7bb31f7(?) payable {
    return sub_e7bb31f7
}

function sub_b51496c7(?) payable {
    selfdestruct(getOwner)
}

function _fallback() payable {
  stop
}

function sub_214b994b(?) payable {
  stop
}

function sub_5191c436(?) payable {
    return (msg.sender == getOwner)
}

function sub_d80c3fca(?) payable {
    return (msg.sender == address(getOperatorAddress))
}

function sub_820f78cd(?) payable {
    if msg.sender == getOwner:
        uint8(stor4.field_168) = 1
    return uint8(stor4.field_168)
}

function sub_b1d05d3a(?) payable {
    if msg.sender == address(getOperatorAddress):
        uint8(stor4.field_160) = 1
    return uint8(stor4.field_160)
}

function sub_cc1e0621(?) payable {
    if uint8(stor4.field_160):
        if uint8(stor4.field_168):
            myBalance[stor1] += arg1
            sub_e7bb31f7 += arg1
}

function SetOperator(address arg1) payable {
    if msg.sender == arg1:
        return 0
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    return address(getOperatorAddress)
}

function sub_2ba2d69a(?) payable {
    if myBalance[address(msg.sender)] < arg2 + stor6:
        return 0
    myBalance[address(msg.sender)] -= arg2
    myBalance[address(arg1)] += arg2
    emit CoinTransfer(msg.sender, address(arg1), arg2);
    return 1
}

function sub_9e383b46(?) payable {
    if msg.sender == address(getOperatorAddress):
        uint8(stor4.field_160) = 0
        uint8(stor4.field_168) = 0
    else:
        if msg.sender == getOwner:
            uint8(stor4.field_160) = 0
            uint8(stor4.field_168) = 0
}



}
