contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[36 len 1001]
}



// =====================  Runtime code  =====================


mapping of address institutionByName;
array of uint256 institutionBy;
address stor2;
uint256 stor2;

function getInstitutionByAddress(address arg1) payable {
    return institutionBy[address(arg1)][0 len institutionBy[address(arg1)].length]
}

function getInstitutionByName(string arg1) payable {
    return address(institutionByName[arg1[all]])
}

function _fallback() payable {
  stop
}

function setNewAdmin(address arg1) payable {
    require address(stor2) == msg.sender
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function addInstitution(address arg1, string arg2) payable {
    require msg.sender == address(stor2)
    uint256(institutionByName[arg2[all]]) = arg1 or Mask(96, 160, uint256(institutionByName[arg2[all]]))
    institutionBy[address(arg1)][] = Array(len=arg2.length, data=arg2[all])
}



}
