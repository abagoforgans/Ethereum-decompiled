contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[56 len 3689]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function _fallback() {
    revert 
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ownerWithdrawERC20Token(address arg1, uint256 arg2) {
    require owner == msg.sender
    emit OwnerWithdrewERC20Token(address(arg1), arg2);
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function createSaleContract(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    require arg2 >= 0
    require arg3 > 0
    create contract with 0 wei
                    code: code.data[1535 len 2154], address(arg1), arg2, arg3, arg4
    require create.new_address
    stor1[address(create.new_address)] = 1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    emit TradeListing(address(msg.sender), address(create.new_address), address(arg1), arg2, arg3, arg4);
    return address(create.new_address)
}

function verify(address arg1) {
    if not stor1[address(arg1)]:
        return bool(stor1[address(arg1)]), 0, 0, 0, 0, 0
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.asset() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.sellPrice() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.units() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.sellsTokens() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return bool(stor1[address(arg1)]), 
           0,
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           bool(ext_call.return_data[0])
}



}
