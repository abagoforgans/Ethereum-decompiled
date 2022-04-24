contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() {
    stor0 = msg.sender
    require code.data[2671 len 20]
    require code.data[2703 len 20]
    require code.data[2735 len 20]
    require code.data[2767 len 20]
    stor1 = code.data[2671 len 20]
    stor2 = code.data[2703 len 20]
    stor3 = code.data[2735 len 20]
    stor4 = code.data[2767 len 20]
    return code.data[653 len 2006]
}



// =====================  Runtime code  =====================


address owner;
address developmentWalletAddress;
address marketingWalletAddress;
address sub_cc33a772Address;
address earlyBackersWalletAddress;

function earlyBackersWallet() {
    return earlyBackersWalletAddress
}

function marketingWallet() {
    return marketingWalletAddress
}

function owner() {
    return owner
}

function developmentWallet() {
    return developmentWalletAddress
}

function sub_cc33a772(?) {
    return sub_cc33a772Address
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    require msg.value > 0
    if not msg.value:
        call developmentWalletAddress with:
             gas 2300 wei
    else:
        require msg.value
        require 56 * msg.value / msg.value == 56
        call developmentWalletAddress with:
           value 56 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    if not msg.value:
        call marketingWalletAddress with:
             gas 2300 wei
    else:
        require msg.value
        require 12 * msg.value / msg.value == 12
        call marketingWalletAddress with:
           value 12 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    if not msg.value:
        call sub_cc33a772Address with:
             gas 2300 wei
    else:
        require msg.value
        require 15 * msg.value / msg.value == 15
        call sub_cc33a772Address with:
           value 15 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    if not msg.value:
        call earlyBackersWalletAddress with:
             gas 2300 wei
    else:
        require msg.value
        require 17 * msg.value / msg.value == 17
        call earlyBackersWalletAddress with:
           value 17 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    call marketingWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_2df13e0f(?) payable {
    require msg.value > 0
    if not msg.value:
        call developmentWalletAddress with:
             gas 2300 wei
    else:
        require msg.value
        require 56 * msg.value / msg.value == 56
        call developmentWalletAddress with:
           value 56 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    if not msg.value:
        call marketingWalletAddress with:
             gas 2300 wei
    else:
        require msg.value
        require 12 * msg.value / msg.value == 12
        call marketingWalletAddress with:
           value 12 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    if not msg.value:
        call sub_cc33a772Address with:
             gas 2300 wei
    else:
        require msg.value
        require 15 * msg.value / msg.value == 15
        call sub_cc33a772Address with:
           value 15 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    if not msg.value:
        call earlyBackersWalletAddress with:
             gas 2300 wei
    else:
        require msg.value
        require 17 * msg.value / msg.value == 17
        call earlyBackersWalletAddress with:
           value 17 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    call marketingWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
