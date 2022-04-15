contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor3;
uint32 stor5;
uint256 storCBC8;

function _fallback() payable {
    stor5 = 0
    require not msg.value
    stor1 = msg.sender
    require stor[code.data[7390 len 32]] + 3 * 10^15 >= stor[code.data[7390 len 32]]
    require stor[code.data[7390 len 32]] + 3 * 10^15 >= 3 * 10^15
    stor[code.data[7390 len 32]] += 3 * 10^15
    stor3[this.address] = 8 * 10^15
    storCBC8 = 4 * 10^15
    stor0 = 15 * 10^15
    return code.data[329 len 7061]
}



// =====================  Runtime code  =====================


const name = 'Gimli Token'

const decimals = 8

const version = 'v1'

const symbol = 'GIM'

const VESTING_1_DATE = (427020 * 3600)

const VESTING_2_AMOUNT = 3 * 10^15

const MULTISIG_WALLET_ADDRESS = 0xc79ab28c5c03f1e7fbef056167364e6782f9ff4f

const START_DATE = (418260 * 3600)

const END_DATE = (419028 * 3600)

const LOCKED_ADDRESS = 0xabcdefabcdefabcdefabcdefabcdefabcdefabcd

const VESTING_1_AMOUNT = 10^15

const TOTAL_SUPPLY = 15 * 10^15

const UNIT = 100 * 10^6

const CROWDSALE_PRICE = 700

const VESTING_2_DATE = (435780 * 3600)

const CROWDSALE_AMOUNT = 8 * 10^15


uint256 totalSupply;
address owner;
address newOwner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor5;
uint8 stor5; offset 8
uint8 stor5; offset 16
uint8 stor5; offset 24
uint256 soldAmount;
uint256 paidAmount;
mapping of uint8 stor8;
address streamerContractAddress;
uint256 streamerContractMaxAmount;
uint256 storCBC8;
uint256 stor40DD;

function paidAmount() {
    return paidAmount
}

function totalSupply() {
    return totalSupply
}

function streamerContract() {
    return streamerContractAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function vesting2Withdrawn() {
    return bool(uint8(stor5.field_16))
}

function vesting1Withdrawn() {
    return bool(uint8(stor5.field_8))
}

function administrators(address arg1) {
    return bool(stor8[arg1])
}

function owner() {
    return owner
}

function transferable() {
    return bool(uint8(stor5.field_0))
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function streamerContractMaxAmount() {
    return streamerContractMaxAmount
}

function crowdsaleCanceled() {
    return bool(uint8(stor5.field_24))
}

function soldAmount() {
    return soldAmount
}

function cancelCrowdsale() {
    require owner == msg.sender
    uint8(stor5.field_24) = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function addAdministrators(address arg1) {
    require owner == msg.sender
    stor8[address(arg1)] = 1
    emit AdminstratorAdded(arg1);
}

function removeAdministrators(address arg1) {
    require owner == msg.sender
    stor8[address(arg1)] = 0
    emit AdminstratorRemoved(arg1);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setStreamerContract(address arg1, uint256 arg2) {
    if not stor8[address(msg.sender)]:
        require owner == msg.sender
    if arg2:
        require not streamerContractMaxAmount
    streamerContractAddress = arg1
    streamerContractMaxAmount = arg2
    emit StreamerContractChanged(address(arg1), arg2);
}

function transferOtherERC20Token(address arg1, uint256 arg2) {
    require owner == msg.sender
    if arg1 == this.address:
        require uint8(stor5.field_0)
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor5.field_0)
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 >= 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xaddf252a: arg2, msg.sender, arg1
    return 1
}

function transferGIM(address arg1, address arg2, uint256 arg3) {
    require streamerContractAddress == msg.sender
    require tx.origin == arg1
    require arg3 <= streamerContractMaxAmount
    if balanceOf[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit 0xaddf252a: arg3, arg1, arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor5.field_0)
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 >= 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0xaddf252a: arg3, arg1, arg2
    return 1
}

function closeCrowdsale() {
    require owner == msg.sender
    if block.timestamp <= 419028 * 3600:
        if not uint8(stor5.field_24):
            require not balanceOf[address(this.address)]
    uint8(stor5.field_0) = 1
    if balanceOf[address(this.address)] > 0:
        require balanceOf[address(this.address)] + stor40DD >= stor40DD
        require balanceOf[address(this.address)] + stor40DD >= balanceOf[address(this.address)]
        stor40DD += balanceOf[address(this.address)]
        balanceOf[this.address] = 0
        emit 0xaddf252a: balanceOf[address(this.address)], this.address, 0xc79ab28c5c03f1e7fbef056167364e6782f9ff4f
}

function preAllocate(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require block.timestamp < 418260 * 3600
    require arg2 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    require arg2 + soldAmount >= soldAmount
    require arg2 + soldAmount >= arg2
    soldAmount += arg2
    require arg3 + paidAmount >= paidAmount
    require arg3 + paidAmount >= arg3
    paidAmount += arg3
    emit 0xaddf252a: arg2, this.address, arg1
}

function releaseVesting(address arg1) {
    require owner == msg.sender
    if block.timestamp <= 427020 * 3600:
        return 0
    if not uint8(stor5.field_8):
        require 10^15 <= storCBC8
        storCBC8 -= 10^15
        require balanceOf[arg1] + 10^15 >= balanceOf[arg1]
        require balanceOf[arg1] + 10^15 >= 10^15
        balanceOf[address(arg1)] = balanceOf[arg1] + 10^15
        uint8(stor5.field_8) = 1
        emit 0xaddf252a: 10^15, 0xabcdefabcdefabcdefabcdefabcdefabcdefabcd, arg1
    else:
        if block.timestamp <= 435780 * 3600:
            return 0
        if uint8(stor5.field_16):
            return 0
        require 3 * 10^15 <= storCBC8
        storCBC8 -= 3 * 10^15
        require balanceOf[arg1] + 3 * 10^15 >= balanceOf[arg1]
        require balanceOf[arg1] + 3 * 10^15 >= 3 * 10^15
        balanceOf[address(arg1)] = balanceOf[arg1] + 3 * 10^15
        uint8(stor5.field_16) = 1
        emit 0xaddf252a: 3 * 10^15, 0xabcdefabcdefabcdefabcdefabcdefabcdefabcd, arg1
    return 1
}

function _fallback() payable {
    require not uint8(stor5.field_24)
    require msg.value > 0
    require block.timestamp >= 418260 * 3600
    require block.timestamp <= 419028 * 3600
    if msg.value:
        require msg.value
        require 700 * msg.value / msg.value == 700
    require 700 * msg.value == (10^10 * 700 * msg.value / 10^10) + (700 * msg.value % 10^10)
    require 700 * msg.value / 10^10 <= balanceOf[address(this.address)]
    require balanceOf[address(this.address)] - (700 * msg.value / 10^10) >= 0
    call 0xc79ab28c5c03f1e7fbef056167364e6782f9ff4f with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 700 * msg.value / 10^10 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= 700 * msg.value / 10^10
    require (700 * msg.value / 10^10) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require (700 * msg.value / 10^10) + balanceOf[msg.sender] >= 700 * msg.value / 10^10
    balanceOf[address(msg.sender)] = (700 * msg.value / 10^10) + balanceOf[msg.sender]
    require (700 * msg.value / 10^10) + soldAmount >= soldAmount
    require (700 * msg.value / 10^10) + soldAmount >= 700 * msg.value / 10^10
    soldAmount += 700 * msg.value / 10^10
    require msg.value + paidAmount >= paidAmount
    require msg.value + paidAmount >= msg.value
    paidAmount += msg.value
    emit 0xaddf252a: (700 * msg.value / 10^10), this.address, msg.sender
}



}
