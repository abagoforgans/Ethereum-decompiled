contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[3789 len 20]
    return code.data[188 len 3589]
}



// =====================  Runtime code  =====================


address owner;
address sub_71b429f2Address;

function sub_71b429f2(?) {
    return sub_71b429f2Address
}

function owner() {
    return owner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_cb9740f8(?) {
    require msg.sender == owner
    require arg1
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require ext_code.size(sub_71b429f2Address)
    call sub_71b429f2Address.tokenMint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^18 * arg2
    require ext_call.success
    emit TokenPurchase(msg.sender, 0, 10^18 * arg2, arg1);
    return 1
}

function finalise() {
    require msg.sender == owner
    require ext_code.size(sub_71b429f2Address)
    call sub_71b429f2Address.finalizeSale() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(sub_71b429f2Address)
        call sub_71b429f2Address.getSaleContractTokensMinted(address rg1) with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        emit FinaliseSale(address(this.address), msg.sender, ext_call.return_data[0]);
}

function deliverPresaleTokens(address[] arg1, uint256[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require msg.sender == owner
        require address(cd[((32 * idx) + arg1 + 36)])
        if cd[((32 * idx) + arg2 + 36)]:
            require cd[((32 * idx) + arg2 + 36)]
            require 10^18 * cd[((32 * idx) + arg2 + 36)] / cd[((32 * idx) + arg2 + 36)] == 10^18
        require ext_code.size(sub_71b429f2Address)
        call sub_71b429f2Address.tokenMint(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(cd[((32 * idx) + arg1 + 36)]), 10^18 * cd[((32 * idx) + arg2 + 36)]
        require ext_call.success
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = 10^18 * cd[((32 * idx) + arg2 + 36)]
        emit TokenPurchase(msg.sender, 0, 10^18 * cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require ext_code.size(sub_71b429f2Address)
    call sub_71b429f2Address.0xf113d9ba with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_71b429f2Address)
    call sub_71b429f2Address.0x17bc8563 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    if msg.value:
        require msg.value
        require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
    require ext_code.size(sub_71b429f2Address)
    call sub_71b429f2Address.buyTokens(address rg1, uint256 rg2) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender, msg.value * ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0]:
        emit TokenPurchase(address(this.address), msg.value, msg.value * ext_call.return_data[0], msg.sender);
    else:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x40902bc6: address(this.address), msg.value, msg.sender
}



}
