contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
address stor4;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[1167 len 20]
    stor3 = code.data[1199 len 20]
    stor4 = code.data[1231 len 20]
    return code.data[162 len 993]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
address stor2;
address stor3;
address stor4;

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function pay() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner == msg.sender:
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner
}

function _fallback() payable {
    call stor2 with:
       value msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor3 with:
       value 2 * msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    call stor4 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
}

function sub_972f3d26(?) {
    require owner == msg.sender
    call stor2 with:
       value arg1 / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor3 with:
       value 2 * arg1 / 5 wei
         gas 2300 * is_zero(value) wei
    call stor4 with:
       value arg1 / 2 wei
         gas 2300 * is_zero(value) wei
}



}
