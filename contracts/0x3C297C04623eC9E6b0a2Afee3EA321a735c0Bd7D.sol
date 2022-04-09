contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[164 len 1172]
}



// =====================  Runtime code  =====================


address owner;
address creatorAddress;

function creator() {
    return creatorAddress
}

function owner() {
    return owner
}

function transferToCreator() {
    require msg.sender == creatorAddress
    owner = creatorAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function _fallback() payable {
    emit Deposited(address(msg.sender), msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]));
}

function cashOut() {
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}



}
