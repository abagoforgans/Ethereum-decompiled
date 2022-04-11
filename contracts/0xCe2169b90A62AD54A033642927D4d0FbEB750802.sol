contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
address stor4;
address stor5;
uint8 stor6; offset 160
address stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor4 = code.data[4776 len 20]
    stor5 = code.data[4808 len 20]
    address(stor6.field_0) = code.data[4840 len 20]
    uint8(stor6.field_160) = 0
    stor7 = code.data[4860 len 32]
    stor8 = code.data[4860 len 32] + (24 * 3600 * code.data[4892 len 32])
    stor0 = 125000 * 10^18
    stor1[code.data[4808 len 20]] = 125000 * 10^18
    emit 0x9f3a2adf: 125000 * 10^18, stor5
    return code.data[500 len 4264]
}



// =====================  Runtime code  =====================


const name = 'Neo Wealth advisors success'

const sub_14c78018(?) = 125000 * 10^18

const decimals = 18

const tokenExchangeRate = 250

const tokenCreationCap = 625000 * 10^18

const symbol = 'NWAS'

const tokenCreationMin = 200 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address ethFundDepositAddress;
address sub_58342809Address;
uint8 stor6; offset 160
address splitterAddress;
uint256 fundingStartTime;
uint256 fundingEndTime;

function totalSupply() {
    return totalSupply
}

function fundingStartTime() {
    return fundingStartTime
}

function splitter() {
    return splitterAddress
}

function version() {
    return version[0 len version.length]
}

function sub_58342809(?) {
    return sub_58342809Address
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function fundingEndTime() {
    return fundingEndTime
}

function isFinalized() {
    return bool(stor6)
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finalize() {
    require stor6
    require ethFundDepositAddress != msg.sender
    require totalSupply < 125200 * 10^18
    require block.timestamp <= fundingEndTime
    require totalSupply != 625000 * 10^18
    stor6 = 1
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size < 100
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function refund() {
    require stor6
    require block.timestamp <= fundingEndTime
    require totalSupply >= 125200 * 10^18
    require sub_58342809Address == msg.sender
    require not balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require totalSupply >= balanceOf[address(msg.sender)]
    totalSupply -= balanceOf[address(msg.sender)]
    emit LogRefund((balanceOf[address(msg.sender)] / 250), msg.sender);
    call msg.sender with:
       value balanceOf[address(msg.sender)] / 250 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require stor6
    require block.timestamp < fundingStartTime
    require block.timestamp > fundingEndTime
    require not msg.value
    require (250 * msg.value) + totalSupply >= totalSupply
    require (250 * msg.value) + totalSupply >= 250 * msg.value
    if 625000 * 10^18 >= (250 * msg.value) + totalSupply:
        totalSupply += 250 * msg.value
        balanceOf[address(msg.sender)] += 250 * msg.value
        emit 0x9f3a2adf: (250 * msg.value), msg.sender
    else:
        require 625000 * 10^18 <= totalSupply
        require 625000 * 10^18 >= totalSupply
        require 250 * msg.value >= -totalSupply + 625000 * 10^18
        totalSupply = 625000 * 10^18
        balanceOf[address(msg.sender)] = -totalSupply + balanceOf[address(msg.sender)] + 625000 * 10^18
        call msg.sender with:
           value (250 * msg.value) + totalSupply - 625000 * 10^18 / 250 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x9f3a2adf: (-totalSupply + 625000 * 10^18), msg.sender
        emit LogRefund(((250 * msg.value) + totalSupply - 625000 * 10^18 / 250), msg.sender);
    require ext_code.size(splitterAddress)
    call splitterAddress.update(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)]
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size < 68
    if balanceOf[address(msg.sender)] < arg2:
        require ext_code.size(splitterAddress)
        call splitterAddress.update(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, balanceOf[address(msg.sender)]
        require ext_call.success
        require ext_code.size(splitterAddress)
        call splitterAddress.update(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), balanceOf[address(arg1)]
        require ext_call.success
        return 0
    if arg2 <= 0:
        require ext_code.size(splitterAddress)
        call splitterAddress.update(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, balanceOf[address(msg.sender)]
        require ext_call.success
        require ext_code.size(splitterAddress)
        call splitterAddress.update(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), balanceOf[address(arg1)]
        require ext_call.success
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require ext_code.size(splitterAddress)
    call splitterAddress.update(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)]
    require ext_call.success
    require ext_code.size(splitterAddress)
    call splitterAddress.update(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), balanceOf[address(arg1)]
    require ext_call.success
    return 1
}



}
