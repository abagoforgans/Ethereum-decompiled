contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint8 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor4[address(msg.sender)] = 1
    require stor2 < stor1.length
    stor1[stor2] = msg.sender or Mask(96, 160, stor1[stor2])
    stor5[address(msg.sender)] = stor2
    stor3++
    stor2++
    return code.data[182 len 554]
}



// =====================  Runtime code  =====================


address stor0;
array of address stor1;
uint256 stor2;
uint256 stor3;
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
    if not checkMembership[arg1]:
        return 0
    checkMembership[arg1] = 0
    require stor5[address(arg1)] < stor1.length
    address(stor1[stor5[address(arg1)]]) = 0
    stor3--
    return 1
}

function addMember(address arg1) payable {
    if checkMembership[address(msg.sender)] != 1:
        return 0
    if checkMembership[arg1]:
        return 0
    checkMembership[arg1] = 1
    require stor2 < stor1.length
    uint256(stor1[stor2]) = arg1 or Mask(96, 160, uint256(stor1[stor2]))
    stor5[address(arg1)] = stor2
    stor3++
    stor2++
    return 1
}



}
