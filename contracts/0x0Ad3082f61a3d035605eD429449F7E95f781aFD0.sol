contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor9;
array of uint256 stor10;

function _fallback() payable {
    bool(stor10.length) = 0
    stor10.length.field_1 = 8
    stor10.length.field_8 = 'TNB Sale' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = code.data[15587 len 20]
    stor1 = code.data[15619 len 20]
    stor2 = code.data[15639 len 32]
    stor3 = code.data[15671 len 32]
    stor4 = code.data[15767 len 32]
    stor6 = code.data[15715 len 20]
    stor5 = code.data[15799 len 32]
    stor9 = code.data[15735 len 32]
    return code.data[623 len 14952]
}



// =====================  Runtime code  =====================


const decimals = 18

const symbol = 'TNB'


address adminAddress;
address feeAddr;
uint256 sub_5a679e1f;
uint256 ethHardCap;
uint256 startTime;
uint256 endTime;
address sub_2df55f90Address;
uint256 totalSupply;
uint256 sub_977f19ad;
uint256 rate;
array of uint256 name;
mapping of uint256 balanceOfEth;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function sub_2df55f90(?) {
    return sub_2df55f90Address
}

function endTime() {
    return endTime
}

function feeAddr() {
    return feeAddr
}

function balanceOfEth(address arg1) {
    return balanceOfEth[0][address(arg1)]
}

function ethHardCap() {
    return ethHardCap
}

function sub_5a679e1f(?) {
    return sub_5a679e1f
}

function startTime() {
    return startTime
}

function sub_977f19ad(?) {
    return sub_977f19ad
}

function Lockup(address arg1, uint256 arg2) {
    return balanceOfEth[stor6][stor0]
}

function admin() {
    return adminAddress
}

function _fallback() {
    revert
}

function isStart() {
    if startTime >= block.timestamp:
        return 0
    return 1
}

function sub_a83233b3(?) {
    require msg.sender == adminAddress
    sub_5a679e1f = arg1
}

function sub_d7e6a912(?) {
    if endTime <= block.timestamp:
        return 0
    return 1
}

function setFeeAddr(address arg1) {
    require msg.sender == adminAddress
    feeAddr = arg1
}

function setAdmin(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function sub_137b60ab(?) {
    if startTime + (1440 * 24 * 3600) >= block.timestamp:
        return 0
    return 1
}

function sub_8ae13206(?) {
    if startTime + (1440 * 24 * 3600) >= block.timestamp:
        require msg.sender == adminAddress
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, balanceOfEth[0][address(msg.sender)]);
}

function withdrawByOwner(uint256 arg1) {
    if feeAddr != msg.sender:
        require msg.sender == adminAddress
    require arg1 <= balanceOfEth[0][address(msg.sender)]
    balanceOfEth[0][address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, balanceOfEth[0][address(msg.sender)]);
}

function getStatus() {
    if startTime >= block.timestamp:
        return 1
    if endTime > block.timestamp:
        return 2
    if balanceOfEth[0][stor1] <= 0:
        if balanceOfEth[stor6][stor0] <= 0:
            return 3
    if balanceOfEth[0][stor1] >= 0:
        if balanceOfEth[stor6][stor0] > 0:
            return 4
    if balanceOfEth[0][stor1] <= 0:
        return 0
    if balanceOfEth[stor6][stor0]:
        return 0
    return 5
}

function sub_e85ae1ab(?) {
    if startTime + (1440 * 24 * 3600) >= block.timestamp:
        require msg.sender == adminAddress
    require arg1 <= balanceOfEth[stor6][stor0]
    balanceOfEth[stor6][stor0] -= arg1
    require ext_code.size(sub_2df55f90Address)
    call sub_2df55f90Address.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdraw(sub_2df55f90Address, msg.sender, arg1, balanceOfEth[stor6][address(msg.sender)]);
}

function depositToken(uint256 arg1) {
    require ext_code.size(sub_2df55f90Address)
    call sub_2df55f90Address.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    require balanceOfEth[stor6][stor0] + arg1 >= balanceOfEth[stor6][stor0]
    require balanceOfEth[stor6][stor0] + arg1 >= arg1
    balanceOfEth[stor6][stor0] += arg1
    emit Deposit(sub_2df55f90Address, msg.sender, arg1, balanceOfEth[stor6][address(msg.sender)]);
}

function getRemain() {
    require msg.sender == adminAddress
    if sub_977f19ad:
        require sub_977f19ad
        require sub_977f19ad * rate / sub_977f19ad == rate
    require sub_977f19ad * rate <= balanceOfEth[stor6][stor0]
    require balanceOfEth[stor6][stor0] - (sub_977f19ad * rate) <= balanceOfEth[stor6][stor0]
    balanceOfEth[stor6][stor0] = sub_977f19ad * rate
    require ext_code.size(sub_2df55f90Address)
    call sub_2df55f90Address.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOfEth[stor6][stor0] - (sub_977f19ad * rate)
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdraw(sub_2df55f90Address, msg.sender, balanceOfEth[stor6][stor0] - (sub_977f19ad * rate), balanceOfEth[stor6][address(msg.sender)]);
}

function sub_3412a75a(?) {
    require sub_5a679e1f + 10^18 / 10^10
    require 100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10 <= balanceOfEth[0][address(arg1)]
    require balanceOfEth[0][address(arg1)] - (100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10) <= balanceOfEth[0][address(arg1)]
    if 100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10:
        require 100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10
        require (balanceOfEth[0][address(arg1)] * rate) - (balanceOfEth[0][address(arg1)] * rate) + (100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10 * rate) / 100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10 == rate
    return ((balanceOfEth[0][address(arg1)] * rate) - (balanceOfEth[0][address(arg1)] * rate) + (100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10 * rate))
}

function withdraw(uint256 arg1) {
    if balanceOfEth[stor6][stor0]:
        require endTime > block.timestamp
    else:
        if balanceOfEth[0][stor1] <= 0:
            require endTime > block.timestamp
    require balanceOfEth[0][address(msg.sender)] >= arg1
    require sub_5a679e1f + 10^18 / 10^10
    require 100 * 10^6 * arg1 / sub_5a679e1f + 10^18 / 10^10 <= arg1
    require arg1 - (100 * 10^6 * arg1 / sub_5a679e1f + 10^18 / 10^10) <= arg1
    require 100 * 10^6 * arg1 / sub_5a679e1f + 10^18 / 10^10 <= totalSupply
    totalSupply += -100 * 10^6 * arg1 / sub_5a679e1f + 10^18 / 10^10
    require 100 * 10^6 * arg1 / sub_5a679e1f + 10^18 / 10^10 <= sub_977f19ad
    sub_977f19ad += -100 * 10^6 * arg1 / sub_5a679e1f + 10^18 / 10^10
    require arg1 <= balanceOfEth[0][address(msg.sender)]
    balanceOfEth[0][address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, balanceOfEth[0][address(msg.sender)]);
}

function balanceOf(address arg1) {
    if sub_977f19ad:
        require sub_977f19ad
        require sub_977f19ad * rate / sub_977f19ad == rate
    if balanceOfEth[stor6][stor0] < sub_977f19ad * rate:
        return 0
    require sub_5a679e1f + 10^18 / 10^10
    require 100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10 <= balanceOfEth[0][address(arg1)]
    require balanceOfEth[0][address(arg1)] - (100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10) <= balanceOfEth[0][address(arg1)]
    if 100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10:
        require 100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10
        require (balanceOfEth[0][address(arg1)] * rate) - (balanceOfEth[0][address(arg1)] * rate) + (100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10 * rate) / 100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10 == rate
    return ((balanceOfEth[0][address(arg1)] * rate) - (balanceOfEth[0][address(arg1)] * rate) + (100 * 10^6 * balanceOfEth[0][address(arg1)] / sub_5a679e1f + 10^18 / 10^10 * rate))
}

function deposit() payable {
    require startTime < block.timestamp
    require sub_5a679e1f + 10^18 / 10^10
    require 100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10 <= msg.value
    require msg.value - (100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10) <= msg.value
    require totalSupply + (100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10) >= totalSupply
    require totalSupply + (100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10) >= 100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10
    require totalSupply + (100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10) <= ethHardCap
    require totalSupply + (100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10) >= totalSupply
    require totalSupply + (100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10) >= 100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10
    totalSupply += 100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10
    require sub_977f19ad + (100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10) >= sub_977f19ad
    require sub_977f19ad + (100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10) >= 100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10
    sub_977f19ad += 100 * 10^6 * msg.value / sub_5a679e1f + 10^18 / 10^10
    require balanceOfEth[0][address(msg.sender)] + msg.value >= balanceOfEth[0][address(msg.sender)]
    require balanceOfEth[0][address(msg.sender)] + msg.value >= msg.value
    balanceOfEth[0][address(msg.sender)] += msg.value
    emit Deposit(0, msg.sender, msg.value, balanceOfEth[0][address(msg.sender)]);
}

function withdrawToken() {
    require sub_5a679e1f + 10^18 / 10^10
    require 100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10 <= balanceOfEth[0][address(msg.sender)]
    require balanceOfEth[0][address(msg.sender)] - (100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10) <= balanceOfEth[0][address(msg.sender)]
    if 100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10:
        require 100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10
        require (balanceOfEth[0][address(msg.sender)] * rate) - (balanceOfEth[0][address(msg.sender)] * rate) + (100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10 * rate) / 100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10 == rate
    if balanceOfEth[stor6][stor0] >= (balanceOfEth[0][address(msg.sender)] * rate) - (balanceOfEth[0][address(msg.sender)] * rate) + (100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10 * rate):
        require 100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10 <= sub_977f19ad
        sub_977f19ad += -100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10
        require (balanceOfEth[0][address(msg.sender)] * rate) - (balanceOfEth[0][address(msg.sender)] * rate) + (100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10 * rate) <= balanceOfEth[stor6][stor0]
        balanceOfEth[stor6][stor0] = balanceOfEth[stor6][stor0] - (balanceOfEth[0][address(msg.sender)] * rate) + (balanceOfEth[0][address(msg.sender)] * rate) - (100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10 * rate)
        require balanceOfEth[stor6][address(msg.sender)] + (balanceOfEth[0][address(msg.sender)] * rate) - (balanceOfEth[0][address(msg.sender)] * rate) + (100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10 * rate) >= balanceOfEth[stor6][address(msg.sender)]
        require balanceOfEth[stor6][address(msg.sender)] >= 0
        balanceOfEth[stor6][address(msg.sender)] = balanceOfEth[stor6][address(msg.sender)] + (balanceOfEth[0][address(msg.sender)] * rate) - (balanceOfEth[0][address(msg.sender)] * rate) + (100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10 * rate)
        require balanceOfEth[0][stor1] + balanceOfEth[0][address(msg.sender)] - (100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10) >= balanceOfEth[0][stor1]
        require balanceOfEth[0][stor1] >= 0
        balanceOfEth[0][stor1] = balanceOfEth[0][stor1] + balanceOfEth[0][address(msg.sender)] - (100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10)
        require balanceOfEth[0][stor0] + (100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10) >= balanceOfEth[0][stor0]
        require balanceOfEth[0][stor0] >= 0
        balanceOfEth[0][stor0] += 100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10
        require 100 * 10^6 * balanceOfEth[0][address(msg.sender)] / sub_5a679e1f + 10^18 / 10^10 <= balanceOfEth[0][address(msg.sender)]
        balanceOfEth[0][address(msg.sender)] = 0
    else:
        require rate
        require balanceOfEth[stor6][stor0] / rate <= sub_977f19ad
        sub_977f19ad -= balanceOfEth[stor6][stor0] / rate
        require balanceOfEth[stor6][stor0] <= balanceOfEth[stor6][stor0]
        balanceOfEth[stor6][stor0] = 0
        require balanceOfEth[stor6][address(msg.sender)] + balanceOfEth[stor6][stor0] >= balanceOfEth[stor6][address(msg.sender)]
        require balanceOfEth[stor6][address(msg.sender)] + balanceOfEth[stor6][stor0] >= balanceOfEth[stor6][stor0]
        balanceOfEth[stor6][address(msg.sender)] += balanceOfEth[stor6][stor0]
        require balanceOfEth[0][stor1] + (balanceOfEth[stor6][stor0] / rate * sub_5a679e1f) >= balanceOfEth[0][stor1]
        require balanceOfEth[0][stor1] + (balanceOfEth[stor6][stor0] / rate * sub_5a679e1f) >= balanceOfEth[stor6][stor0] / rate * sub_5a679e1f
        balanceOfEth[0][stor1] += balanceOfEth[stor6][stor0] / rate * sub_5a679e1f
        require balanceOfEth[0][stor0] + (balanceOfEth[stor6][stor0] / rate) >= balanceOfEth[0][stor0]
        require balanceOfEth[0][stor0] + (balanceOfEth[stor6][stor0] / rate) >= balanceOfEth[stor6][stor0] / rate
        balanceOfEth[0][stor0] += balanceOfEth[stor6][stor0] / rate
        require balanceOfEth[stor6][stor0] / rate <= balanceOfEth[0][address(msg.sender)]
        require balanceOfEth[stor6][stor0] / rate * sub_5a679e1f <= balanceOfEth[0][address(msg.sender)] - (balanceOfEth[stor6][stor0] / rate)
        balanceOfEth[0][address(msg.sender)] = balanceOfEth[0][address(msg.sender)] - (balanceOfEth[stor6][stor0] / rate) - (balanceOfEth[stor6][stor0] / rate * sub_5a679e1f)
    require balanceOfEth[stor6][address(msg.sender)] <= balanceOfEth[stor6][address(msg.sender)]
    balanceOfEth[stor6][address(msg.sender)] = 0
    require ext_code.size(sub_2df55f90Address)
    call sub_2df55f90Address.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOfEth[stor6][address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdraw(sub_2df55f90Address, msg.sender, balanceOfEth[stor6][address(msg.sender)], balanceOfEth[stor6][address(msg.sender)]);
}



}
