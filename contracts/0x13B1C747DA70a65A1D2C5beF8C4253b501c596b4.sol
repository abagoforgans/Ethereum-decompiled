contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[851 len 32]
    return code.data[69 len 782]
}



// =====================  Runtime code  =====================


const sub_651e723c(?) = 1


address owner;
uint256 stor0;
address recipientAddress;
uint256 stor1;

function getRecipient() payable {
    return address(recipientAddress)
}

function getOwner() payable {
    return address(owner)
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function setRecipient(address arg1) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function getAccountBalance(address arg1) payable {
    call address(recipientAddress).0x93423e9c with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    if address(owner) != msg.sender:
        return 0
    call address(recipientAddress).0xbeabacc8 with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return ext_call.return_data[0]
}



}
