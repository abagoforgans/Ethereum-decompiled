contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor1;
address stor2;
address stor3;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require ext_code.size(code.data[10167 len 20])
    call code.data[10167 len 20].0x2f866f73 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
    stor2 = code.data[10199 len 20]
    stor3 = code.data[10231 len 20]
    return code.data[504 len 9651]
}



// =====================  Runtime code  =====================


const sub_2e667c4e(?) = 'ERC721Collateralizer'

const SECONDS_IN_DAY = (24 * 3600)


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address debtRegistryAddress;
address tokenRegistryAddress;
address sub_6f16f14aAddress;
mapping of address sub_656e903b;
mapping of uint8 stor5;
mapping of uint256 stor6;
array of struct stor7;

function debtRegistry() {
    return debtRegistryAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function sub_656e903b(?) {
    return sub_656e903b[arg1]
}

function sub_6f16f14a(?) {
    return sub_6f16f14aAddress
}

function owner() {
    return owner
}

function tokenRegistry() {
    return tokenRegistryAddress
}

function _fallback() payable {
    revert
}

function sub_ca062647(?) {
    return arg1 == 1, Mask(48, 60, arg1) << 148, Mask(56, 4, arg1) >> 4
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ae72c6ef(?) {
    require msg.sender == owner
    require not stor5[address(arg1)]
    stor5[address(arg1)] = 1
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        idx = stor7.length + 1
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7[stor7.length].field_0 = arg1
    stor6[address(arg1)] = stor7.length - 1
    emit Authorized('ERC721Collateralizer', arg1);
}

function sub_9ae1c1f3(?) {
    require msg.sender == owner
    require stor5[address(arg1)]
    require stor7.length - 1 < stor7.length
    stor5[address(arg1)] = 0
    require stor6[address(arg1)] < stor7.length
    stor7[stor6[address(arg1)]].field_0 = stor7[stor7.length].field_0
    stor6[stor7[stor7.length].field_0] = stor6[address(arg1)]
    stor6[address(arg1)] = 0
    require stor7.length - 1 < stor7.length
    stor7[stor7.length].field_0 = 0
    stor7.length--
    if not stor7.length <= stor7.length - 1:
        idx = stor7.length - 1
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit AuthorizationRevoked('ERC721Collateralizer', arg1);
}

function sub_f466f42e(?) {
    if not stor7.length:
        mem[(32 * stor7.length) + 192] = 32
        mem[(32 * stor7.length) + 224] = stor7.length
        mem[(32 * stor7.length) + 256 len floor32(stor7.length)] = mem[192 len floor32(stor7.length)]
        return memory
          from (32 * stor7.length) + 192
           len (96 * stor7.length) + 64
    mem[192] = address(stor7.field_0)
    idx = 192
    s = 0
    while (32 * stor7.length) + 160 > idx:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7.length) + 256 len floor32(stor7.length)] = mem[192 len floor32(stor7.length)]
    return Array(len=stor7.length, data=mem[192 len floor32(stor7.length)], mem[(32 * stor7.length) + floor32(stor7.length) + 256 len (32 * stor7.length) - floor32(stor7.length)]), 
}

function sub_399f120f(?) {
    require ext_code.size(debtRegistryAddress)
    call debtRegistryAddress.0x6be39bda with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(tokenRegistryAddress)
    call tokenRegistryAddress.0x5715c5b7 with:
         gas gas_remaining - 710 wei
        args (Mask(48, 60, ext_call.return_data[32]) >> 60)
    require ext_call.success
    if bool(ext_call.return_data[32]) != 1:
        return ext_call.return_data[12 len 20], Mask(56, 4, ext_call.return_data[32]) << 196, address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4f6ccce7 with:
         gas gas_remaining - 710 wei
        args (Mask(56, 4, ext_call.return_data[32]) >> 4)
    require ext_call.success
    return address(ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0])
}

function sub_649404bd(?) {
    require stor5[address(msg.sender)]
    require not uint8(stor0.field_160)
    require ext_code.size(debtRegistryAddress)
    call debtRegistryAddress.0x6be39bda with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(tokenRegistryAddress)
    call tokenRegistryAddress.0x5715c5b7 with:
         gas gas_remaining - 710 wei
        args (Mask(48, 60, ext_call.return_data[32]) >> 60)
    require ext_call.success
    if bool(ext_call.return_data[32]) != 1:
        require address(ext_call.return_data[0]) == msg.sender
        require ext_call.return_data[12 len 20]
        require not sub_656e903b[arg1]
        sub_656e903b[arg1] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(arg2), address(this.address), Mask(56, 4, ext_call.return_data[32]) >> 4
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x6352211e with:
             gas gas_remaining - 710 wei
            args (Mask(56, 4, ext_call.return_data[32]) >> 4)
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        emit 0x38f12634: (Mask(56, 4, ext_call.return_data[32]) >> 4), arg1, address(ext_call.return_data[0])
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4f6ccce7 with:
             gas gas_remaining - 710 wei
            args (Mask(56, 4, ext_call.return_data[32]) >> 4)
        require ext_call.success
        require address(ext_call.return_data[0]) == msg.sender
        require address(ext_call.return_data[0])
        require not sub_656e903b[arg1]
        sub_656e903b[arg1] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(arg2), address(this.address), ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x6352211e with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        emit 0x38f12634: ext_call.return_data[0], arg1, address(ext_call.return_data[0])
    return 1
}

function sub_44c4ea95(?) {
    require not uint8(stor0.field_160)
    require ext_code.size(debtRegistryAddress)
    call debtRegistryAddress.0x6be39bda with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(tokenRegistryAddress)
    call tokenRegistryAddress.0x5715c5b7 with:
         gas gas_remaining - 710 wei
        args (Mask(48, 60, ext_call.return_data[32]) >> 60)
    require ext_call.success
    if bool(ext_call.return_data[32]) != 1:
        require sub_656e903b[arg1]
        sub_656e903b[arg1] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x3a896a1 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x2762dd8c with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x99114d84 with:
             gas gas_remaining - 710 wei
            args arg1, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        if sub_6f16f14aAddress == address(ext_call.return_data[0]):
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(this.address), Mask(56, 4, ext_call.return_data[32]) >> 4
            require ext_call.success
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(this.address), sub_656e903b[arg1], Mask(56, 4, ext_call.return_data[32]) >> 4
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x6352211e with:
             gas gas_remaining - 710 wei
            args (Mask(56, 4, ext_call.return_data[32]) >> 4)
        require ext_call.success
        require ext_call.return_data[12 len 20] == sub_656e903b[arg1]
        emit 0x2621540e: address(ext_call.return_data[0]), Mask(56, 4, ext_call.return_data[32]) >> 4, arg1, sub_656e903b[arg1]
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4f6ccce7 with:
             gas gas_remaining - 710 wei
            args (Mask(56, 4, ext_call.return_data[32]) >> 4)
        require ext_call.success
        require sub_656e903b[arg1]
        sub_656e903b[arg1] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x3a896a1 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x2762dd8c with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x99114d84 with:
             gas gas_remaining - 710 wei
            args arg1, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        if sub_6f16f14aAddress == address(ext_call.return_data[0]):
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(this.address), ext_call.return_data[0]
            require ext_call.success
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(this.address), sub_656e903b[arg1], ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x6352211e with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[12 len 20] == sub_656e903b[arg1]
        emit 0x2621540e: address(ext_call.return_data[0]), ext_call.return_data[0], arg1, sub_656e903b[arg1]
}

function sub_ed8e52bd(?) {
    require not uint8(stor0.field_160)
    require ext_code.size(debtRegistryAddress)
    call debtRegistryAddress.0x6be39bda with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(tokenRegistryAddress)
    call tokenRegistryAddress.0x5715c5b7 with:
         gas gas_remaining - 710 wei
        args (Mask(48, 60, ext_call.return_data[32]) >> 60)
    require ext_call.success
    if bool(ext_call.return_data[32]) != 1:
        require sub_656e903b[arg1]
        sub_656e903b[arg1] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x3a896a1 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x99114d84 with:
             gas gas_remaining - 710 wei
            args arg1, block.timestamp
        require ext_call.success
        require ext_call.return_data[0] > ext_call.return_data[0]
        require ext_code.size(debtRegistryAddress)
        call debtRegistryAddress.0xba20dda4 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        if sub_6f16f14aAddress == address(ext_call.return_data[0]):
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(this.address), Mask(56, 4, ext_call.return_data[32]) >> 4
            require ext_call.success
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(this.address), address(ext_call.return_data[0]), Mask(56, 4, ext_call.return_data[32]) >> 4
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x6352211e with:
             gas gas_remaining - 710 wei
            args (Mask(56, 4, ext_call.return_data[32]) >> 4)
        require ext_call.success
        require ext_call.return_data[12 len 20] == address(ext_call.return_data[0])
        emit 0x50d195a4: address(ext_call.return_data[0]), Mask(56, 4, ext_call.return_data[32]) >> 4, arg1, address(ext_call.return_data[0])
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4f6ccce7 with:
             gas gas_remaining - 710 wei
            args (Mask(56, 4, ext_call.return_data[32]) >> 4)
        require ext_call.success
        require sub_656e903b[arg1]
        sub_656e903b[arg1] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x3a896a1 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x99114d84 with:
             gas gas_remaining - 710 wei
            args arg1, block.timestamp
        require ext_call.success
        require ext_call.return_data[0] > ext_call.return_data[0]
        require ext_code.size(debtRegistryAddress)
        call debtRegistryAddress.0xba20dda4 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        if sub_6f16f14aAddress == address(ext_call.return_data[0]):
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(this.address), ext_call.return_data[0]
            require ext_call.success
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(this.address), address(ext_call.return_data[0]), ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x6352211e with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[12 len 20] == address(ext_call.return_data[0])
        emit 0x50d195a4: address(ext_call.return_data[0]), ext_call.return_data[0], arg1, address(ext_call.return_data[0])
}



}
