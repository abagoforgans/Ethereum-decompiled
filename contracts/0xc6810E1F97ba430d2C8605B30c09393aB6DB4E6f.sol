contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
mapping of uint8 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor4[address(msg.sender)] = 1
    stor3[stor1] = msg.sender or Mask(96, 160, stor3[stor1])
    stor5[address(msg.sender)] = stor1
    stor2++
    stor1++
    return code.data[314 len 1182]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
mapping of address stor3;
mapping of uint8 checkMembership;
mapping of uint256 stor5;

function checkMembership(address arg1) payable {
    return checkMembership[address(arg1)]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function removeMember(address arg1) payable {
    if checkMembership[address(msg.sender)] != 1:
        return 0
    if not checkMembership[address(arg1)]:
        return 0
    checkMembership[address(arg1)] = 0
    address(stor3[stor5[address(arg1)]]) = 0
    stor2--
    return 1
}

function addMember(address arg1) payable {
    if checkMembership[address(msg.sender)] != 1:
        return 0
    if checkMembership[address(arg1)]:
        return 0
    checkMembership[address(arg1)] = 1
    uint256(stor3[stor1]) = arg1 or Mask(96, 160, uint256(stor3[stor1]))
    stor5[address(arg1)] = stor1
    stor2++
    stor1++
    return 1
}



}
