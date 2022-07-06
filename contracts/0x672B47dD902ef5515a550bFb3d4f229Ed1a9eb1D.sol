contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 crystalPrice;
address etsContractAddress;

function etsContract() {
    return etsContractAddress
}

function owner() {
    return owner
}

function crystalPrice() {
    return crystalPrice
}

function newOwner() {
    return newOwner
}

function changePrice(uint256 arg1) {
    require msg.sender == owner
    crystalPrice = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function changeEtsAddress(address arg1) {
    require msg.sender == owner
    etsContractAddress = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function _fallback() payable {
    require msg.value >= crystalPrice
    require crystalPrice
    require not msg.value % crystalPrice
    require crystalPrice
    emit crystalsBought((msg.value / crystalPrice), msg.sender, 0);
}

function weiToOwner(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function ERC20ToOwner(address arg1, uint256 arg2, address arg3) {
    require msg.sender == owner
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function queryERC20(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function ERC20ClassicToOwner(address arg1, uint256 arg2, address arg3) {
    require msg.sender == owner
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require etsContractAddress
    require ext_code.size(etsContractAddress)
    call etsContractAddress.0x361eb2a6 with:
         gas gas_remaining wei
        args address(arg1), arg2, address(arg3), Array(len=arg4.length, data=arg4[all]), crystalPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit crystalsBought(ext_call.return_data[0], arg1, ext_call.return_data[64]);
}



}
