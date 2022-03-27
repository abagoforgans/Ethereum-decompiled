contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of struct stor2;
mapping of uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = 5 * 10^18
    stor2['jens'].field_0 = 0
    stor2['jens'].field_8 = 0x702e85a4e0d6f7d0197601b73967517da8a8a8
    stor2['nikolas'].field_0 = 0x168101c3df0eb1aeb96b064a0adcabc10c2d63e0
    stor2['kurt'].field_0 = 0xef3c6bca985f9155e0724df7759a78df65fad6fb
    stor2['davino'].field_0 = 0x1f2d54b5bfc5d3beedb7477d2a67499838e84ad3
    stor2['valentijn'].field_0 = 0x356bab1240078afe7fe2872a5c4b52a97b5c9501
    stor3['jens'] = 275
    stor3['nikolas'] = 275
    stor3['kurt'] = 150
    stor3['davino'] = 150
    stor3['valentijn'] = 150
    return code.data[1101 len 1282]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address creatorAddress;
uint256 sub_d49710cb;
mapping of address stor2;
mapping of uint256 stor3;

function getCreator() {
    return creatorAddress
}

function sub_d49710cb(?) {
    return sub_d49710cb
}

function kill() {
    if creatorAddress != msg.sender:
    selfdestruct(creatorAddress)
}

function _fallback() payable {
  stop
}

function sub_fa94b844(?) {
    if creatorAddress == msg.sender:
        sub_d49710cb = arg1
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
    if eth.balance(this.address) < sub_d49710cb:
        return 0
    call stor2['jens'] with:
       value eth.balance(this.address) * stor3['jens'] / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    call stor2['nikolas'] with:
       value eth.balance(this.address) * stor3['nikolas'] / 1000 wei
         gas 2300 * is_zero(value) wei
    call stor2['kurt'] with:
       value eth.balance(this.address) * stor3['kurt'] / 1000 wei
         gas 2300 * is_zero(value) wei
    call stor2['davino'] with:
       value eth.balance(this.address) * stor3['davino'] / 1000 wei
         gas 2300 * is_zero(value) wei
    call stor2['valentijn'] with:
       value eth.balance(this.address) * stor3['valentijn'] / 1000 wei
         gas 2300 * is_zero(value) wei
    return 1
}



}
