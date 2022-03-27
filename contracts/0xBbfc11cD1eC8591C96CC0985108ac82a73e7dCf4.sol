contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
mapping of uint8 stor2;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor2[address(stor0)] = 1
    return code.data[164 len 1639]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
mapping of address orThrow;
mapping of uint8 stor2;

function get(string arg1) {
    require arg1.length
    return address(orThrow[arg1[all]])
}

function getOrThrow(string arg1) {
    require arg1.length
    require address(orThrow[arg1[all]])
    return address(orThrow[arg1[all]])
}

function _fallback() payable {
    revert 
}

function addMaster(address arg1) {
    require msg.sender == address(stor0)
    require arg1
    stor2[address(arg1)] = 1
}

function removeMaster(address arg1) {
    require msg.sender == address(stor0)
    require arg1
    stor2[address(arg1)] = 0
}

function setOwner(address arg1) {
    require msg.sender == address(stor0)
    require arg1
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function set(string arg1, address arg2) {
    require stor2[address(msg.sender)]
    require arg1.length
    uint256(orThrow[arg1[all]]) = arg2 or Mask(96, 160, uint256(orThrow[arg1[all]]))
}



}
