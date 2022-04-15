contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    require code.data[2180 len 20]
    stor2 = code.data[2180 len 20]
    return code.data[133 len 2035]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 lockedBalance;
address manaTokenAddress;
address landClaimAddress;

function manaToken() {
    return manaTokenAddress
}

function owner() {
    return owner
}

function landClaim() {
    return landClaimAddress
}

function lockedBalance(address arg1) {
    return lockedBalance[arg1]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setClaimContract(address arg1) {
    require owner == msg.sender
    landClaimAddress = arg1
    emit LandClaimContractSet(arg1);
}

function withdrawTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
}

function lockMana(uint256 arg1) {
    require ext_code.size(manaTokenAddress)
    call manaTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= arg1
    require ext_code.size(manaTokenAddress)
    call manaTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 >= 1000 * 10^18
    lockedBalance[address(msg.sender)] += arg1
    emit LockedBalance(msg.sender, arg1);
}

function claim(bytes arg1) {
    require landClaimAddress
    require lockedBalance[address(msg.sender)] > 0
    require ext_code.size(manaTokenAddress)
    call manaTokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args landClaimAddress, lockedBalance[address(msg.sender)]
    require ext_call.success
    require ext_code.size(landClaimAddress)
    call landClaimAddress.0x66084ded with:
         gas gas_remaining - 710 wei
        args msg.sender, lockedBalance[address(msg.sender)], Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    emit LandClaimExecuted(msg.sender, lockedBalance[address(msg.sender)], Array(len=arg1.length, data=arg1[all]));
}



}
