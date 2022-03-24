contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 2041]
}



// =====================  Runtime code  =====================


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

function create(string arg1, string arg2, uint8 arg3, uint256 arg4) payable {
    codecall 0x63bfd67da503d91ee53d23440987bd053e63231e.0x831e80f2 with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=arg1[all]), arg1.length + 160, arg3 << 248, arg4
    require callcode.return_code
    call address(callcode.return_data[0]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg4
    require ext_call.success
    call address(callcode.return_data[0]).0x5c19a95c with:
         gas gas_remaining - 25050 wei
        args msg.sender
    emit Builded(msg.sender, address(callcode.return_data[0]));
    uint256(lastContract[address(msg.sender)])++
    if not uint256(lastContract[address(msg.sender)]) <= uint256(lastContract[address(msg.sender)]) + 1:
        idx = uint256(lastContract[address(msg.sender)]) + 1
        while uint256(lastContract[address(msg.sender)]) > idx:
            uint256(lastContract[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    uint256(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])]) = callcode.return_data[0] or Mask(96, 160, uint256(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])]))
    if buildingCostWei <= 0:
        return address(callcode.return_data[0])
    if 0 == address(beneficiaryAddress):
        return address(callcode.return_data[0])
    require msg.value >= buildingCostWei
    call msg.sender with:
       value msg.value - buildingCostWei wei
         gas 0 wei
    require ext_call.success
    call address(beneficiaryAddress) with:
       value buildingCostWei wei
         gas 0 wei
    require ext_call.success
    return address(callcode.return_data[0])
}



}
