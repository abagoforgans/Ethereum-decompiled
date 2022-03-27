contract main {


// =======================  Init code  ======================


address stor0;
mapping of struct stor1;
mapping of uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1['jens'].field_0 = 0
    stor1['jens'].field_8 = 0x702e85a4e0d6f7d0197601b73967517da8a8a8
    stor1['nikolas'].field_0 = 0x168101c3df0eb1aeb96b064a0adcabc10c2d63e0
    stor1['kurt'].field_0 = 0xef3c6bca985f9155e0724df7759a78df65fad6fb
    stor1['davino'].field_0 = 0x1f2d54b5bfc5d3beedb7477d2a67499838e84ad3
    stor1['valentijn'].field_0 = 0x356bab1240078afe7fe2872a5c4b52a97b5c9501
    stor2['jens'] = 275
    stor2['nikolas'] = 275
    stor2['kurt'] = 150
    stor2['davino'] = 150
    stor2['valentijn'] = 150
    return code.data[1086 len 1150]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address creatorAddress;
mapping of address stor1;
mapping of uint256 stor2;

function getCreator() {
    return creatorAddress
}

function kill() {
    if creatorAddress != msg.sender:
    selfdestruct(creatorAddress)
}

function _fallback() payable {
  stop
}

function refund() {
    if creatorAddress != msg.sender:
        return 0
    call creatorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function share() {
    if creatorAddress != msg.sender:
        return 0
    call stor1['jens'] with:
       value eth.balance(this.address) * stor2['jens'] / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    call stor1['nikolas'] with:
       value eth.balance(this.address) * stor2['nikolas'] / 1000 wei
         gas 2300 * is_zero(value) wei
    call stor1['kurt'] with:
       value eth.balance(this.address) * stor2['kurt'] / 1000 wei
         gas 2300 * is_zero(value) wei
    call stor1['davino'] with:
       value eth.balance(this.address) * stor2['davino'] / 1000 wei
         gas 2300 * is_zero(value) wei
    call stor1['valentijn'] with:
       value eth.balance(this.address) * stor2['valentijn'] / 1000 wei
         gas 2300 * is_zero(value) wei
    return 1
}



}
