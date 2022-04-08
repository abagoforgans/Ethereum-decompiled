contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    mem[96 len -1756] = code.data[2071 len -1756]
    mem[64] = -1660
    stor8 = mem[96]
    stor9 = mem[128]
    stor10 = mem[160]
    stor4 = block.number
    stor2 = mem[204 len 20]
    stor3 = mem[332 len 20]
    stor0 = mem[300 len 20]
    idx = 0
    while idx < mem[mem[224] + 96]:
        require idx < mem[mem[256] + 96]
        require idx < mem[mem[224] + 96]
        mem[0] = mem[mem[224] + (32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[mem[224] + (32 * idx) + 140 len 20]] += mem[(32 * idx) + mem[256] + 128]
        require idx < mem[mem[256] + 96]
        stor5 += mem[mem[256] + (32 * idx) + 128]
        idx = idx + 1
        continue 
    return code.data[315 len 1756]
}



// =====================  Runtime code  =====================


const claimMethodABI = Array(len=7, data=mem[224])


address owner;
address campaignAddress;
address tokenAddress;
address verifierAddress;
uint256 startBlock;
uint256 tokensIssued;
mapping of uint8 stor6;
mapping of uint256 balances;
uint256 tokenCap;
uint256 price;
uint256 freezePeriod;

function freezePeriod() {
    return freezePeriod
}

function balances(address arg1) {
    return balances[arg1]
}

function verifier() {
    return verifierAddress
}

function startBlock() {
    return startBlock
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function tokensIssued() {
    return tokensIssued
}

function campaign() {
    return campaignAddress
}

function owner() {
    return owner
}

function price() {
    return price
}

function claimed(address arg1) {
    return bool(stor6[arg1])
}

function tokenCap() {
    return tokenCap
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert 
}

function calcTokenAmount(uint256 arg1) {
    require price
    return (arg1 / price)
}

function changePrice(uint256 arg1) {
    require owner == msg.sender
    price = arg1
}

function setCampaign(address arg1) {
    require owner == msg.sender
    require not campaignAddress
    campaignAddress = arg1
}

function claim() {
    require ext_code.size(campaignAddress)
    call campaignAddress.stage() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] == 2
    require block.number > startBlock + freezePeriod
    require not stor6[address(msg.sender)]
    require balances[address(msg.sender)] > 0
    stor6[address(msg.sender)] = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, balances[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    emit 0x9b6538c6: msg.sender
}

function notate(address arg1, uint256 arg2, uint256 arg3, uint256[] arg4) {
    require price
    require arg2 / price > 0
    require arg2 / price * price == arg2
    if verifierAddress:
        require ext_code.size(verifierAddress)
        call verifierAddress.0xd8b964e6 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[0]
    require (arg2 / price) + tokensIssued <= tokenCap
    require campaignAddress == msg.sender
    require price
    balances[address(arg1)] += arg2 / price
    tokensIssued += arg2 / price
    if (arg2 / price) + tokensIssued < tokenCap:
        return 0
    return 1
}



}
