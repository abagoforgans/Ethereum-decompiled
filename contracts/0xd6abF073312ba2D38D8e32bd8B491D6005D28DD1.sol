contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2 = code.data[2448 len 32]
    stor3 = 0
    return code.data[74 len 2374]
}



// =====================  Runtime code  =====================


mapping of address sub_99d26960;
address owner;
uint256 stor1;
address tokenContractAddress;
uint256 index;

function sub_2591ef89(?) payable {
    return address(sub_99d26960[arg1])
}

function index() payable {
    return index
}

function tokenContract() payable {
    return tokenContractAddress
}

function owner() payable {
    return address(owner)
}

function sub_99d26960(?) payable {
    return address(sub_99d26960[arg1])
}

function kill() payable {
    if address(owner) != msg.sender:
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function balance() payable {
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) payable {
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(uint256 arg1) payable {
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args address(sub_99d26960[arg1])
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_518532cc(?) payable {
    call this.address.0x35faa416 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    emit 0xe3e6ac9b: this.address, ext_call.return_data[32]
    return ext_call.return_data[0]
}

function sweep(address arg1) payable {
    require msg.sender == address(owner)
    call arg1.0x35faa416 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    emit 0xe3e6ac9b: arg1, ext_call.return_data[32]
    return ext_call.return_data[0]
}

function sweep(uint256 arg1) payable {
    require msg.sender == address(owner)
    call address(sub_99d26960[arg1]).0x35faa416 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    emit 0x3e175a63: arg1, ext_call.return_data[32]
    return ext_call.return_data[0]
}

function withdraw(uint256 arg1, address arg2, uint256 arg3) payable {
    require msg.sender == address(owner)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(arg2), arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit Withdraw(arg1, arg2, arg3);
    return 1
}

function createDepositAddress() payable {
    require msg.sender == address(owner)
    if address(sub_99d26960[stor3]):
        return 0
    create contract with 0 wei
                    code: code.data[1838 len 536], tokenContractAddress
    uint256(sub_99d26960[stor3]) = create.new_address or Mask(96, 160, uint256(sub_99d26960[stor3]))
    emit 0x95c567a1: index, address(sub_99d26960[stor3])
    index++
    return 1
}



}
