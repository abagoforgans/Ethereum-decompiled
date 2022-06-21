contract main {




// =====================  Runtime code  =====================


mapping of uint256 sub_8e2ee045;
uint256 totalSent;
uint256 sub_32538bca;
uint256 sub_7436a896;
address sub_541b84efAddress;
address sub_87c935cfAddress;

function sub_32538bca(?) {
    return sub_32538bca
}

function totalSent() {
    return totalSent
}

function sub_541b84ef(?) {
    return sub_541b84efAddress
}

function sub_7436a896(?) {
    return sub_7436a896
}

function sub_87c935cf(?) {
    return sub_87c935cfAddress
}

function sub_8e2ee045(?) {
    return sub_8e2ee045[arg1]
}

function _fallback() payable {
    emit INCOMING(msg.value, block.timestamp, msg.sender);
    if sub_541b84efAddress != msg.sender:
        sub_8e2ee045[address(msg.sender)] += msg.value
        if sub_87c935cfAddress != msg.sender:
            sub_32538bca += msg.value
}

function PayEIF() {
    totalSent += eth.balance(this.address)
    sub_7436a896 = totalSent - sub_8e2ee045[stor5] - sub_32538bca
    emit OUTGOING(eth.balance(this.address), block.timestamp, msg.sender);
    call sub_541b84efAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}



}
