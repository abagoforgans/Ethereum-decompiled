contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
address stor5;
address stor6;

function _fallback() {
    stor3 = msg.sender
    stor0 = 92 * 10^12
    stor1[address(msg.sender)] = 92 * 10^12
    stor5 = code.data[6352 len 20]
    stor6 = code.data[6384 len 20]
    return code.data[169 len 6171]
}



// =====================  Runtime code  =====================


const name = 'AkcaCoin'

const sub_1731cf49(?) = 161 * 10^11

const decimals = 6

const sub_37756222(?) = 2 * 10^9

const sub_6aed437f(?) = 644 * 10^11

const symbol = 'AKA'

const sub_e1d05597(?) = 5 * 10^16


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 sub_389af6da; offset 160
address owner;
mapping of uint256 sub_05ac5d42;
address coinAddress;
address sub_56edc9a9Address;
uint256 etherReceived;
uint256 coinSentToEther;
uint256 startTime;
uint256 endTime;
uint8 crowdsaleClosed;
mapping of struct backers;

function sub_05ac5d42(?) {
    return sub_05ac5d42[arg1]
}

function coin() {
    return coinAddress
}

function totalSupply() {
    return totalSupply
}

function etherReceived() {
    return etherReceived
}

function endTime() {
    return endTime
}

function sub_389af6da(?) {
    return bool(sub_389af6da)
}

function sub_56edc9a9(?) {
    return sub_56edc9a9Address
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function coinSentToEther() {
    return coinSentToEther
}

function backers(address arg1) {
    return backers[arg1].field_0, backers[arg1].field_256
}

function crowdsaleClosed() {
    return bool(crowdsaleClosed)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_5ae5d7d1(?) {
    require owner == msg.sender
    sub_389af6da = 1
}

function sub_814a63ff(?) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function release() {
    require owner == msg.sender
    require sub_389af6da
    sub_389af6da = 0
}

function setMultisig(address arg1) {
    require owner == msg.sender
    require arg1
    sub_56edc9a9Address = arg1
}

function start() {
    require owner == msg.sender
    require not startTime
    startTime = block.timestamp
    endTime = block.timestamp + (720 * 24 * 3600)
}

function drain() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_e03c3978(?) {
    require owner == msg.sender
    require ext_code.size(coinAddress)
    call coinAddress.0x814a63ff with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function burn(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function sub_ddf2588c(?) {
    require sub_05ac5d42[stor3]
    require eth.balance(this.address) >= sub_05ac5d42[stor3]
    sub_05ac5d42[stor3] = 0
    call owner with:
       value sub_05ac5d42[stor3] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x34bdbcf0: owner, sub_05ac5d42[stor3]
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

function finalize() {
    require owner == msg.sender
    if block.timestamp < endTime:
        require coinSentToEther == 644 * 10^11
    if coinSentToEther < 161 * 10^11:
        require block.timestamp >= endTime + (360 * 24 * 3600)
    call sub_56edc9a9Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(coinAddress)
    call coinAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(coinAddress)
        call coinAddress.0x42966c68 with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    crowdsaleClosed = 1
}

function refund(uint256 arg1) {
    require block.timestamp >= endTime
    require coinSentToEther < 161 * 10^11
    require arg1 == backers[address(msg.sender)].field_256
    require ext_code.size(coinAddress)
    call coinAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_code.size(coinAddress)
    call coinAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    backers[address(msg.sender)].field_0 = 0
    if backers[address(msg.sender)].field_0 > 0:
        require backers[address(msg.sender)].field_0 + sub_05ac5d42[address(msg.sender)] >= sub_05ac5d42[address(msg.sender)]
        sub_05ac5d42[address(msg.sender)] += backers[address(msg.sender)].field_0
}

function getRemainCoins() {
    require owner == msg.sender
    require startTime + (48 * 24 * 3600) >= startTime
    if block.timestamp >= startTime + (48 * 24 * 3600):
        require -coinSentToEther + 644 * 10^11 <= 100 * 10^6
    else:
        require -coinSentToEther + 644 * 10^11 <= 120 * 10^6
    require ext_code.size(coinAddress)
    call coinAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, -coinSentToEther + 644 * 10^11
    require ext_call.success
    require -coinSentToEther + backers[stor3].field_256 + 644 * 10^11 >= backers[stor3].field_256
    backers[stor3].field_256 = -coinSentToEther + backers[stor3].field_256 + 644 * 10^11
    require 644 * 10^11 >= coinSentToEther
    coinSentToEther = 644 * 10^11
    emit LogCoinsEmited((-coinSentToEther + 644 * 10^11), this.address);
    emit LogReceivedETH(owner, etherReceived);
}

function _fallback() payable {
    require not sub_389af6da
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= 5 * 10^16
    if msg.value:
        require msg.value
        require 2 * 10^9 * msg.value / msg.value == 2 * 10^9
    require 2 * 10^9 * msg.value == (10^18 * 2 * 10^9 * msg.value / 10^18) + (2 * 10^9 * msg.value % 10^18)
    require startTime + (48 * 24 * 3600) >= startTime
    if block.timestamp >= startTime + (48 * 24 * 3600):
        require coinSentToEther + (2 * 10^9 * msg.value / 10^18) >= 2 * 10^9 * msg.value / 10^18
        require coinSentToEther + (2 * 10^9 * msg.value / 10^18) <= 644 * 10^11
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 2 * 10^9 * msg.value / 10^18
        require ext_call.success
        require (2 * 10^9 * msg.value / 10^18) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
        backers[address(msg.sender)].field_256 += 2 * 10^9 * msg.value / 10^18
        require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
        backers[address(msg.sender)].field_0 += msg.value
        require msg.value + etherReceived >= etherReceived
        etherReceived += msg.value
        require (2 * 10^9 * msg.value / 10^18) + coinSentToEther >= coinSentToEther
        coinSentToEther += 2 * 10^9 * msg.value / 10^18
        emit LogCoinsEmited((2 * 10^9 * msg.value / 10^18), msg.sender);
    else:
        require 2 * 10^9 * msg.value / 10^18 == (5 * 2 * 10^9 * msg.value / 10^18 / 5) + (2 * 10^9 * msg.value / 10^18 % 5)
        require (2 * 10^9 * msg.value / 10^18 / 5) + (2 * 10^9 * msg.value / 10^18) >= 2 * 10^9 * msg.value / 10^18
        require coinSentToEther >= 0
        require coinSentToEther + (2 * 10^9 * msg.value / 10^18 / 5) + (2 * 10^9 * msg.value / 10^18) <= 644 * 10^11
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (2 * 10^9 * msg.value / 10^18 / 5) + (2 * 10^9 * msg.value / 10^18)
        require ext_call.success
        require (2 * 10^9 * msg.value / 10^18 / 5) + (2 * 10^9 * msg.value / 10^18) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
        backers[address(msg.sender)].field_256 = (2 * 10^9 * msg.value / 10^18 / 5) + (2 * 10^9 * msg.value / 10^18) + backers[address(msg.sender)].field_256
        require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
        backers[address(msg.sender)].field_0 += msg.value
        require msg.value + etherReceived >= etherReceived
        etherReceived += msg.value
        require (2 * 10^9 * msg.value / 10^18 / 5) + (2 * 10^9 * msg.value / 10^18) + coinSentToEther >= coinSentToEther
        coinSentToEther = (2 * 10^9 * msg.value / 10^18 / 5) + (2 * 10^9 * msg.value / 10^18) + coinSentToEther
        emit LogCoinsEmited(((2 * 10^9 * msg.value / 10^18 / 5) + (2 * 10^9 * msg.value / 10^18)), msg.sender);
    emit LogReceivedETH(msg.sender, etherReceived);
}



}
