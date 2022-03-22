contract main {


// =======================  Init code  ======================


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
    call tokenContractAddress.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] <= 0:
    call tokenContractAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args address(owner), ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
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
    call tokenContractAddress.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOfOwner() payable {
    call tokenContractAddress.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(owner)
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOfAddress(address arg1) payable {
    call tokenContractAddress.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_a1c95e5a(?) payable {
    call tokenContractAddress.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(sub_99d26960[arg1])
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_7edae70f(?) payable {
    require msg.sender == address(owner)
    call arg1.sweep() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    emit 0xe3e6ac9b: arg1, ext_call.return_data[32]
    return ext_call.return_data[0]
}

function sweep(uint256 arg1) payable {
    require msg.sender == address(owner)
    call address(sub_99d26960[arg1]).sweep() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    emit 0x3e175a63: arg1, ext_call.return_data[32]
    return ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) payable {
    require msg.sender == address(owner)
    call tokenContractAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit Withdraw(arg1, arg2);
    return 1
}

function sub_38f8316b(?) payable {
    require msg.sender == address(owner)
    if address(sub_99d26960[arg1]):
        return 0
    create contract with 0 wei
                    code: code.data[3166 len 647], tokenContractAddress
    uint256(sub_99d26960[arg1]) = create.new_address or Mask(96, 160, uint256(sub_99d26960[arg1]))
    emit 0x95c567a1: arg1, address(sub_99d26960[arg1])
    return 1
}

function createDepositAddress() payable {
    require msg.sender == address(owner)
    if address(sub_99d26960[stor3]):
        return 0
    create contract with 0 wei
                    code: code.data[2519 len 647], tokenContractAddress
    uint256(sub_99d26960[stor3]) = create.new_address or Mask(96, 160, uint256(sub_99d26960[stor3]))
    emit 0x95c567a1: index, address(sub_99d26960[stor3])
    index++
    return 1
}

function sub_78b46428(?) payable {
    call tokenContractAddress.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    call tokenContractAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args address(owner), ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    return 1
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[647 len 32]
    return code.data[69 len 578]
}



}
