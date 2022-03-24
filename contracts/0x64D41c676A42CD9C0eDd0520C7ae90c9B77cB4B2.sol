contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor7;

function _fallback() payable {
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor7 = code.data[932 len 32]
    stor3 = 0
    return code.data[65 len 867]
}



// =====================  Runtime code  =====================


mapping of uint256 versions;
uint256 latestVersion;
address stor4;
uint256 stor4;
mapping of address buyers;
address stor6;
uint256 stor6;
uint256 purchasePrice;

function versions(address arg1) payable {
    return versions[arg1]
}

function buyers(address arg1) payable {
    return address(buyers[arg1])
}

function latestVersion() payable {
    return latestVersion
}

function purchasePrice() payable {
    return purchasePrice
}

function shutdown() payable {
    require address(stor4) == msg.sender
    selfdestruct(address(stor4))
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require address(stor4) == msg.sender
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function sub_53d52a5f(?) payable {
    require address(stor4) == msg.sender
    uint256(stor6) = arg1 or Mask(96, 160, uint256(stor6))
    latestVersion++
}

function withdraw() payable {
    require address(stor4) == msg.sender
    call address(stor4) with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}

function sub_777a41ca(?) payable {
    require address(stor6) != 0
    if 0 == address(buyers[address(msg.sender)]):
        if address(stor4) != msg.sender:
            require msg.value >= purchasePrice
    call address(stor6).0x656f9fe3 with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] != 0
    uint256(buyers[address(msg.sender)]) = ext_call.return_data[0] or Mask(96, 160, uint256(buyers[address(msg.sender)]))
    versions[address(msg.sender)] = latestVersion
    return address(ext_call.return_data[0])
}



}
