contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2269 len 20]
    return code.data[188 len 2069]
}



// =====================  Runtime code  =====================


address owner;
address etherdeltaAddress;

function etherdelta() {
    return etherdeltaAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function newEtherdelta(address arg1) {
    require msg.sender == owner
    etherdeltaAddress = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOfEther(address arg1) {
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0, arg1
    require ext_call.success
    return eth.balance(arg1), ext_call.return_data[0]
}

function balanceOfToken(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[0]
}



}
