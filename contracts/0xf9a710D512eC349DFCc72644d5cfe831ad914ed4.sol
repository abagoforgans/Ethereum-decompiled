contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 797]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ReceiveEth(msg.value, this.address);
}

function claimToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require eth.balance(msg.sender) >= 10^16
    require arg2 > 0
    call arg1 with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args owner, arg2
    require ext_call.success
    emit Claim(arg2, arg1);
}



}
