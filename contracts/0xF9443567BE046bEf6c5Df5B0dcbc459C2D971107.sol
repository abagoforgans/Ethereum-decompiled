contract main {




// =====================  Runtime code  =====================


const currentPrice = 10^16

const MAX_UINT256 = -1


address stor0;
array of struct stor1;
array of struct userTokenInfos;
array of uint256 balanceOf;
array of uint256 bonusPoolsOf;
array of uint256 capitalPoolOf;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint256 presellUpToTime;
uint256 presellToKenAmount;

function name() {
    return name[0 len name.length]
}

function capitalPoolOf(address arg1) {
    return capitalPoolOf[address(arg1)]
}

function getPresellToKenAmount() {
    return presellToKenAmount
}

function totalSupply() {
    return totalSupply
}

function getUserTokenInfos(address arg1, uint256 arg2) {
    require arg2 < uint256(userTokenInfos[address(arg1)].field_0)
    return userTokenInfos[address(arg1)][arg2].field_0, 
           uint256(userTokenInfos[address(arg1)][arg2].field_256),
           uint256(userTokenInfos[address(arg1)][arg2].field_512),
           uint256(userTokenInfos[address(arg1)][arg2].field_768),
           uint256(userTokenInfos[address(arg1)][arg2].field_1024),
           uint256(userTokenInfos[address(arg1)][arg2].field_1280)
}

function getPresellUpToTime() {
    return presellUpToTime
}

function getUserTokenInfosLength() {
    return stor1.length
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function bonusPoolsOf(address arg1) {
    return bonusPoolsOf[address(arg1)]
}

function destroy() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function buyPrice(uint256 arg1) {
    return (10^16 * arg1)
}

function computingCharge(uint256 arg1) {
    return (arg1 / 10)
}

function EthTurnWCG(uint256 arg1) {
    return (10^18 * arg1 / 10^16)
}

function buyToKen(uint256 arg1) payable {
    require block.timestamp < presellUpToTime
    require msg.value >= (10^16 * arg1) + (10^16 * arg1 / 10)
    require bonusPoolsOf[address(this.address)] <= -(10^16 * arg1 / 10) - 1
    bonusPoolsOf[address(this.address)] += 10^16 * arg1 / 10
    require capitalPoolOf[address(this.address)] <= (-1 * 10^16 * arg1) - 1
    capitalPoolOf[address(this.address)] += 10^16 * arg1
    call this.address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require balanceOf[address(this.address)] <= -msg.value - 1
    balanceOf[address(this.address)] += msg.value
    stor1.length++
    stor1[stor1.length].field_0 = msg.sender
    uint256(stor1[stor1.length].field_256) = 10^16
    uint256(stor1[stor1.length].field_512) = arg1
    uint256(stor1[stor1.length].field_768) = 10^16 * arg1
    uint256(stor1[stor1.length].field_1024) = 10^16 * arg1 / 10
    uint256(stor1[stor1.length].field_1280) = (10^16 * arg1) + (10^16 * arg1 / 10)
    require totalSupply <= -arg1 - 1
    totalSupply += arg1
    require balanceOf[address(msg.sender)] <= -arg1 - 1
    balanceOf[address(msg.sender)] += arg1
    uint256(userTokenInfos[address(this.address)].field_0) = stor1.length
    if not stor1.length:
        idx = 0
        while 6 * uint256(userTokenInfos[address(this.address)].field_0) > idx:
            userTokenInfos[address(this.address)][idx].field_0 = 0
            uint256(userTokenInfos[address(this.address)][idx].field_256) = 0
            uint256(userTokenInfos[address(this.address)][idx].field_512) = 0
            uint256(userTokenInfos[address(this.address)][idx].field_768) = 0
            uint256(userTokenInfos[address(this.address)][idx].field_1024) = 0
            uint256(userTokenInfos[address(this.address)][idx].field_1280) = 0
            idx = idx + 6
            continue 
    else:
        s = 0
        idx = 0
        while 6 * stor1.length > idx:
            userTokenInfos[address(this.address)][s].field_0 = stor1[idx].field_0
            uint256(userTokenInfos[address(this.address)][s].field_256) = uint256(stor1[idx].field_256)
            uint256(userTokenInfos[address(this.address)][s].field_512) = uint256(stor1[idx].field_512)
            uint256(userTokenInfos[address(this.address)][s].field_768) = uint256(stor1[idx].field_768)
            uint256(userTokenInfos[address(this.address)][s].field_1024) = uint256(stor1[idx].field_1024)
            uint256(userTokenInfos[address(this.address)][s].field_1280) = uint256(stor1[idx].field_1280)
            s = s + 6
            idx = idx + 6
            continue 
        idx = s
        while sha3(sha3(address(this.address), 2)) + (6 * uint256(userTokenInfos[address(this.address)].field_0)) > idx:
            stor[idx] = 0
            uint256(stor1[idx].field_0) = 0
            uint256(userTokenInfos[idx].field_0) = 0
            balanceOf[idx] = 0
            bonusPoolsOf[idx] = 0
            capitalPoolOf[idx] = 0
            idx = idx + 6
            continue 
    emit transfer(msg.sender, address(this.address), arg1, totalSupply);
}



}
