contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor5;
uint256 stor6;
address stor7;
address stor8;

function _fallback() {
    stor3 = msg.sender
    stor7 = code.data[4499 len 20]
    stor8 = code.data[4531 len 20]
    stor0 = code.data[4551 len 32]
    stor5 = code.data[4583 len 32]
    stor6 = code.data[4615 len 32]
    stor1[code.data[4531 len 20]] = code.data[4551 len 32]
    return code.data[187 len 4300]
}



// =====================  Runtime code  =====================


const name = 'Weibei'

const decimals = 0

const symbol = 'WBC'

const MIN_INVEST_ETHER = 5 * 10^16


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
mapping of struct backers;
uint256 maxCap;
uint256 price;
address sub_852de57eAddress;
address sub_b968a3a4Address;
uint256 sub_45c3dace;
uint256 totalEtherReceived;
uint256 sub_d531f145;
uint8 stor12;

function totalSupply() {
    return totalSupply
}

function maxCap() {
    return maxCap
}

function sub_45c3dace(?) {
    return sub_45c3dace
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function stopped() {
    return bool(stor3)
}

function isSaleOn() {
    return bool(stor12)
}

function totalEtherReceived() {
    return totalEtherReceived
}

function sub_852de57e(?) {
    return sub_852de57eAddress
}

function owner() {
    return owner
}

function price() {
    return price
}

function backers(address arg1) {
    return backers[arg1].field_0, backers[arg1].field_256
}

function sub_b968a3a4(?) {
    return sub_b968a3a4Address
}

function sub_d531f145(?) {
    return sub_d531f145
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function endSale() {
    require owner == msg.sender
    stor12 = 0
}

function startSale() {
    require owner == msg.sender
    stor12 = 1
}

function emergencyStop() {
    require owner == msg.sender
    stor3 = 1
}

function setPrice(uint256 arg1) {
    require owner == msg.sender
    price = arg1
}

function setMaxCap(uint256 arg1) {
    require owner == msg.sender
    maxCap = arg1
}

function release() {
    require owner == msg.sender
    require stor3
    stor3 = 0
}

function setTotalSupply(uint256 arg1) {
    require owner == msg.sender
    totalSupply = arg1
}

function finalize() {
    require owner == msg.sender
    balanceOf[stor8] = totalSupply - sub_d531f145
}

function sub_2026b40c(?) {
    require owner == msg.sender
    require arg1
    sub_852de57eAddress = arg1
}

function sub_489b990e(?) {
    require owner == msg.sender
    require arg1
    sub_b968a3a4Address = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function drain() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function _fallback() payable {
    require not stor3
    require stor12
    require sub_d531f145 <= maxCap
    require msg.value >= 5 * 10^16
    if msg.value:
        require msg.value
        require price * msg.value / msg.value == price
    require (price * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += price * msg.value / 10^18
    call sub_852de57eAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require (price * msg.value / 10^18) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
    backers[address(msg.sender)].field_256 += price * msg.value / 10^18
    require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
    backers[address(msg.sender)].field_0 += msg.value
    require msg.value + sub_45c3dace >= sub_45c3dace
    sub_45c3dace += msg.value
    totalEtherReceived = msg.value + sub_45c3dace / 10^18
    require (price * msg.value / 10^18) + sub_d531f145 >= sub_d531f145
    sub_d531f145 += price * msg.value / 10^18
    emit 0x952bb6d5: msg.sender, msg.value, price * msg.value / 10^18
}



}
