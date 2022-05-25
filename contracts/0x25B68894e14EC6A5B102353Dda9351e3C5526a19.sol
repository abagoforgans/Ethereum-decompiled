contract main {




// =====================  Runtime code  =====================


#
#  - chargeAdvertisers(uint256[] arg1, uint256[] arg2, uint256[] arg3, address[] arg4)
#
mapping of uint8 stor0;
uint8 stor1; offset 160
address owner;
address pendingOwner;
uint256 lastTransferQueueIndex;
array of address stor4;
mapping of address advertiserAffiliates;
mapping of address publisherAffiliates;
mapping of uint256 bitwordsCutOverride;
address bitwordsWithdrawalAddress;
uint256 bitwordsCutOutof100;
uint256 affiliatesCutOutof100;
address tokenTrueUSDAddress;
mapping of uint8 stor99;

function advertiserAffiliates(uint256 arg1) {
    return advertiserAffiliates[arg1]
}

function paused() {
    return bool(stor1)
}

function bitwordsCutOverride(uint256 arg1) {
    return bitwordsCutOverride[arg1]
}

function tokenTrueUSD() {
    return tokenTrueUSDAddress
}

function owner() {
    return owner
}

function bitwordsCutOutof100() {
    return bitwordsCutOutof100
}

function lastTransferQueueIndex() {
    return lastTransferQueueIndex
}

function publisherAffiliates(uint256 arg1) {
    return publisherAffiliates[arg1]
}

function pendingOwner() {
    return pendingOwner
}

function bitwordsWithdrawalAddress() {
    return bitwordsWithdrawalAddress
}

function affiliatesCutOutof100() {
    return affiliatesCutOutof100
}

function _fallback() {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function unpause() {
    require msg.sender == owner
    require stor1
    stor1 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor1
    stor1 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function rejectAdvertiserCharges() payable {
    require stor0['authorizer'][address(msg.sender)]
    lastTransferQueueIndex = stor4.length
    emit PayoutsRejected()
}

function addServer(address arg1) {
    require msg.sender == owner
    stor0['server'][address(arg1)] = 1
    emit RoleAdded('server', arg1);
    emit ServerAdded(arg1);
}

function addAuthorizer(address arg1) {
    require msg.sender == owner
    stor0['authorizer'][address(arg1)] = 1
    emit RoleAdded('authorizer', arg1);
    emit AuthorizerAdded(arg1);
}

function setPublisherAffiliate(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    publisherAffiliates[arg2] = arg1
    emit SetPublisherAffiliate(arg2, arg1);
}

function setAdvertiserAffiliate(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    advertiserAffiliates[arg2] = arg1
    emit SetAdvertiserAffiliate(arg2, arg1);
}

function setBitwordsWithdrawalAddress(address arg1) {
    require msg.sender == owner
    require arg1
    bitwordsWithdrawalAddress = arg1
    emit BitwordsWithdrawalAddressChanged(msg.sender, arg1);
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBitwordsCut(uint256 arg1) {
    require msg.sender == owner
    if arg1 > 30:
        revert with 0, 'cut cannot be more than 30%'
    if arg1 < 0:
        revert with 0, 'cut should be greater than 0%'
    bitwordsCutOutof100 = arg1
    emit BitwordsCutChanged(arg1, msg.sender);
}

function setPublisherCut(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    if arg2 > 30:
        revert with 0, 'cut cannot be more than 30%'
    if arg2 < 0:
        revert with 0, 'cut should be greater than 0%'
    bitwordsCutOverride[arg1] = arg2
    emit SetPublisherCut(arg2, arg1);
}

function refundTokens(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(tokenTrueUSDAddress)
    call tokenTrueUSDAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit RefundToOwner(arg1, msg.sender);
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 0
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function approveAdvertiserCharges() payable {
    require stor0['authorizer'][address(msg.sender)]
    require lastTransferQueueIndex < stor4.length
    idx = 0
    while idx < uint256(stor4[stor3]):
        mem[196] = uint256(stor[(3 * stor3) + ('name', 'stor4', 4) + 1][address(stor4[(3 * stor3) + idx])])
        require ext_code.size(tokenTrueUSDAddress)
        call tokenTrueUSDAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(stor4[(3 * stor3) + idx]), uint256(stor[(3 * stor3) + ('name', 'stor4', 4) + 1][address(stor4[(3 * stor3) + idx])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < uint256(stor4[stor3])
        mem[0] = address(stor4[(3 * stor3) + idx])
        mem[32] = (3 * lastTransferQueueIndex) + sha3(4) + 2
        mem[160] = uint256(stor[(3 * stor3) + ('name', 'stor4', 4) + 1][address(stor4[(3 * stor3) + idx])])
        mem[192] = uint256(stor[(3 * stor3) + ('name', 'stor4', 4) + 2][address(stor4[(3 * stor3) + idx])])
        emit PayoutProcessed(uint256(stor[(3 * stor3) + ('name', 'stor4', 4) + 1][address(stor4[(3 * stor3) + idx])]), uint256(stor[(3 * stor3) + ('name', 'stor4', 4) + 2][address(stor4[(3 * stor3) + idx])]), address(stor4[(3 * stor3) + idx]));
        idx = idx + 1
        continue 
    lastTransferQueueIndex = stor4.length
}



}
