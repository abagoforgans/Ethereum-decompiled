contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address newOwner;
address yoobaTokenAddress;
uint256 sub_dfacd49d;

function stopped() {
    return bool(stor1)
}

function owner() {
    return owner
}

function yoobaTokenAddress() {
    return yoobaTokenAddress
}

function newOwner() {
    return newOwner
}

function sub_dfacd49d(?) {
    return sub_dfacd49d
}

function stop() {
    require msg.sender == owner
    stor1 = 1
}

function start() {
    require msg.sender == owner
    stor1 = 0
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    sub_dfacd49d = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function withdrawTo(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor1
    require arg1 != this.address
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not stor1
    require msg.value >= 10^17
    require ext_code.size(yoobaTokenAddress)
    call yoobaTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_dfacd49d * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function withdrawERC20TokenTo(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
