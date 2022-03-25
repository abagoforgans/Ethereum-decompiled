contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor3[stor3.length] = this.address or Mask(96, 160, stor3[stor3.length])
    return code.data[129 len 723]
}



// =====================  Runtime code  =====================


address masterAccount;
uint256 stor0;
mapping of address contract;
mapping of uint256 sub_874c3473;
array of address contracts;

function contractAddress(uint256 arg1) payable {
    return address(contract[arg1])
}

function contracts(uint256 arg1) payable {
    require arg1 < contracts.length
    return address(contracts[arg1])
}

function sub_874c3473(?) payable {
    return sub_874c3473[arg1]
}

function masterAccount() payable {
    return address(masterAccount)
}

function _fallback() payable {
  stop
}

function sub_5db4380d(?) payable {
    require address(masterAccount) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_028f4e47(?) payable {
    require arg1 != 0
    if address(masterAccount) != msg.sender:
        require msg.sender == address(contract[arg1])
    require not sub_874c3473[address(arg2)]
    sub_874c3473[address(arg2)] = arg1
    uint256(contract[arg1]) = arg2 or Mask(96, 160, uint256(contract[arg1]))
    if arg2 != 0:
        sub_874c3473[address(arg2)] = arg1
    emit 0xdc69b570: address(contract[arg1]), arg2, arg1
    contracts.length++
    if not contracts.length <= contracts.length + 1:
        idx = contracts.length + 1
        while contracts.length > idx:
            uint256(contracts[idx]) = 0
            idx = idx + 1
            continue 
    uint256(contracts[contracts.length]) = arg2 or Mask(96, 160, uint256(contracts[contracts.length]))
}



}
