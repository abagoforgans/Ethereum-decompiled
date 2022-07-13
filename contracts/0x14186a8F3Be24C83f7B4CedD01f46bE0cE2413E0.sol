contract main {




// =====================  Runtime code  =====================


address owner;
address token_address;
array of uint256 detail;
array of uint256 website;

function detail() {
    return detail[0 len detail.length]
}

function token_address() {
    return token_address
}

function owner() {
    return owner
}

function website() {
    return website[0 len website.length]
}

function _fallback() payable {
  stop
}

function setToken(address arg1) {
    require msg.sender == owner
    token_address = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setDetail(string arg1) {
    require msg.sender == owner
    detail[] = Array(len=arg1.length, data=arg1[all])
}

function setWebsite(string arg1) {
    require msg.sender == owner
    website[] = Array(len=arg1.length, data=arg1[all])
}

function withdrawEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function airDrop(address arg1, uint256 arg2) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AirDropCoin(address(arg1), arg2);
}



}
