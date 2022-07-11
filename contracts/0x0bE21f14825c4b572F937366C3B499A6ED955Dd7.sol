contract main {




// =====================  Runtime code  =====================


const sub_5e559cfc(?) = 1


address owner;
address cfoAddress;

function cfo() {
    return cfoAddress
}

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setCfo(address arg1) {
    require msg.sender == owner
    cfoAddress = arg1
}

function withdrawETH(address arg1, uint256 arg2) {
    require msg.sender == cfoAddress
    if arg2 > eth.balance(this.address):
        revert with 0, 'Not enough eth to withdraw'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
