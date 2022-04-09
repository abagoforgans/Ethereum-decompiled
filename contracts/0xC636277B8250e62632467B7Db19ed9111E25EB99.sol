contract main {


// =======================  Init code  ======================


address stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;

function _fallback() {
    stor15 = msg.sender
    stor16 = 100
    stor17 = 25000
    stor18 = 250
    stor19 = 250
    stor20 = 1000
    return code.data[84 len 10156]
}



// =====================  Runtime code  =====================


const name = 'Patron - Ethart Network Token'

const decimals = 18

const symbol = 'ART'


uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of address sHA256HashRegister;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of address referrer;
mapping of uint8 stor7;
mapping of struct artworkRegister;
mapping of address artistsArtworks;
mapping of uint256 artistsArtworkCount;
uint256 artworkCount;
mapping of address artworkIndex;
mapping of uint256 pendingWithdrawals;
uint256 totalPendingWithdrawals;
address owner;
uint256 donationMultiplier;
uint256 patronRewardMultiplier;
uint256 ethartRevenueReward;
uint256 ethartArtReward;
uint256 referrerReward;

function referrerReward() {
    return referrerReward
}

function totalSupply() {
    return totalSupply
}

function approvedContracts(address arg1) {
    return bool(stor5[arg1])
}

function balances(address arg1) {
    return balances[arg1]
}

function getEthartRevenueReward() {
    return ethartRevenueReward
}

function artistsArtworks(address arg1, uint256 arg2) {
    return artistsArtworks[arg1][arg2]
}

function approvedFactories(address arg1) {
    return bool(stor4[arg1])
}

function getReferrer(address arg1) {
    return referrer[address(arg1)]
}

function ethartArtReward() {
    return ethartArtReward
}

function cantSetReferrer(address arg1) {
    return bool(stor7[arg1])
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function patronRewardMultiplier() {
    return patronRewardMultiplier
}

function owner() {
    return owner
}

function artworkRegister(address arg1) {
    mem[416] = artworkRegister[arg1][2].field_0
    idx = 416
    s = 0
    while artworkRegister[arg1][2].length + 416 > idx + 32:
        mem[idx + 32] = artworkRegister[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[artworkRegister[arg1][2].length + (floor32(artworkRegister[arg1][2].length - 1) + -artworkRegister[arg1][2].length + 32 % 32) + 416] = artworkRegister[arg1][3].length
    mem[artworkRegister[arg1][2].length + (floor32(artworkRegister[arg1][2].length - 1) + -artworkRegister[arg1][2].length + 32 % 32) + 448] = artworkRegister[arg1][3].field_0
    idx = artworkRegister[arg1][2].length + (floor32(artworkRegister[arg1][2].length - 1) + -artworkRegister[arg1][2].length + 32 % 32) + 448
    s = 0
    while artworkRegister[arg1][2].length + (floor32(artworkRegister[arg1][2].length - 1) + -artworkRegister[arg1][2].length + 32 % 32) + artworkRegister[arg1][3].length + 448 > idx + 32:
        mem[idx + 32] = artworkRegister[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return artworkRegister[arg1].field_0, 
           artworkRegister[arg1].field_256,
           Array(len=artworkRegister[arg1][2].length, data=mem[416 len artworkRegister[arg1][2].length + (floor32(artworkRegister[arg1][2].length - 1) + -artworkRegister[arg1][2].length + 32 % 32) + artworkRegister[arg1][3].length + (floor32(artworkRegister[arg1][3].length - 1) + -artworkRegister[arg1][3].length + 32 % 32) + 32]),
           artworkRegister[arg1][2].length + (floor32(artworkRegister[arg1][2].length - 1) + -artworkRegister[arg1][2].length + 32 % 32) + 320,
           artworkRegister[arg1].field_1024,
           artworkRegister[arg1].field_1280,
           artworkRegister[arg1].field_1536,
           bool(artworkRegister[arg1].field_1696),
           bool(artworkRegister[arg1].field_1704)
}

function SHA256HashRegister(bytes32 arg1) {
    return sHA256HashRegister[arg1]
}

function referred(address arg1) {
    return referrer[arg1]
}

function artworkCount() {
    return artworkCount
}

function artworkIndex(uint256 arg1) {
    return artworkIndex[arg1]
}

function totalPendingWithdrawals() {
    return totalPendingWithdrawals
}

function donationMultiplier() {
    return donationMultiplier
}

function getEthartArtReward() {
    return ethartArtReward
}

function getReferrerReward() {
    return referrerReward
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function ethartRevenueReward() {
    return ethartRevenueReward
}

function pendingWithdrawals(address arg1) {
    return pendingWithdrawals[arg1]
}

function artistsArtworkCount(address arg1) {
    return artistsArtworkCount[arg1]
}

function _fallback() payable {
    require stor5[address(msg.sender)]
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setDonationReward(uint256 arg1) {
    require owner == msg.sender
    donationMultiplier = arg1
}

function isSHA256HashRegistered(bytes32 arg1) {
    if sHA256HashRegister[arg1]:
        return 1
    else:
        return 0
}

function approveFactoryContract(address arg1, bool arg2) {
    require owner == msg.sender
    stor4[address(arg1)] = uint8(arg2)
}

function donate() payable {
    balances[address(msg.sender)] += msg.value * donationMultiplier
    totalSupply += msg.value * donationMultiplier
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(address(arg1), arg2, msg.sender);
    return 1
}

function setEthartArtReward(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= 1000
    require arg1
    require 10000 / arg1 * arg1 >= 10000
    ethartArtReward = arg1
}

function burn(uint256 arg1) {
    require balances[address(msg.sender)] >= arg1
    balances[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function setEthartRevenueReward(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= 1000
    require arg1
    require 10000 / arg1 * arg1 >= 10000
    ethartRevenueReward = arg1
}

function fillBidByAddress(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.fillBid() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function cancelSaleByAddress(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.cancelSale() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function setReferrerReward(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= -ethartRevenueReward + 10000
    require arg1
    require 10000 / arg1 * arg1 == 10000
    referrerReward = arg1
}

function setReferrer(address arg1) {
    if not referrer[address(msg.sender)]:
        if not stor7[address(msg.sender)]:
            if arg1 != msg.sender:
                referrer[address(msg.sender)] = arg1
}

function issuePatrons(address arg1, uint256 arg2) {
    require stor5[address(msg.sender)]
    balances[address(arg1)] += arg2 / 10000 * patronRewardMultiplier
    totalSupply += arg2 / 10000 * patronRewardMultiplier
}

function cancelIndexedSaleByAddress(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.cancelIndexedSale() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function burnByAddress(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x42966c68 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function setPatronReward(uint256 arg1) {
    require owner == msg.sender
    donationMultiplier = arg1
    patronRewardMultiplier = arg1 * ethartRevenueReward
    require arg1
    require arg1 * ethartRevenueReward / arg1 <= ethartRevenueReward
}

function burnIndexedByAddress(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.burnIndexed(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function fillIndexedBidByAddress(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.fillIndexedBid(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function transferByAddress(address arg1, uint256 arg2, address arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg3), arg2
    require ext_call.success
}

function burnFromByAddress(address arg1, uint256 arg2, address arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x79cc6790 with:
         gas gas_remaining - 710 wei
        args address(arg3), arg2
    require ext_call.success
}

function offerPieceForSaleByAddress(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.offerPieceForSale(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function approveByAddress(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
}

function approveIndexedByAddress(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.approveIndexed(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
}

function transferIndexedByAddress(address arg1, uint256 arg2, address arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.transferIndexed(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg3), arg2
    require ext_call.success
}

function burnIndexedFromByAddress(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.burnIndexedFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
}

function offerIndexedPieceForSaleByAddress(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.offerIndexedPieceForSale(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args arg2, arg3
    require ext_call.success
}

function asyncSend(address arg1, uint256 arg2) {
    require stor5[address(msg.sender)]
    require arg2 + pendingWithdrawals[address(arg1)] >= pendingWithdrawals[address(arg1)]
    pendingWithdrawals[address(arg1)] += arg2
    require arg2 + totalPendingWithdrawals >= totalPendingWithdrawals
    totalPendingWithdrawals += arg2
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require balances[address(arg1)] >= arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg2
    balances[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        return 0
    if not arg1:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(address(arg1), arg2, msg.sender);
    return 1
}

function withdrawPaymentsRegistrar(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2
    require eth.balance(this.address) >= arg2
    require arg2 <= totalPendingWithdrawals
    totalPendingWithdrawals -= arg2
    require arg2 <= pendingWithdrawals[address(this.address)]
    pendingWithdrawals[address(this.address)] -= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawPayments() {
    require pendingWithdrawals[address(msg.sender)]
    require eth.balance(this.address) >= pendingWithdrawals[address(msg.sender)]
    require pendingWithdrawals[address(msg.sender)] <= totalPendingWithdrawals
    totalPendingWithdrawals -= pendingWithdrawals[address(msg.sender)]
    pendingWithdrawals[address(msg.sender)] = 0
    call msg.sender with:
       value pendingWithdrawals[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if balances[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balances[address(arg2)] + arg3 <= balances[address(arg2)]:
        return 0
    if not arg2:
        return 0
    balances[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(address(arg2), arg3, arg1);
    return 1
}

function registerArtwork(address arg1, bytes32 arg2, uint256 arg3, string arg4, string arg5, uint256 arg6, address arg7, bool arg8, bool arg9) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    require stor4[address(msg.sender)]
    require not sHA256HashRegister[arg2]
    sHA256HashRegister[arg2] = arg1
    stor5[address(arg1)] = 1
    stor7[address(arg7)] = 1
    artworkRegister[address(arg1)].field_0 = arg2
    artworkRegister[address(arg1)].field_256 = arg3
    artworkRegister[address(arg1)][2][].field_0 = Array(len=arg4.length, data=arg4[all])
    artworkRegister[address(arg1)][3][].field_0 = Array(len=arg5.length, data=arg5[all])
    artworkRegister[address(arg1)].field_1024 = arg6
    artworkRegister[address(arg1)].field_1280 = arg7
    artworkRegister[address(arg1)].field_1536 = msg.sender
    artworkRegister[address(arg1)].field_1696 = uint8(arg8)
    artworkRegister[address(arg1)].field_1704 = Mask(88, 0, arg9)
    artworkRegister[address(arg1)].field_1712 = Mask(80, 16, arg8) >> 16
    artworkIndex[stor11] = arg1
    artistsArtworks[address(arg7)][stor10[address(arg7)]] = arg1
    artistsArtworkCount[address(arg7)]++
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg1
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = arg3
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 320] = arg6
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 352] = arg7
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 384] = arg8
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg9
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = 288
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 448] = arg4.length
    if not arg4.length:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = arg4.length + 320
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 480] = arg5.length
        if not arg5.length:
            if not arg5.length % 32:
                emit NewArtwork(address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 480 len arg5.length + arg4.length + 32]), arg4.length + 320, arg6, address(arg7), arg8, arg9);
            else:
                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 512] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 544 len arg5.length % 32]
                emit NewArtwork(address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 480 len floor32(arg5.length) + arg4.length + 64]), arg4.length + 320, arg6, address(arg7), arg8, arg9);
        else:
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 512] = mem[ceil32(arg4.length) + 160]
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 544 len floor32(arg5.length - 1)] = mem[ceil32(arg4.length) + 192 len floor32(arg5.length - 1)]
            if not arg5.length % 32:
                emit NewArtwork(address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 480 len arg5.length + arg4.length + 32]), arg4.length + 320, arg6, address(arg7), arg8, arg9);
            else:
                mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 512] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 544 len arg5.length % 32]
                emit NewArtwork(address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + ceil32(arg5.length) + 480 len arg4.length + 32], mem[ceil32(arg4.length) + 160], mem[ceil32(arg4.length) + ceil32(arg5.length) + arg4.length + 544 len floor32(arg5.length)]), arg4.length + 320, arg6, address(arg7), arg8, arg9);
    else:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 480] = mem[128]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 512 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = arg4.length + 320
        mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 480] = arg5.length
        if arg5.length:
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 512] = mem[ceil32(arg4.length) + 160]
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 544 len floor32(arg5.length - 1)] = mem[ceil32(arg4.length) + 192 len floor32(arg5.length - 1)]
        if not arg5.length % 32:
            emit NewArtwork(address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[128], mem[ceil32(arg4.length) + ceil32(arg5.length) + 512 len arg5.length + arg4.length]), arg4.length + 320, arg6, address(arg7), arg8, arg9);
        else:
            mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 512] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 544 len arg5.length % 32]
            emit NewArtwork(address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[128], mem[ceil32(arg4.length) + ceil32(arg5.length) + 512 len floor32(arg5.length) + arg4.length + 32]), arg4.length + 320, arg6, address(arg7), arg8, arg9);
    artworkCount++
}



}
