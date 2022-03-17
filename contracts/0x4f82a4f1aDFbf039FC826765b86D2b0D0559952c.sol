contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[address(msg.sender)] = code.data[921 len 32]
    return code.data[80 len 841]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint256 balanceOf;

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function owner() payable {
    return address(owner)
}

function tokens(address arg1) payable {
    return balanceOf[arg1]
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function redeem(uint256 arg1, string arg2) payable {
    if balanceOf[address(msg.sender)] < arg1:
        return 0
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[address(stor0)] += arg1
    if 0 == balanceOf[address(msg.sender)]:
        balanceOf[address(msg.sender)] = 0
    emit Redeem(arg1, Array(len=arg2.length, data=arg2[all]), msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    if address(owner) != msg.sender:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    if 0 == balanceOf[address(msg.sender)]:
        balanceOf[address(msg.sender)] = 0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
