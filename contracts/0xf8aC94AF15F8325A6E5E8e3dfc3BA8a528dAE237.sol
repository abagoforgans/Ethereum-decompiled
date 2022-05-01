contract main {


// =======================  Init code  ======================


address stor1;
address stor2;

function _fallback() {
    stor1 = msg.sender
    stor2 = code.data[6941 len 20]
    return code.data[189 len 6740]
}



// =====================  Runtime code  =====================


address exchangerAddress;
address owner;
address wct2Address;

function exchanger() {
    return exchangerAddress
}

function wct2() {
    return wct2Address
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setExchanger(address arg1) {
    require msg.sender == owner
    exchangerAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function retrieveWCT2() {
    require msg.sender == owner
    require ext_code.size(wct2Address)
    call wct2Address.changeController(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function createInvestorWallet(uint256 arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[2294 len 4403], wct2Address, address(this.address), arg1
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(wct2Address)
    call wct2Address.generateTokens(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(create.new_address), arg3
    require ext_call.success
    return address(create.new_address)
}



}
