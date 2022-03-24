contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 2796]
}



// =====================  Runtime code  =====================


#
#  - sub_2fde70d1(?)
#
address owner;
uint256 stor0;
array of address lastContract;
address beneficiaryAddress;
uint256 stor2;
uint256 buildingCostWei;
array of uint256 securityCheckURI;

function beneficiary() payable {
    return address(beneficiaryAddress)
}

function buildingCostWei() payable {
    return buildingCostWei
}

function owner() payable {
    return address(owner)
}

function getLastContract() payable {
    require uint256(lastContract[address(msg.sender)]) - 1 < uint256(lastContract[address(msg.sender)])
    return address(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])])
}

function getContractsOf(address arg1, uint256 arg2) payable {
    require arg2 < uint256(lastContract[arg1])
    return address(lastContract[arg1][arg2])
}

function securityCheckURI() payable {
    return securityCheckURI[0 len securityCheckURI.length]
}

function kill() payable {
    require msg.sender == address(owner)
    selfdestruct(address(owner))
}

function _fallback() payable {
    revert 
}

function setCost(uint256 arg1) payable {
    require msg.sender == address(owner)
    buildingCostWei = arg1
}

function delegate(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function setBeneficiary(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function setSecurityCheck(string arg1) payable {
    require msg.sender == address(owner)
    securityCheckURI[] = Array(len=arg1.length, data=arg1[all])
}



}
