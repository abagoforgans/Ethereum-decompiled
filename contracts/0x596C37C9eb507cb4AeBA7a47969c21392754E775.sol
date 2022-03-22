contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2 = code.data[2875 len 32]
    stor3 = 0
    return code.data[74 len 2801]
}



// =====================  Runtime code  =====================


mapping of struct sub_99d26960;
address owner;
uint256 stor1;
address tokenContractAddress;
uint256 index;

function sub_2591ef89(?) payable {
    return sub_99d26960[arg1].field_0
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
    return sub_99d26960[arg1].field_0
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
        args sub_99d26960[arg1].field_0
    require ext_call.success
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
    call sub_99d26960[arg1].field_0.0x35faa416 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    emit 0x3e175a63: arg1, ext_call.return_data[32]
    return ext_call.return_data[0]
}

function createDepositAddress() payable {
    require msg.sender == address(owner)
    if sub_99d26960[stor3].field_0:
        return 0
    create contract with 0 wei
                    code: code.data[1729 len 536], tokenContractAddress
    sub_99d26960[stor3].field_0 = sub_99d26960[stor3].field_160
    index++
    return 1
}

function sub_4e4d1e8b(?) payable {
    require msg.sender == address(owner)
    if sub_99d26960[arg1].field_0:
        return 0
    create contract with 0 wei
                    code: code.data[2265 len 536], tokenContractAddress
    sub_99d26960[arg1].field_0 = create.new_address or Mask(96, 160, sub_99d26960[arg1].field_0)
    return 1
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



}
