contract main {




// =====================  Runtime code  =====================


address managerPrimaryAddress;
uint8 stor1; offset 160
uint8 stor1; offset 168
address managerSecondaryAddress;
array of struct stor2;
address sub_972fccedAddress;
address sub_55f47a8cAddress;
uint8 stor5; offset 160
uint8 stor5; offset 168
uint8 stor5; offset 176
address sub_9af05e40Address;

function sub_260eda21(?) {
    return bool(uint8(stor5.field_176))
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
        require managerSecondaryAddress == msg.sender
    require uint8(stor1.field_160)
    uint8(stor1.field_160) = 0
}

function hasError() {
    if managerPrimaryAddress != msg.sender:
        require managerSecondaryAddress == msg.sender
    require uint8(stor1.field_160)
    uint8(stor1.field_168) = 1
}

function pause() {
    if managerPrimaryAddress != msg.sender:
        require managerSecondaryAddress == msg.sender
    require not uint8(stor1.field_160)
    uint8(stor1.field_160) = 1
}

function setPrimaryManager(address arg1) {
    if managerPrimaryAddress != msg.sender:
        require managerSecondaryAddress == msg.sender
    require arg1
    managerPrimaryAddress = arg1
}

function setSecondaryManager(address arg1) {
    if managerPrimaryAddress != msg.sender:
        require managerSecondaryAddress == msg.sender
    require arg1
    managerSecondaryAddress = arg1
}

function sub_24e545cf(?) {
    if managerPrimaryAddress != msg.sender:
        require managerSecondaryAddress == msg.sender
    require arg1
    sub_972fccedAddress = arg1
    uint8(stor5.field_160) = 1
}

function sub_a39ca8b5(?) {
    if managerPrimaryAddress != msg.sender:
        require managerSecondaryAddress == msg.sender
    require arg1
    sub_9af05e40Address = arg1
    uint8(stor5.field_176) = 1
}

function sub_cc921961(?) {
    if managerPrimaryAddress != msg.sender:
        require managerSecondaryAddress == msg.sender
    require arg1
    sub_55f47a8cAddress = arg1
    uint8(stor5.field_168) = 1
}

function noError() {
    if managerPrimaryAddress != msg.sender:
        require managerSecondaryAddress == msg.sender
    require uint8(stor1.field_160)
    require uint8(stor1.field_168)
    uint8(stor1.field_168) = 0
}

function sub_33f1f3fd(?) {
    require arg1
    if not stor2[address(arg1)].field_0:
        mem[(32 * stor2[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
        mem[(32 * stor2[address(arg1)].field_0) + 192 len floor32(stor2[address(arg1)].field_0)] = mem[128 len floor32(stor2[address(arg1)].field_0)]
        return memory
          from (32 * stor2[address(arg1)].field_0) + 128
           len (96 * stor2[address(arg1)].field_0) + 64
    mem[128] = stor2[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor2[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor2[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2[address(arg1)].field_0) + 192 len floor32(stor2[address(arg1)].field_0)] = mem[128 len floor32(stor2[address(arg1)].field_0)]
    return Array(len=stor2[address(arg1)].field_0, data=mem[128 len floor32(stor2[address(arg1)].field_0)], mem[(32 * stor2[address(arg1)].field_0) + floor32(stor2[address(arg1)].field_0) + 192 len (32 * stor2[address(arg1)].field_0) - floor32(stor2[address(arg1)].field_0)]), 
}

function transferAsset(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    if managerPrimaryAddress != msg.sender:
        require managerSecondaryAddress == msg.sender
    require arg2 > 0
    require arg1
    if arg2 > 0:
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
                require ext_call.return_data[12 len 20] == this.address
                require ext_code.size(sub_55f47a8cAddress)
                call sub_55f47a8cAddress.approve(address arg1, uint256 arg2) with:
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
        if ext_call.return_data[64] != 1:
            if ext_call.return_data[64]:
                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
            else:
                if 1 == ext_call.return_data[96]:
                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), 10000, arg1, 0, address(this.address)
                else:
                    if ext_call.return_data[64]:
                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                    else:
                        if 2 == ext_call.return_data[96]:
                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), 10001, arg1, 0, address(this.address)
                        else:
                            if ext_call.return_data[64]:
                                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                            else:
                                if ext_call.return_data[96] != 3:
                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                                else:
                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), 10002, arg1, 0, address(this.address)
        else:
            if 1 == ext_call.return_data[96]:
                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), 2, arg1, 0, address(this.address)
            else:
                if ext_call.return_data[64] != 1:
                    if ext_call.return_data[64]:
                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                    else:
                        if 1 == ext_call.return_data[96]:
                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), 10000, arg1, 0, address(this.address)
                        else:
                            if ext_call.return_data[64]:
                                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                            else:
                                if 2 == ext_call.return_data[96]:
                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), 10001, arg1, 0, address(this.address)
                                else:
                                    if ext_call.return_data[64]:
                                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                                    else:
                                        if ext_call.return_data[96] != 3:
                                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                                        else:
                                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), 10002, arg1, 0, address(this.address)
                else:
                    if 2 == ext_call.return_data[96]:
                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), 3, arg1, 0, address(this.address)
                    else:
                        if ext_call.return_data[64] != 1:
                            if ext_call.return_data[64]:
                                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                            else:
                                if 1 == ext_call.return_data[96]:
                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), 10000, arg1, 0, address(this.address)
                                else:
                                    if ext_call.return_data[64]:
                                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                                    else:
                                        if 2 == ext_call.return_data[96]:
                                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), 10001, arg1, 0, address(this.address)
                                        else:
                                            if ext_call.return_data[64]:
                                                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                                            else:
                                                if ext_call.return_data[96] != 3:
                                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                                                else:
                                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, uint32(msg.sender), 10002, arg1, 0, address(this.address)
                        else:
                            if 3 == ext_call.return_data[96]:
                                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), 4, arg1, 0, address(this.address)
                            else:
                                if ext_call.return_data[64]:
                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                                else:
                                    if 1 == ext_call.return_data[96]:
                                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args 0, uint32(msg.sender), 10000, arg1, 0, address(this.address)
                                    else:
                                        if ext_call.return_data[64]:
                                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                                        else:
                                            if 2 == ext_call.return_data[96]:
                                                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, uint32(msg.sender), 10001, arg1, 0, address(this.address)
                                            else:
                                                if ext_call.return_data[64]:
                                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                                                else:
                                                    if ext_call.return_data[96] != 3:
                                                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                             gas gas_remaining wei
                                                            args 0, uint32(msg.sender), 0, arg1, 0, address(this.address)
                                                    else:
                                                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                             gas gas_remaining wei
                                                            args 0, uint32(msg.sender), 10002, arg1, 0, address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor2[address(msg.sender)].field_0++
        stor2[address(msg.sender)][stor2[address(msg.sender)].field_0].field_0 = arg1
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
            require return_data.size >= mem[mem[224] + 96] + mem[224] + 32 and mem[mem[224] + 96] <= 4294967296
            require not mem[256]
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
            require ext_code.size(sub_9af05e40Address)
            if mem[160] != 1:
                if mem[160]:
                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg1, 0, this.address
                else:
                    if 1 == mem[192]:
                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                             gas gas_remaining wei
                            args msg.sender, 10000, arg1, 0, this.address
                    else:
                        if mem[160]:
                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, 0, this.address
                        else:
                            if 2 == mem[192]:
                                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10001, arg1, 0, this.address
                            else:
                                if mem[160]:
                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg1, 0, this.address
                                else:
                                    if mem[192] != 3:
                                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0, arg1, 0, this.address
                                    else:
                                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, 10002, arg1, 0, this.address
            else:
                if 1 == mem[192]:
                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                         gas gas_remaining wei
                        args msg.sender, 2, arg1, 0, this.address
                else:
                    if mem[160] != 1:
                        if mem[160]:
                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, arg1, 0, this.address
                        else:
                            if 1 == mem[192]:
                                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10000, arg1, 0, this.address
                            else:
                                if mem[160]:
                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg1, 0, this.address
                                else:
                                    if 2 == mem[192]:
                                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, 10001, arg1, 0, this.address
                                    else:
                                        if mem[160]:
                                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0, arg1, 0, this.address
                                        else:
                                            if mem[192] != 3:
                                                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0, arg1, 0, this.address
                                            else:
                                                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10002, arg1, 0, this.address
                    else:
                        if 2 == mem[192]:
                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, 3, arg1, 0, this.address
                        else:
                            if mem[160] != 1:
                                if mem[160]:
                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, arg1, 0, this.address
                                else:
                                    if 1 == mem[192]:
                                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, 10000, arg1, 0, this.address
                                    else:
                                        if mem[160]:
                                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0, arg1, 0, this.address
                                        else:
                                            if 2 == mem[192]:
                                                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10001, arg1, 0, this.address
                                            else:
                                                if mem[160]:
                                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0, arg1, 0, this.address
                                                else:
                                                    if mem[192] != 3:
                                                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0, arg1, 0, this.address
                                                    else:
                                                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10002, arg1, 0, this.address
                            else:
                                if 3 == mem[192]:
                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, 4, arg1, 0, this.address
                                else:
                                    if mem[160]:
                                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0, arg1, 0, this.address
                                    else:
                                        if 1 == mem[192]:
                                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10000, arg1, 0, this.address
                                        else:
                                            if mem[160]:
                                                call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0, arg1, 0, this.address
                                            else:
                                                if 2 == mem[192]:
                                                    call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10001, arg1, 0, this.address
                                                else:
                                                    if mem[160]:
                                                        call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0, arg1, 0, this.address
                                                    else:
                                                        if mem[192] != 3:
                                                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0, arg1, 0, this.address
                                                        else:
                                                            call sub_9af05e40Address.spawnAssetWithCreator(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10002, arg1, 0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor2[address(msg.sender)].field_0++
            stor2[address(msg.sender)][stor2[address(msg.sender)].field_0].field_0 = arg1
}



}
