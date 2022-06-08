contract main {




// =====================  Runtime code  =====================


address managerPrimaryAddress;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint128 stor1; offset 168
uint128 stor1; offset 160
address managerSecondaryAddress;
array of struct sub_3c100105;
address sub_972fccedAddress;
address sub_55f47a8cAddress;
uint8 stor5; offset 160
uint8 stor5; offset 168
uint8 stor5; offset 176
uint128 stor5; offset 176
uint128 stor5; offset 168
uint128 stor5; offset 160
address sub_9af05e40Address;

function sub_260eda21(?) {
    return bool(uint8(stor5.field_176))
}

function sub_3c100105(?) {
    require arg2 < sub_3c100105[arg1].field_0
    return sub_3c100105[arg1][arg2].field_0
}

function sub_55f47a8c(?) {
    return sub_55f47a8cAddress
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function sub_8f561c4b(?) {
    return bool(uint8(stor5.field_160))
}

function sub_972fcced(?) {
    return sub_972fccedAddress
}

function sub_9ac0cf93(?) {
    return bool(uint8(stor5.field_168))
}

function sub_9af05e40(?) {
    return sub_9af05e40Address
}

function managerPrimary() {
    return managerPrimaryAddress
}

function error() {
    return bool(uint8(stor1.field_168))
}

function managerSecondary() {
    return managerSecondaryAddress
}

function _fallback() payable {
    revert
}

function unpause() {
    if managerPrimaryAddress != msg.sender:
        require msg.sender == managerSecondaryAddress
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
}

function setPrimaryManager(address arg1) {
    if managerPrimaryAddress != msg.sender:
        require msg.sender == managerSecondaryAddress
    require arg1
    managerPrimaryAddress = arg1
}

function hasError() {
    if managerPrimaryAddress != msg.sender:
        require msg.sender == managerSecondaryAddress
    require uint8(stor1.field_160)
    Mask(88, 0, stor1.field_168) = 1
}

function pause() {
    if managerPrimaryAddress != msg.sender:
        require msg.sender == managerSecondaryAddress
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
}

function setSecondaryManager(address arg1) {
    if managerPrimaryAddress != msg.sender:
        require msg.sender == managerSecondaryAddress
    require arg1
    managerSecondaryAddress = arg1
}

function sub_24e545cf(?) {
    if managerPrimaryAddress != msg.sender:
        require msg.sender == managerSecondaryAddress
    require arg1
    sub_972fccedAddress = arg1
    Mask(96, 0, stor5.field_160) = 1
}

function sub_a39ca8b5(?) {
    if managerPrimaryAddress != msg.sender:
        require msg.sender == managerSecondaryAddress
    require arg1
    sub_9af05e40Address = arg1
    Mask(80, 0, stor5.field_176) = 1
}

function sub_cc921961(?) {
    if managerPrimaryAddress != msg.sender:
        require msg.sender == managerSecondaryAddress
    require arg1
    sub_55f47a8cAddress = arg1
    Mask(88, 0, stor5.field_168) = 1
}

function noError() {
    if managerPrimaryAddress != msg.sender:
        require msg.sender == managerSecondaryAddress
    require uint8(stor1.field_160)
    require uint8(stor1.field_168)
    Mask(88, 0, stor1.field_168) = 0
}

function sub_33f1f3fd(?) {
    require arg1
    if not sub_3c100105[address(arg1)].field_0:
        mem[(32 * sub_3c100105[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_3c100105[address(arg1)].field_0) + 160] = sub_3c100105[address(arg1)].field_0
        mem[(32 * sub_3c100105[address(arg1)].field_0) + 192 len floor32(sub_3c100105[address(arg1)].field_0)] = mem[128 len floor32(sub_3c100105[address(arg1)].field_0)]
        return memory
          from (32 * sub_3c100105[address(arg1)].field_0) + 128
           len (96 * sub_3c100105[address(arg1)].field_0) + 64
    mem[128] = sub_3c100105[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_3c100105[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_3c100105[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_3c100105[address(arg1)].field_0) + 192 len floor32(sub_3c100105[address(arg1)].field_0)] = mem[128 len floor32(sub_3c100105[address(arg1)].field_0)]
    return Array(len=sub_3c100105[address(arg1)].field_0, data=mem[128 len floor32(sub_3c100105[address(arg1)].field_0)], mem[(32 * sub_3c100105[address(arg1)].field_0) + floor32(sub_3c100105[address(arg1)].field_0) + 192 len (32 * sub_3c100105[address(arg1)].field_0) - floor32(sub_3c100105[address(arg1)].field_0)]), 
}

function transferAsset(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    if managerPrimaryAddress != msg.sender:
        require msg.sender == managerSecondaryAddress
    require arg2 > 0
    if arg2 <= 3000:
        require ext_code.size(sub_972fccedAddress)
        call sub_972fccedAddress.0x6352211e with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] == this.address
        require ext_code.size(sub_972fccedAddress)
        call sub_972fccedAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_972fccedAddress)
        call sub_972fccedAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg2 < 5000:
            require ext_code.size(sub_55f47a8cAddress)
            call sub_55f47a8cAddress.0x6352211e with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] == msg.sender
            require ext_code.size(sub_972fccedAddress)
            call sub_972fccedAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_55f47a8cAddress)
            call sub_55f47a8cAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_079e862c(?) {
    require not uint8(stor1.field_160)
    require uint8(stor5.field_176)
    require uint8(stor5.field_160)
    require uint8(stor5.field_168)
    require arg1 > 0
    if arg1 <= 3000:
        require ext_code.size(sub_972fccedAddress)
        call sub_972fccedAddress.0x6352211e with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] == msg.sender
        require ext_code.size(sub_972fccedAddress)
        call sub_972fccedAddress.getCollectibleDetails(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require not ext_call.return_data[128]
        require ext_code.size(sub_972fccedAddress)
        call sub_972fccedAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_972fccedAddress)
        call sub_972fccedAddress.isRedeemed(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_9af05e40Address)
        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), ext_call.return_data[64], arg1, 0, address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_3c100105[address(msg.sender)].field_0++
        sub_3c100105[address(msg.sender)][sub_3c100105[address(msg.sender)].field_0].field_0 = arg1
    else:
        if arg1 < 5000:
            require ext_code.size(sub_55f47a8cAddress)
            call sub_55f47a8cAddress.0x6352211e with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[12 len 20] == msg.sender
            mem[96] = 0x70994b3100000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            require ext_code.size(sub_55f47a8cAddress)
            call sub_55f47a8cAddress.getCollectibleDetails(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 224
            require mem[224] <= 4294967296
            require mem[224] + 32 <= return_data.size
            require mem[mem[224] + 96] <= 4294967296 and mem[224] + mem[mem[224] + 96] + 32 <= return_data.size
            require not mem[256]
            mem[ceil32(return_data.size) + 132] = this.address
            mem[ceil32(return_data.size) + 164] = arg1
            require ext_code.size(sub_55f47a8cAddress)
            call sub_55f47a8cAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_55f47a8cAddress)
            call sub_55f47a8cAddress.isRedeemed(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96] = 0x70994b3100000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = arg1
            require ext_code.size(sub_55f47a8cAddress)
            call sub_55f47a8cAddress.getCollectibleDetails(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 224
            require mem[ceil32(return_data.size) + 224] <= 4294967296
            require mem[ceil32(return_data.size) + 224] + 32 <= return_data.size
            require mem[mem[ceil32(return_data.size) + 224] + ceil32(return_data.size) + 96] <= 4294967296 and mem[ceil32(return_data.size) + 224] + mem[mem[ceil32(return_data.size) + 224] + ceil32(return_data.size) + 96] + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 132] = 0, Mask(224, 32, arg1) >> 32
            mem[(2 * ceil32(return_data.size)) + 164] = arg1
            mem[(2 * ceil32(return_data.size)) + 196] = 0
            mem[(2 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(sub_9af05e40Address)
            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size) + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_3c100105[address(msg.sender)].field_0++
            sub_3c100105[address(msg.sender)][sub_3c100105[address(msg.sender)].field_0].field_0 = arg1
}



}
