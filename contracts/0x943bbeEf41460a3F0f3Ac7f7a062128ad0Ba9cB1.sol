contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[22 len 1806]
}



// =====================  Runtime code  =====================


uint256 totalCount;
mapping of struct swapContracts;
mapping of address sellers;

function swapContracts(address arg1) payable {
    return swapContracts[arg1].field_0
}

function totalCount() payable {
    return totalCount
}

function sellers(uint256 arg1) payable {
    return address(sellers[arg1])
}

function _fallback() payable {
  stop
}

function createSwap(uint256 arg1) payable {
    create contract with 0 wei
                    code: code.data[704 len 1102], address(msg.sender), arg1
    swapContracts[address(msg.sender)].field_0 = swapContracts[address(msg.sender)].field_160
    uint256(sellers[stor0]) = msg.sender or Mask(96, 160, uint256(sellers[stor0]))
    totalCount++
    return 1
}

function getSwap(uint256 arg1) payable {
    if 0 == address(sellers[arg1]):
        return address(sellers[arg1]), 0, 0, 0, 0
    call swapContracts[address(stor2[arg1])].field_0.dgxBalance() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call swapContracts[address(stor2[arg1])].field_0.0xe29b9e97 with:
         gas gas_remaining - 25050 wei
    call swapContracts[address(stor2[arg1])].field_0.totalWeiPrice() with:
         gas gas_remaining - 25050 wei
    return address(sellers[arg1]), 
           swapContracts[address(stor2[arg1])].field_0,
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}



}
