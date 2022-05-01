contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 564]
}



// =====================  Runtime code  =====================


const weiBalance = eth.balance(this.address)


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claim(address arg1) {
    require owner == msg.sender
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
