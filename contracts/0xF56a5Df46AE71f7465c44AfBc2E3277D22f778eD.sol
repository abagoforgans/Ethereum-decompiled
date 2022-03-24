contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1676]
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

function sub_fe2a6ca8(?) payable {
    codecall 0x9ee10e6430013165ff3901a8b4b6fab06cdd3283.0xfe2a6ca8 with:
         gas gas_remaining - 50 wei
        args Array(len=arg1.length, data=arg1[all]), address(arg2), arg3, address(arg4), address(arg5)
    require callcode.return_code
    call address(callcode.return_data[0]).0x5c19a95c with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    uint256(lastContract[address(msg.sender)])++
    if not uint256(lastContract[address(msg.sender)]) <= uint256(lastContract[address(msg.sender)]) + 1:
        idx = uint256(lastContract[address(msg.sender)]) + 1
        while uint256(lastContract[address(msg.sender)]) > idx:
            uint256(lastContract[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    uint256(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])]) = callcode.return_data[0] or Mask(96, 160, uint256(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])]))
    emit Builded(msg.sender, address(callcode.return_data[0]));
    return address(callcode.return_data[0])
}



}
