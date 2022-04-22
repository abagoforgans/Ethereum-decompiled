contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of struct stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor3 = 10^10
    stor4 = 1000
    stor5 = 50
    require not msg.value
    mem[96 len -3317] = code.data[3994 len -3317]
    mem[64] = -3221
    _2 = mem[96]
    _3 = mem[128]
    _4 = mem[160]
    _5 = mem[192]
    _6 = mem[224]
    stor0 = msg.sender
    require stor0 == msg.sender
    require mem[mem[128] + 96] == mem[mem[160] + 96]
    require mem[mem[160] + 96] == mem[mem[96] + 96]
    stor2.length = mem[mem[96] + 96]
    if not stor2.length > mem[mem[96] + 96]:
        _41 = mem[mem[96] + 96]
        idx = 0
        s = 0
        while idx < _41:
            _42 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[_2 + 96]
            mem[_42] = mem[(32 * idx) + _2 + 140 len 20]
            require idx < mem[_3 + 96]
            mem[_42 + 32] = mem[(32 * idx) + _3 + 128]
            require idx < mem[_4 + 96]
            mem[_42 + 64] = mem[(32 * idx) + _4 + 128]
            require idx < stor2.length
            mem[0] = 2
            stor2[idx].field_0 = mem[_42 + 12 len 20]
            stor2[idx].field_256 = mem[_42 + 32]
            stor2[idx].field_512 = mem[_42 + 64]
            require idx < mem[_4 + 96]
            idx = idx + 1
            s = s + mem[(32 * idx) + _4 + 128]
            continue 
        stor1 = address(_6)
        stor5 = _5
        if _5 + (s * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41 * _41) <= 1000:
            return code.data[677 len 3317]
    else:
        mem[0] = 2
        idx = 3 * mem[mem[96] + 96]
        while 3 * stor2.length > idx:
            stor2[idx].field_0 = 0
            stor2[idx].field_256 = 0
            stor2[idx].field_512 = 0
            idx = idx + 3
            continue 
        _69 = mem[mem[96] + 96]
        idx = 0
        s = 0
        while idx < _69:
            _70 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[_2 + 96]
            mem[_70] = mem[(32 * idx) + _2 + 140 len 20]
            require idx < mem[_3 + 96]
            mem[_70 + 32] = mem[(32 * idx) + _3 + 128]
            require idx < mem[_4 + 96]
            mem[_70 + 64] = mem[(32 * idx) + _4 + 128]
            require idx < stor2.length
            mem[0] = 2
            stor2[idx].field_0 = mem[_70 + 12 len 20]
            stor2[idx].field_256 = mem[_70 + 32]
            stor2[idx].field_512 = mem[_70 + 64]
            require idx < mem[_4 + 96]
            idx = idx + 1
            s = s + mem[(32 * idx) + _4 + 128]
            continue 
        stor1 = address(_6)
        stor5 = _5
        if _5 + (s * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69 * _69) <= 1000:
            return code.data[677 len 3317]
    revert
}



// =====================  Runtime code  =====================


address owner;
address sponsorAddress;
array of struct assets;
uint256 sub_bc9113f0;
uint256 sub_011dca50;
uint256 sub_d65bcbf2;
uint256 sub_fded8162;

function sub_011dca50(?) {
    return sub_011dca50
}

function sponsor() {
    return sponsorAddress
}

function owner() {
    return owner
}

function sub_bc9113f0(?) {
    return sub_bc9113f0
}

function assets(uint256 arg1) {
    require arg1 < assets.length
    return assets[arg1].field_0, assets[arg1].field_256, assets[arg1].field_512
}

function sub_d65bcbf2(?) {
    return sub_d65bcbf2
}

function sub_fded8162(?) {
    return sub_fded8162
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

function sub_071e41d7(?) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
}

function withdrawAssets() {
    require owner == msg.sender
    idx = 0
    while idx < assets.length:
        mem[0] = 2
        require owner == msg.sender
        mem[128] = 0
        mem[100] = this.address
        require ext_code.size(assets[idx].field_0)
        call assets[idx].field_0.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] > 0:
            mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            mem[132] = ext_call.return_data[0]
            require ext_code.size(assets[idx].field_0)
            call assets[idx].field_0.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0]
            require ext_call.success
        idx = idx + 1
        continue 
}

function sub_42391449(?) {
    s = 0
    t = 0
    idx = 0
    u = 0
    v = 10000000 * 10^18
    while idx < assets.length:
        mem[0] = 2
        if assets[idx].field_512 <= 0:
            s = s
            t = t
            idx = idx + 1
            u = u
            v = v
            continue 
        require idx < assets.length
        mem[0] = 2
        if assets[idx].field_256 <= 0:
            s = s
            t = t
            idx = idx + 1
            u = u
            v = v
            continue 
        require idx < assets.length
        mem[128] = 0
        mem[100] = this.address
        require ext_code.size(assets[idx].field_0)
        call assets[idx].field_0.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require sub_bc9113f0
        require idx < assets.length
        mem[0] = 2
        require assets[idx].field_512
        if ext_call.return_data[0] * assets[idx].field_256 / sub_bc9113f0 * sub_011dca50 / assets[idx].field_512 > v:
            s = ext_call.return_data[0] * assets[idx].field_256 / sub_bc9113f0 * sub_011dca50 / assets[idx].field_512
            t = assets[idx].field_0
            idx = idx + 1
            u = u
            v = v
            continue 
        require idx < assets.length
        mem[0] = 2
        s = ext_call.return_data[0] * assets[idx].field_256 / sub_bc9113f0 * sub_011dca50 / assets[idx].field_512
        t = assets[idx].field_0
        idx = idx + 1
        u = assets[idx].field_0
        v = ext_call.return_data[0] * assets[idx].field_256 / sub_bc9113f0 * sub_011dca50 / assets[idx].field_512
        continue 
    return v, address(u)
}

function buy() payable {
    require msg.value > 0
    idx = 0
    while idx < assets.length:
        mem[0] = 2
        require assets[idx].field_256 > 0
        require sub_011dca50
        if assets[idx].field_512:
            require assets[idx].field_512
            require sub_bc9113f0 * assets[idx].field_512 / assets[idx].field_512 == sub_bc9113f0
        require assets[idx].field_256
        if msg.value / sub_011dca50:
            require msg.value / sub_011dca50
            require sub_bc9113f0 * assets[idx].field_512 / assets[idx].field_256 * msg.value / sub_011dca50 / msg.value / sub_011dca50 == sub_bc9113f0 * assets[idx].field_512 / assets[idx].field_256
        require ext_code.size(assets[idx].field_0)
        call assets[idx].field_0.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] >= sub_bc9113f0 * assets[idx].field_512 / assets[idx].field_256 * msg.value / sub_011dca50
        mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = sub_bc9113f0 * assets[idx].field_512 / assets[idx].field_256 * msg.value / sub_011dca50
        require ext_code.size(assets[idx].field_0)
        call assets[idx].field_0.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, sub_bc9113f0 * assets[idx].field_512 / assets[idx].field_256 * msg.value / sub_011dca50
        require ext_call.success
        idx = idx + 1
        continue 
    require 1 <= assets.length
    require assets.length - 1 < assets.length
    require assets[assets.length].field_0 > 0
    require sub_011dca50
    if sub_d65bcbf2:
        require sub_d65bcbf2
        require sub_bc9113f0 * sub_d65bcbf2 / sub_d65bcbf2 == sub_bc9113f0
    require assets[assets.length].field_0
    if msg.value / sub_011dca50:
        require msg.value / sub_011dca50
        require sub_bc9113f0 * sub_d65bcbf2 / assets[assets.length].field_0 * msg.value / sub_011dca50 / msg.value / sub_011dca50 == sub_bc9113f0 * sub_d65bcbf2 / assets[assets.length].field_0
    require ext_code.size(assets[assets.length].field_0)
    call assets[assets.length].field_0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= sub_bc9113f0 * sub_d65bcbf2 / assets[assets.length].field_0 * msg.value / sub_011dca50
    require ext_code.size(assets[assets.length].field_0)
    call assets[assets.length].field_0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args sponsorAddress, sub_bc9113f0 * sub_d65bcbf2 / assets[assets.length].field_0 * msg.value / sub_011dca50
    require ext_call.success
}

function _fallback() payable {
    if msg.value > 0:
        idx = 0
        while idx < assets.length:
            mem[0] = 2
            require assets[idx].field_256 > 0
            require sub_011dca50
            if assets[idx].field_512:
                require assets[idx].field_512
                require sub_bc9113f0 * assets[idx].field_512 / assets[idx].field_512 == sub_bc9113f0
            require assets[idx].field_256
            if msg.value / sub_011dca50:
                require msg.value / sub_011dca50
                require sub_bc9113f0 * assets[idx].field_512 / assets[idx].field_256 * msg.value / sub_011dca50 / msg.value / sub_011dca50 == sub_bc9113f0 * assets[idx].field_512 / assets[idx].field_256
            require ext_code.size(assets[idx].field_0)
            call assets[idx].field_0.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] >= sub_bc9113f0 * assets[idx].field_512 / assets[idx].field_256 * msg.value / sub_011dca50
            mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            mem[132] = sub_bc9113f0 * assets[idx].field_512 / assets[idx].field_256 * msg.value / sub_011dca50
            require ext_code.size(assets[idx].field_0)
            call assets[idx].field_0.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, sub_bc9113f0 * assets[idx].field_512 / assets[idx].field_256 * msg.value / sub_011dca50
            require ext_call.success
            idx = idx + 1
            continue 
        require 1 <= assets.length
        require assets.length - 1 < assets.length
        require assets[assets.length].field_0 > 0
        require sub_011dca50
        if sub_d65bcbf2:
            require sub_d65bcbf2
            require sub_bc9113f0 * sub_d65bcbf2 / sub_d65bcbf2 == sub_bc9113f0
        require assets[assets.length].field_0
        if msg.value / sub_011dca50:
            require msg.value / sub_011dca50
            require sub_bc9113f0 * sub_d65bcbf2 / assets[assets.length].field_0 * msg.value / sub_011dca50 / msg.value / sub_011dca50 == sub_bc9113f0 * sub_d65bcbf2 / assets[assets.length].field_0
        require ext_code.size(assets[assets.length].field_0)
        call assets[assets.length].field_0.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] >= sub_bc9113f0 * sub_d65bcbf2 / assets[assets.length].field_0 * msg.value / sub_011dca50
        require ext_code.size(assets[assets.length].field_0)
        call assets[assets.length].field_0.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args sponsorAddress, sub_bc9113f0 * sub_d65bcbf2 / assets[assets.length].field_0 * msg.value / sub_011dca50
        require ext_call.success
}

function sub_55962ca5(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require owner == msg.sender
    require arg2.length == arg3.length
    require arg3.length == arg1.length
    assets.length = arg1.length
    if not assets.length > arg1.length:
        idx = 0
        s = 0
        while idx < arg1.length:
            _39 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[_39] = mem[(32 * idx) + 140 len 20]
            require idx < mem[(32 * arg1.length) + 128]
            mem[_39 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[_39 + 64] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx < assets.length
            mem[0] = 2
            assets[idx].field_0 = mem[_39 + 12 len 20]
            assets[idx].field_256 = mem[_39 + 32]
            assets[idx].field_512 = mem[_39 + 64]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            continue 
    else:
        mem[0] = 2
        idx = 3 * arg1.length
        while 3 * assets.length > idx:
            assets[idx].field_0 = 0
            assets[idx].field_256 = 0
            assets[idx].field_512 = 0
            idx = idx + 3
            continue 
        idx = 0
        s = 0
        while idx < arg1.length:
            _67 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[_67] = mem[(32 * idx) + 140 len 20]
            require idx < mem[(32 * arg1.length) + 128]
            mem[_67 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[_67 + 64] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx < assets.length
            mem[0] = 2
            assets[idx].field_0 = mem[_67 + 12 len 20]
            assets[idx].field_256 = mem[_67 + 32]
            assets[idx].field_512 = mem[_67 + 64]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            continue 
    sponsorAddress = arg5
    sub_d65bcbf2 = arg4
    require arg4 + (s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) <= 1000
}



}
