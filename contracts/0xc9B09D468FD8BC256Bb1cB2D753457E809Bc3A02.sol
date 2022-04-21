contract main {


// =======================  Init code  ======================


address stor0;
mapping of address stor1;
address stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor5 = 10^10
    stor6 = 1000
    require not msg.value
    mem[96 len -3472] = code.data[4194 len -3472]
    mem[64] = -3376
    stor0 = msg.sender
    require stor0 == msg.sender
    require mem[mem[128] + 96] == mem[mem[160] + 96]
    require mem[mem[160] + 96] == mem[mem[96] + 96]
    stor3.length = mem[mem[128] + 96]
    if not stor3.length <= mem[mem[128] + 96]:
        mem[0] = 3
        idx = mem[mem[128] + 96]
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor4.length = mem[mem[160] + 96]
    if not stor4.length <= mem[mem[160] + 96]:
        mem[0] = 4
        idx = mem[mem[160] + 96]
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        mem[32] = 1
        stor1[idx] = mem[(32 * idx) + mem[96] + 140 len 20]
        require idx < mem[mem[128] + 96]
        require idx < stor3.length
        stor3[idx] = mem[(32 * idx) + mem[128] + 128]
        require idx < mem[mem[160] + 96]
        require idx < stor4.length
        mem[0] = 4
        stor4[idx] = mem[(32 * idx) + mem[160] + 128]
        require idx < mem[mem[160] + 96]
        require mem[(32 * idx) + mem[160] + 128] + stor8 >= stor8
        idx = idx + 1
        continue 
    stor2 = mem[236 len 20]
    stor7 = mem[192]
    require mem[192] + stor8 >= stor8
    require stor8 <= 1000
    return code.data[722 len 3472]
}



// =====================  Runtime code  =====================


address owner;
mapping of address assets;
address sponsorAddress;
array of uint256 prices;
array of uint256 ratios;
uint256 sub_bc9113f0;
uint256 sub_011dca50;
uint256 sub_d65bcbf2;
uint256 sub_90c662ed;

function sub_011dca50(?) {
    return sub_011dca50
}

function ratios(uint256 arg1) {
    require arg1 < ratios.length
    return ratios[arg1]
}

function sponsor() {
    return sponsorAddress
}

function owner() {
    return owner
}

function sub_90c662ed(?) {
    return sub_90c662ed
}

function prices(uint256 arg1) {
    require arg1 < prices.length
    return prices[arg1]
}

function sub_bc9113f0(?) {
    return sub_bc9113f0
}

function assets(uint256 arg1) {
    return assets[arg1]
}

function sub_d65bcbf2(?) {
    return sub_d65bcbf2
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function withdrawEther() {
    require owner == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawAssets() {
    require owner == msg.sender
    idx = 0
    while idx < prices.length:
        mem[0] = idx
        mem[32] = 1
        require owner == msg.sender
        require ext_code.size(assets[idx])
        call assets[idx].0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(this.address)
        require ext_call.success
        require ext_call.return_data[0] >= 0
        require ext_code.size(assets[idx])
        call assets[idx].approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), ext_call.return_data[0]
        require ext_call.success
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = ext_call.return_data[0]
        require ext_code.size(assets[idx])
        call assets[idx].0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(this.address), msg.sender, ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}

function sub_55962ca5(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require owner == msg.sender
    require arg2.length == arg3.length
    require arg3.length == arg1.length
    prices.length = arg2.length
    if not prices.length <= arg2.length:
        idx = arg2.length
        while prices.length > idx:
            prices[idx] = 0
            idx = idx + 1
            continue 
    ratios.length = arg3.length
    if not ratios.length <= arg3.length:
        idx = arg3.length
        while ratios.length > idx:
            ratios[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[32] = 1
        assets[idx] = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        require idx < prices.length
        prices[idx] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg3.length
        require idx < ratios.length
        mem[0] = 4
        ratios[idx] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < arg3.length
        require mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] + sub_90c662ed >= sub_90c662ed
        idx = idx + 1
        continue 
    sponsorAddress = arg5
    sub_d65bcbf2 = arg4
    require arg4 + sub_90c662ed >= sub_90c662ed
    require sub_90c662ed <= 1000
}

function sub_42391449(?) {
    s = 0
    idx = 0
    t = 0
    u = 10000000 * 10^18
    while idx < prices.length:
        require idx < ratios.length
        mem[0] = 4
        if ratios[idx] <= 0:
            s = s
            idx = idx + 1
            t = t
            u = u
            continue 
        require idx < prices.length
        mem[0] = 3
        if prices[idx] <= 0:
            s = s
            idx = idx + 1
            t = t
            u = u
            continue 
        require idx < prices.length
        mem[32] = 1
        mem[128] = 0
        mem[100] = this.address
        require ext_code.size(assets[idx])
        call assets[idx].0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require prices[idx] * ext_call.return_data[0] / ext_call.return_data[0] == prices[idx]
        require sub_bc9113f0
        require idx < ratios.length
        mem[0] = 4
        require ratios[idx]
        if prices[idx] * ext_call.return_data[0] / sub_bc9113f0:
            require prices[idx] * ext_call.return_data[0] / sub_bc9113f0
            require sub_011dca50 / ratios[idx] * prices[idx] * ext_call.return_data[0] / sub_bc9113f0 / prices[idx] * ext_call.return_data[0] / sub_bc9113f0 == sub_011dca50 / ratios[idx]
        if sub_011dca50 / ratios[idx] * prices[idx] * ext_call.return_data[0] / sub_bc9113f0 > u:
            s = sub_011dca50 / ratios[idx] * prices[idx] * ext_call.return_data[0] / sub_bc9113f0
            idx = idx + 1
            t = t
            u = u
            continue 
        mem[0] = idx
        mem[32] = 1
        s = sub_011dca50 / ratios[idx] * prices[idx] * ext_call.return_data[0] / sub_bc9113f0
        idx = idx + 1
        t = assets[idx]
        u = sub_011dca50 / ratios[idx] * prices[idx] * ext_call.return_data[0] / sub_bc9113f0
        continue 
    return u, address(t)
}

function _fallback() payable {
    idx = 0
    while idx < prices.length:
        mem[32] = 1
        require idx < ratios.length
        mem[0] = 4
        require prices[idx] > 0
        require sub_011dca50
        if msg.value / sub_011dca50:
            require msg.value / sub_011dca50
            require ratios[idx] * msg.value / sub_011dca50 / msg.value / sub_011dca50 == ratios[idx]
        if ratios[idx] * msg.value / sub_011dca50:
            require ratios[idx] * msg.value / sub_011dca50
            require sub_bc9113f0 * ratios[idx] * msg.value / sub_011dca50 / ratios[idx] * msg.value / sub_011dca50 == sub_bc9113f0
        require prices[idx]
        require ext_code.size(assets[idx])
        call assets[idx].0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(this.address)
        require ext_call.success
        require ext_call.return_data[0] >= sub_bc9113f0 * ratios[idx] * msg.value / sub_011dca50 / prices[idx]
        require ext_code.size(assets[idx])
        call assets[idx].approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), sub_bc9113f0 * ratios[idx] * msg.value / sub_011dca50 / prices[idx]
        require ext_call.success
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = sub_bc9113f0 * ratios[idx] * msg.value / sub_011dca50 / prices[idx]
        require ext_code.size(assets[idx])
        call assets[idx].0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(this.address), msg.sender, sub_bc9113f0 * ratios[idx] * msg.value / sub_011dca50 / prices[idx]
        require ext_call.success
        idx = idx + 1
        continue 
    require 1 <= prices.length
    require prices.length - 1 < prices.length
    require prices[prices.length] > 0
    require sub_011dca50
    if msg.value / sub_011dca50:
        require msg.value / sub_011dca50
        require sub_d65bcbf2 * msg.value / sub_011dca50 / msg.value / sub_011dca50 == sub_d65bcbf2
    if sub_d65bcbf2 * msg.value / sub_011dca50:
        require sub_d65bcbf2 * msg.value / sub_011dca50
        require sub_bc9113f0 * sub_d65bcbf2 * msg.value / sub_011dca50 / sub_d65bcbf2 * msg.value / sub_011dca50 == sub_bc9113f0
    require prices[prices.length]
    require ext_code.size(assets[stor3.length - 1])
    call assets[stor3.length - 1].0x70a08231 with:
         gas gas_remaining - 710 wei
        args address(this.address)
    require ext_call.success
    require ext_call.return_data[0] >= sub_bc9113f0 * sub_d65bcbf2 * msg.value / sub_011dca50 / prices[prices.length]
    require ext_code.size(assets[stor3.length - 1])
    call assets[stor3.length - 1].approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), sub_bc9113f0 * sub_d65bcbf2 * msg.value / sub_011dca50 / prices[prices.length]
    require ext_call.success
    require ext_code.size(assets[stor3.length - 1])
    call assets[stor3.length - 1].0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(this.address), sponsorAddress, sub_bc9113f0 * sub_d65bcbf2 * msg.value / sub_011dca50 / prices[prices.length]
    require ext_call.success
}



}
