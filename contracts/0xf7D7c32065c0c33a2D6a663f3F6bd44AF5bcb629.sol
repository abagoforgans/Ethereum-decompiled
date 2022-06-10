contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
address h1Address;
address h2Address;
address sub_b9ccf219Address;

function name() {
    return name[0 len name.length]
}

function h1() {
    return h1Address
}

function h2() {
    return h2Address
}

function owner() {
    return owner
}

function sub_b9ccf219(?) {
    return sub_b9ccf219Address
}

function kill(address arg1) {
    require msg.sender == sub_b9ccf219Address
    selfdestruct(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawAll(address arg1) {
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < 10^9:
        revert with 0, 'not a valid currency'
    if msg.value > 100000 * 10^18:
        revert with 0, 'no'
    call h1Address with:
       value msg.value / 3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call h2Address with:
       value msg.value / 3 wei
         gas 2300 * is_zero(value) wei
    call sub_b9ccf219Address with:
       value msg.value - (2 * msg.value / 3) wei
         gas 2300 * is_zero(value) wei
}



}
