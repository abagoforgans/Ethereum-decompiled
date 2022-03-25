contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 744]
}



// =====================  Runtime code  =====================


address masterAccount;
uint256 stor0;
mapping of address contracts;
mapping of uint256 approved;

function masterAccount() {
    return address(masterAccount)
}

function approved(address arg1) {
    return approved[arg1]
}

function contracts(bytes32 arg1) {
    return address(contracts[arg1])
}

function _fallback() payable {
    revert 
}

function sub_5db4380d(?) {
    require msg.sender == address(masterAccount)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_6b574199(?) {
    if address(masterAccount) != msg.sender:
        require msg.sender == address(contracts[arg1])
    if address(contracts[arg1]) != 0:
        approved[address(stor1[arg1])]--
    uint256(contracts[arg1]) = arg2 or Mask(96, 160, uint256(contracts[arg1]))
    if address(arg2):
        approved[address(arg2)]++
}



}
