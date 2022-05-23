contract main {




// =====================  Runtime code  =====================


const REPUTATION_DECIMALS = 4


uint8 stor0; offset 160
address owner;
array of uint256 contactInformation;
mapping of uint8 stor2;
address merchantAccount;
uint256 merchantIdHash;
array of uint256 profile;
array of uint256 paymentSettings;
mapping of uint32 compositeReputation;

function paymentSettings(string arg1) {
    return paymentSettings[arg1[all]][0 len paymentSettings[arg1[all]].length]
}

function isMonethaAddress(address arg1) {
    return bool(stor2[arg1])
}

function contactInformation() {
    return contactInformation[0 len contactInformation.length]
}

function paused() {
    return bool(stor0)
}

function compositeReputation(string arg1) {
    return compositeReputation[arg1[all]]
}

function owner() {
    return owner
}

function merchantAccount() {
    return merchantAccount
}

function profile(string arg1) {
    return profile[arg1[all]][0 len profile[arg1[all]].length]
}

function merchantIdHash() {
    return merchantIdHash
}

function destroy() {
    require msg.sender == owner
    require not eth.balance(this.address)
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function setCompositeReputation(string arg1, uint32 arg2) {
    require stor2[msg.sender]
    compositeReputation[arg1[all]] = arg2
}

function changeMerchantAccount(address arg1) {
    require msg.sender == merchantAccount
    require not stor0
    merchantAccount = arg1
}

function setContactInformation(string arg1) {
    require msg.sender == owner
    contactInformation[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMonethaAddress(address arg1, bool arg2) {
    require msg.sender == owner
    stor2[address(arg1)] = uint8(arg2)
    emit MonethaAddressSet(address(arg1), arg2);
}

function withdraw(uint256 arg1) {
    require msg.sender == merchantAccount
    require not stor0
    require msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTo(address arg1, uint256 arg2) {
    require msg.sender == merchantAccount
    require not stor0
    require arg1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToExchange(address arg1, uint256 arg2) {
    if merchantAccount != msg.sender:
        require stor2[msg.sender]
    require not stor0
    require arg1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAllToExchange(address arg1, uint256 arg2) {
    if merchantAccount != msg.sender:
        require stor2[msg.sender]
    require not stor0
    require arg2 <= eth.balance(this.address)
    require arg1
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPaymentSettings(string arg1, string arg2) {
    require msg.sender == owner
    paymentSettings[arg1[all]] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        paymentSettings[arg1[all]][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while paymentSettings[arg1[all]].length + 31 / 32 > idx:
        paymentSettings[arg1[all]][idx] = 0
        idx = idx + 1
        continue 
}

function setProfile(string arg1, string arg2, string arg3, uint32 arg4) {
    require msg.sender == owner
    profile[arg1[all]] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        profile[arg1[all]][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while profile[arg1[all]].length + 31 / 32 > idx:
        profile[arg1[all]][idx] = 0
        idx = idx + 1
        continue 
    if arg3.length:
        compositeReputation[arg3[all]] = arg4
}



}
