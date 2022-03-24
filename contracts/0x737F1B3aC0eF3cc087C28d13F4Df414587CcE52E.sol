contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = code.data[307 len 32]
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[68 len 239]
}



// =====================  Runtime code  =====================


address currentVersionAddress;
uint256 stor0;
address owner;

function owner() payable {
    return owner
}

function currentVersion() payable {
    return address(currentVersionAddress)
}

function update(address arg1) payable {
    require owner == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function _fallback() payable {
    delegate address(currentVersionAddress) with:
       funct call.data[0 len 4]
         gas gas_remaining - 50 wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    require delegate.return_data[0]
}



}
