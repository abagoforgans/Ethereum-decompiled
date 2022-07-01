contract main {




// =====================  Runtime code  =====================


address buyerAddress;
address sellerAddress;
uint256 startDate;
uint256 sub_3c210e3c;
uint256 sub_71eba703;
uint256 dealStatus;

function seller() {
    return sellerAddress
}

function startDate() {
    return startDate
}

function sub_3c210e3c(?) {
    return sub_3c210e3c
}

function buyer() {
    return buyerAddress
}

function sub_71eba703(?) {
    return sub_71eba703
}

function dealStatus() {
    return dealStatus
}

function sub_afc2104e(?) payable {
    if dealStatus != 2:
    if buyerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only buyer can call this function!'
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(msg.sender)
}

function sub_ca8c9edc(?) payable {
    if dealStatus != 2:
    if startDate + sub_3c210e3c >= block.timestamp:
        revert with 0, 'please wait!'
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(msg.sender)
}

function sub_f1d9062b(?) payable {
    require calldata.size - 4 >= 128
    if dealStatus != 2:
    mem[192 len 0] = None
    signer = erecover(sha3(mem[192 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) == buyerAddress:
        if sellerAddress != msg.sender:
            if address(signer) != sellerAddress:
            if buyerAddress != msg.sender:
    else:
        if address(signer) != sellerAddress:
            revert with 0, 'signature wrong!'
        if address(signer) != buyerAddress:
            if address(signer) != sellerAddress:
            if buyerAddress != msg.sender:
        else:
            if sellerAddress != msg.sender:
                if address(signer) != sellerAddress:
                if buyerAddress != msg.sender:
    call buyerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function Pay() payable {
    if msg.value >= sub_71eba703:
        dealStatus = 2
}



}
