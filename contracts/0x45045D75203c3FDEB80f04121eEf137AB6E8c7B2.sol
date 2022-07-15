contract main {




// =====================  Runtime code  =====================


address adminAddress;
array of struct assets;
mapping of uint8 stor4;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of struct stor80084422859880547211683076133703299733277748156566366325829078699459944779001;

function lastWeekPrices(uint256 arg1, uint256 arg2) {
    require arg1 < stor3.length
    require arg2 < 8
    return stor[arg2 + (8 * arg1) + ('name', 'stor3', 3)].field_0
}

function readers(address arg1) {
    return bool(stor4[arg1])
}

function assets(uint256 arg1) {
    require arg1 < assets.length
    return assets[arg1].field_0, assets[arg1].field_256, assets[arg1].field_512, uint8(assets[arg1].field_768)
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function addReader(address arg1) {
    require msg.sender == adminAddress
    stor4[address(arg1)] = 1
}

function sub_21bbd366(?) {
    require arg1 < stor3.length
    idx = 352
    s = 8 * arg1
    while 608 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor3[arg1].field_0, mem[384 len 224]
}

function getCurrentPrice(uint256 arg1) {
    if adminAddress != msg.sender:
        require stor4[msg.sender]
    require arg1 < stor2.length
    require arg1 < assets.length
    require uint8(assets[arg1].field_768) < 8
    return stor[uint8(stor1[arg1].field_768) + (8 * arg1) + ('name', 'stor2', 2)].field_0
}

function getCurrentPrices(uint256 arg1) {
    if adminAddress != msg.sender:
        require stor4[msg.sender]
    require arg1 < stor2.length
    idx = 352
    s = 8 * arg1
    while 608 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor2[arg1].field_0, mem[384 len 224]
}

function editPrice(uint256 arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require arg1 < assets.length
    require block.timestamp < assets[arg1].field_256 + 1800
    require arg1 < stor2.length
    require uint8(assets[arg1].field_768) < 8
    stor[uint8(stor1[arg1].field_768) + ('name', 'stor2', 2) + (8 * arg1)].field_0 = arg2
    emit 0x87634bae: assets[arg1].field_0, arg2, block.timestamp, arg1
    emit 0xf97e20bc: arg2, arg1, assets[arg1].field_0
}

function sub_1a0d25b5(?) {
    require msg.sender == adminAddress
    require arg1 < assets.length
    require block.timestamp > assets[arg1].field_256 + (18 * 3600)
    uint8(assets[arg1].field_768) = uint8(uint8(assets[arg1].field_768) + 1)
    assets[arg1].field_256 = block.timestamp
    require arg1 < stor2.length
    require uint8(assets[arg1].field_768) < 8
    stor[uint8(stor1[arg1].field_768) + ('name', 'stor2', 2) + (8 * arg1)].field_0 = arg2
    emit 0x87634bae: assets[arg1].field_0, arg2, block.timestamp, arg1
}

function setSettlePrice(uint256 arg1, uint256 arg2) {
    mem[96 len 256] = code.data[3225 len 256]
    require msg.sender == adminAddress
    require arg1 < assets.length
    require block.timestamp > assets[arg1].field_256 + (18 * 3600)
    require block.timestamp > assets[arg1].field_512 + (96 * 24 * 3600)
    require arg1 < stor2.length
    require arg1 < stor3.length
    s = 8 * arg1
    idx = 8 * arg1
    while (8 * arg1) + 8 > idx:
        stor3[s].field_0 = stor2[idx].field_0
        s = s + 1
        idx = idx + 1
        continue 
    idx = (8 * arg1) + 8
    while (8 * arg1) + 8 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(assets[arg1].field_768) = 0
    mem[96] = arg2
    require arg1 < stor2.length
    s = 8 * arg1
    idx = 96
    while 352 > idx:
        stor2[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (8 * arg1) + 8
    while (8 * arg1) + 8 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    assets[arg1].field_256 = block.timestamp
    assets[arg1].field_512 = block.timestamp
    emit 0x87634bae: assets[arg1].field_0, arg2, block.timestamp, arg1
    emit 0x3bc32acc: assets[arg1].field_0, arg2, block.timestamp, arg1
}

function addAsset(bytes32 arg1, uint256 arg2) {
    mem[224 len 256] = code.data[3225 len 256]
    if adminAddress != msg.sender:
        require this.address == msg.sender
    assets.length++
    assets[assets.length].field_0 = arg1
    storB10E[stor1.length] = block.timestamp
    storB10E[stor1.length] = block.timestamp
    uint8(storB10E[stor1.length].field_0) = 0
    storB10E[stor1.length].field_256 % 1 = 0
    stor3.length++
    s = (8 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    idx = 224
    while 480 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (8 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e079d
    while (8 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e079d > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[224] = arg2
    stor2.length++
    s = (8 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = 224
    while 480 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (8 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad6
    while (8 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad6 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    emit 0xeddd6324: arg1, arg2, assets.length - 1
    emit 0x87634bae: arg1, arg2, block.timestamp, assets.length - 1
    return (assets.length - 1)
}



}
