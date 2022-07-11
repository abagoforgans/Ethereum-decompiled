contract main {




// =====================  Runtime code  =====================


#
#  - sub_0b70bc49(?)
#  - sub_b0c25dfc(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 stor1;
array of uint256 stor2;
array of address stor3;
array of struct stor4;
address sub_14fa8a25Address;
address sub_9170c1abAddress;
address sub_2fa4d12bAddress;
uint256 totalActiveStake;
uint256 sub_6bb28918;
uint256 sub_c1ae3cd2;
mapping of struct sub_5652c52f;
array of struct sub_1242b194;
array of uint256 sub_8ccc3544;
mapping of uint256 sub_b4f5052b;
mapping of uint256 sub_4fba1838;
mapping of struct sub_fd36117b;
mapping of struct sub_36032486;
array of uint256 sub_b1ff4715;
mapping of struct sub_d7343897;
array of uint256 sub_b35af56f;
mapping of struct sub_f588a96a;

function sub_1242b194(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_1242b194[arg1].field_0
    return sub_1242b194[arg1][arg2].field_0
}

function sub_14fa8a25(?) {
    return sub_14fa8a25Address
}

function totalActiveStake() {
    return totalActiveStake
}

function sub_2fa4d12b(?) {
    return sub_2fa4d12bAddress
}

function sub_36032486(?) {
    require calldata.size - 4 >= 32
    return sub_36032486[arg1].field_0, sub_36032486[arg1].field_256, sub_36032486[arg1].field_512, sub_36032486[arg1].field_768
}

function sub_4fba1838(?) {
    require calldata.size - 4 >= 32
    return sub_4fba1838[arg1]
}

function sub_5652c52f(?) {
    require calldata.size - 4 >= 32
    return sub_5652c52f[arg1].field_0, 
           sub_5652c52f[arg1].field_256,
           sub_5652c52f[arg1].field_512,
           sub_5652c52f[arg1].field_768,
           sub_5652c52f[arg1].field_1024,
           bool(sub_5652c52f[arg1].field_1184),
           bool(sub_5652c52f[arg1].field_1192)
}

function sub_6bb28918(?) {
    return sub_6bb28918
}

function sub_8ccc3544(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_8ccc3544[arg1]
    return sub_8ccc3544[arg1][arg2]
}

function sub_9170c1ab(?) {
    return sub_9170c1abAddress
}

function sub_930fc216(?) {
    return sub_b35af56f.length
}

function numRequests() {
    return sub_b1ff4715.length
}

function sub_b1ff4715(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_b1ff4715.length
    return sub_b1ff4715[arg1]
}

function sub_b35af56f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_b35af56f.length
    return sub_b35af56f[arg1]
}

function sub_b4f5052b(?) {
    require calldata.size - 4 >= 32
    return sub_b4f5052b[arg1]
}

function sub_c1ae3cd2(?) {
    return sub_c1ae3cd2
}

function sub_c2e4e2a9(?) {
    require calldata.size - 4 >= 32
    return sub_1242b194[address(arg1)].field_0
}

function sub_d7343897(?) {
    require calldata.size - 4 >= 32
    return sub_d7343897[arg1].field_0, 
           sub_d7343897[arg1].field_256,
           sub_d7343897[arg1].field_512,
           sub_d7343897[arg1].field_768,
           sub_d7343897[arg1].field_1024,
           sub_d7343897[arg1].field_1024
}

function sub_e4f5425d(?) {
    require calldata.size - 4 >= 32
    return sub_8ccc3544[address(arg1)]
}

function sub_f588a96a(?) {
    require calldata.size - 4 >= 32
    return sub_f588a96a[arg1].field_0, 
           sub_f588a96a[arg1].field_256,
           sub_f588a96a[arg1].field_512,
           sub_f588a96a[arg1].field_768,
           sub_f588a96a[arg1].field_1024
}

function sub_fd36117b(?) {
    require calldata.size - 4 >= 32
    return sub_fd36117b[arg1].field_0, sub_fd36117b[arg1].field_256, sub_fd36117b[arg1].field_512, sub_fd36117b[arg1].field_768
}

function _fallback() payable {
    revert
}

function sub_4317d00b(?) {
    require totalActiveStake + sub_6bb28918 >= sub_6bb28918
    return (totalActiveStake + sub_6bb28918)
}

function sub_7cd44a8a(?) {
    require calldata.size - 4 >= 32
    return (sub_36032486[address(arg1)].field_768 + sub_36032486[address(arg1)].field_0)
}

function sub_38c226ac(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 2
    if not arg1:
        return not arg1
    require arg1 <= 2
    return (arg1 == 2)
}

function getLatestBlock() {
    if not sub_b35af56f.length:
        return 0
    require sub_b35af56f.length - 1 < sub_b35af56f.length
    return sub_b35af56f[sub_b35af56f.length]
}

function sub_f666ad71(?) {
    require calldata.size - 4 >= 32
    if 0 >= sub_d7343897[arg1].field_768:
        return 0
    require 1 <= sub_d7343897[arg1].field_768
    require sub_d7343897[arg1].field_768 - 1 < sub_b35af56f.length
    if not sub_b35af56f[stor65[arg1].field_768]:
        return 0
    return sub_f588a96a[stor66[stor65[arg1].field_768]].field_256
}

function sub_6d697dd0(?) {
    require calldata.size - 4 >= 32
    if 0 >= sub_d7343897[arg1].field_768:
        return 0
    require 1 <= sub_d7343897[arg1].field_768
    require sub_d7343897[arg1].field_768 - 1 < sub_b35af56f.length
    if not sub_b35af56f[stor65[arg1].field_768]:
        return 0
    return sub_f588a96a[stor66[stor65[arg1].field_768]].field_0, 
           sub_f588a96a[stor66[stor65[arg1].field_768]].field_256,
           sub_f588a96a[stor66[stor65[arg1].field_768]].field_512,
           sub_f588a96a[stor66[stor65[arg1].field_768]].field_768,
           sub_f588a96a[stor66[stor65[arg1].field_768]].field_1024
}

function initialize(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    sub_14fa8a25Address = arg1
    sub_9170c1abAddress = arg2
    sub_2fa4d12bAddress = arg3
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function sub_6762b2f1(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < sub_8ccc3544[address(arg1)]:
        _19 = mem[64]
        mem[64] = mem[64] + 224
        mem[_19] = 0
        mem[_19 + 32] = 0
        mem[_19 + 64] = 0
        mem[_19 + 96] = 0
        mem[_19 + 128] = 0
        mem[_19 + 160] = 0
        mem[_19 + 192] = 0
        require idx < sub_8ccc3544[address(arg1)]
        mem[0] = sub_8ccc3544[address(arg1)][idx]
        mem[32] = 57
        _23 = mem[64]
        mem[64] = mem[64] + 224
        mem[_23] = sub_5652c52f[stor59[address(arg1)][idx]].field_0
        mem[_23 + 32] = sub_5652c52f[stor59[address(arg1)][idx]].field_256
        mem[_23 + 64] = sub_5652c52f[stor59[address(arg1)][idx]].field_512
        mem[_23 + 96] = sub_5652c52f[stor59[address(arg1)][idx]].field_768
        mem[_23 + 128] = sub_5652c52f[stor59[address(arg1)][idx]].field_1024
        mem[_23 + 160] = bool(sub_5652c52f[stor59[address(arg1)][idx]].field_1184)
        mem[_23 + 192] = bool(sub_5652c52f[stor59[address(arg1)][idx]].field_1192)
        if sub_5652c52f[stor59[address(arg1)][idx]].field_512 <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[0] = sub_8ccc3544[address(arg1)][idx]
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 17
        mem[mem[64] + 68] = 'xyUnstakeCooldown'
        require ext_code.size(sub_2fa4d12bAddress)
        staticcall sub_2fa4d12bAddress.0x64693ec8 with:
                gas gas_remaining wei
               args Array(len=17, data='xyUnstakeCooldown')
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_5652c52f[stor59[address(arg1)][idx]].field_512 + ext_call.return_data[0] >= block.number:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = sub_5652c52f[stor59[address(arg1)][idx]].field_0 + s
        continue 
    return s
}

function sub_45441d17(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=8, data='xyPaused')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Staking is Paused'
    if sub_5652c52f[arg1].field_1024 != msg.sender:
        revert with 0, 'Only the staker can activate'
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=15, data='xyStakeCooldown')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_5652c52f[arg1].field_256 + ext_call.return_data[0] >= block.number:
        revert with 0, 'Not ready to activate stake yet'
    if sub_5652c52f[arg1].field_512:
        revert with 0, 'Cannot activate unstake'
    if sub_5652c52f[arg1].field_1192:
        revert with 0, 'cannot re-cooldown stake'
    require ext_code.size(sub_9170c1abAddress)
    staticcall sub_9170c1abAddress.0xf6a3d24e with:
            gas gas_remaining wei
           args sub_5652c52f[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Only non BPs can be cooled down'
    sub_5652c52f[arg1].field_1192 = 1
    require sub_5652c52f[arg1].field_0 + sub_fd36117b[stor57[arg1].field_768].field_512 >= sub_fd36117b[stor57[arg1].field_768].field_512
    sub_fd36117b[stor57[arg1].field_768].field_512 += sub_5652c52f[arg1].field_0
    require sub_5652c52f[arg1].field_0 + sub_36032486[msg.sender].field_512 >= sub_36032486[msg.sender].field_512
    sub_36032486[msg.sender].field_512 += sub_5652c52f[arg1].field_0
    require sub_5652c52f[arg1].field_0 + sub_6bb28918 >= sub_6bb28918
    sub_6bb28918 += sub_5652c52f[arg1].field_0
    emit 0x7ab7e8e1: arg1, sub_5652c52f[arg1].field_0, msg.sender, sub_5652c52f[arg1].field_768, 2
}

function sub_4ce0e438(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=8, data='xyPaused')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Staking is Paused'
    if sub_5652c52f[arg1].field_1024 != msg.sender:
        revert with 0, 'Only the staker can activate'
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=15, data='xyStakeCooldown')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_5652c52f[arg1].field_256 + ext_call.return_data[0] >= block.number:
        revert with 0, 'Not ready to activate stake yet'
    if sub_5652c52f[arg1].field_512:
        revert with 0, 'Cannot activate unstake'
    if sub_5652c52f[arg1].field_1184:
        revert with 0, 'cannot re-activate stake'
    require ext_code.size(sub_9170c1abAddress)
    staticcall sub_9170c1abAddress.0xf6a3d24e with:
            gas gas_remaining wei
           args sub_5652c52f[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Only BPs can be activated'
    sub_5652c52f[arg1].field_1184 = 1
    require sub_5652c52f[arg1].field_0 + sub_fd36117b[stor57[arg1].field_768].field_256 >= sub_fd36117b[stor57[arg1].field_768].field_256
    sub_fd36117b[stor57[arg1].field_768].field_256 += sub_5652c52f[arg1].field_0
    require sub_5652c52f[arg1].field_0 + sub_36032486[msg.sender].field_256 >= sub_36032486[msg.sender].field_256
    sub_36032486[msg.sender].field_256 += sub_5652c52f[arg1].field_0
    require sub_5652c52f[arg1].field_0 + totalActiveStake >= totalActiveStake
    totalActiveStake += sub_5652c52f[arg1].field_0
    emit 0x7ab7e8e1: arg1, sub_5652c52f[arg1].field_0, msg.sender, sub_5652c52f[arg1].field_768, 1
}

function sub_be98dc0a(?) payable {
    require calldata.size - 4 >= 160
    if sub_d7343897[arg2].field_512:
        revert with 0, 'Duplicate request submitted'
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=14, data='xyWeiMiningMin')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=21, data='xyXYORequestBountyMin')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if ext_call.return_data[0] > msg.value:
            revert with 0, 'Not enough wei to cover mining'
    if arg3 > 0:
        if arg3 < ext_call.return_data[0]:
            revert with 0, 'XYO Bounty less than minimum'
        require ext_code.size(sub_14fa8a25Address)
        call sub_14fa8a25Address.0x23b872dd with:
             gas gas_remaining wei
            args address(arg4), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'transferFrom fail'
            if not ext_call.return_data[0]:
                revert with 0, 'transferFrom fail'
    else:
        if ext_call.return_data[0] > 0:
            if arg3 < ext_call.return_data[0]:
                revert with 0, 'XYO Bounty less than minimum'
            require ext_code.size(sub_14fa8a25Address)
            call sub_14fa8a25Address.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg4), address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                if 32 != return_data.size:
                    revert with 0, 'transferFrom fail'
                if not ext_call.return_data[0]:
                    revert with 0, 'transferFrom fail'
    sub_d7343897[arg2].field_0 = arg3
    sub_d7343897[arg2].field_256 = msg.value
    sub_d7343897[arg2].field_512 = block.number
    sub_d7343897[arg2].field_768 = 0
    sub_d7343897[arg2].field_1024 = arg1
    sub_d7343897[arg2].field_1184 = arg5
    sub_b1ff4715.length++
    sub_b1ff4715[sub_b1ff4715.length] = arg2
    emit 0xfe6124b2: arg2, arg3, msg.value, address(arg1), address(arg4), arg5
}

function sub_dfdb61c9(?) payable {
    require calldata.size - 4 >= 128
    if sub_d7343897[arg1].field_512:
        revert with 0, 'Duplicate request submitted'
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=14, data='xyWeiMiningMin')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=21, data='xyXYORequestBountyMin')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if ext_call.return_data[0] > msg.value:
            revert with 0, 'Not enough wei to cover mining'
    if arg2 > 0:
        if arg2 < ext_call.return_data[0]:
            revert with 0, 'XYO Bounty less than minimum'
        require ext_code.size(sub_14fa8a25Address)
        call sub_14fa8a25Address.0x23b872dd with:
             gas gas_remaining wei
            args address(arg3), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'transferFrom fail'
            if not ext_call.return_data[0]:
                revert with 0, 'transferFrom fail'
    else:
        if ext_call.return_data[0] > 0:
            if arg2 < ext_call.return_data[0]:
                revert with 0, 'XYO Bounty less than minimum'
            require ext_code.size(sub_14fa8a25Address)
            call sub_14fa8a25Address.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg3), address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                if 32 != return_data.size:
                    revert with 0, 'transferFrom fail'
                if not ext_call.return_data[0]:
                    revert with 0, 'transferFrom fail'
    sub_d7343897[arg1].field_0 = arg2
    sub_d7343897[arg1].field_256 = msg.value
    sub_d7343897[arg1].field_512 = block.number
    sub_d7343897[arg1].field_768 = 0
    sub_d7343897[arg1].field_1024 = msg.sender
    sub_d7343897[arg1].field_1184 = arg4
    sub_b1ff4715.length++
    sub_b1ff4715[sub_b1ff4715.length] = arg1
    emit 0xfe6124b2: arg1, arg2, msg.value, msg.sender, address(arg3), arg4
}

function stake(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=8, data='xyPaused')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Staking is Paused'
    require ext_code.size(sub_14fa8a25Address)
    call sub_14fa8a25Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'transferFrom fail'
        if not ext_call.return_data[0]:
            revert with 0, 'transferFrom fail'
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x4348f5cd with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe416c6c20616374696f6e73206f6e207374616b6565206d757374206265207265736f6c7665,
                    mem[202 len 26]
    require arg2 + sub_fd36117b[address(arg1)].field_0 >= sub_fd36117b[address(arg1)].field_0
    sub_fd36117b[address(arg1)].field_0 += arg2
    require arg2 + sub_36032486[msg.sender].field_0 >= sub_36032486[msg.sender].field_0
    sub_36032486[msg.sender].field_0 += arg2
    sub_b4f5052b[arg1][msg.sender][block.number] = sub_1242b194[address(arg1)].field_0
    sub_1242b194[address(arg1)].field_0++
    sub_1242b194[address(arg1)][sub_1242b194[address(arg1)].field_0].field_0 = sha3(arg1, msg.sender, block.number)
    sub_4fba1838[arg1][msg.sender][block.number] = sub_8ccc3544[address(msg.sender)]
    sub_8ccc3544[address(msg.sender)]++
    sub_8ccc3544[address(msg.sender)][sub_8ccc3544[address(msg.sender)]] = sha3(arg1, msg.sender, block.number)
    sub_5652c52f[arg1][msg.sender][block.number].field_0 = arg2
    sub_5652c52f[arg1][msg.sender][block.number].field_256 = block.number
    sub_5652c52f[arg1][msg.sender][block.number].field_512 = 0
    sub_5652c52f[arg1][msg.sender][block.number].field_768 = arg1
    sub_5652c52f[arg1][msg.sender][block.number].field_1024 = msg.sender
    sub_5652c52f[arg1][msg.sender][block.number].field_1184 = 0
    sub_5652c52f[arg1][msg.sender][block.number].field_1192 = 0
    emit 0x7ab7e8e1: sha3(arg1, msg.sender, block.number), arg2, msg.sender, address(arg1), 0
    return sha3(arg1, msg.sender, block.number)
}

function sub_a17a43bf(?) payable {
    require calldata.size - 4 >= 32
    if sub_d7343897[msg.sender][arg1][block.number].field_512:
        revert with 0, 'Duplicate request submitted'
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=14, data='xyWeiMiningMin')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=21, data='xyXYORequestBountyMin')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if ext_call.return_data[0] > msg.value:
            revert with 0, 'Not enough wei to cover mining'
    if arg1 > 0:
        if arg1 < ext_call.return_data[0]:
            revert with 0, 'XYO Bounty less than minimum'
        require ext_code.size(sub_14fa8a25Address)
        call sub_14fa8a25Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'transferFrom fail'
            if not ext_call.return_data[0]:
                revert with 0, 'transferFrom fail'
    else:
        if ext_call.return_data[0] > 0:
            if arg1 < ext_call.return_data[0]:
                revert with 0, 'XYO Bounty less than minimum'
            require ext_code.size(sub_14fa8a25Address)
            call sub_14fa8a25Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                if 32 != return_data.size:
                    revert with 0, 'transferFrom fail'
                if not ext_call.return_data[0]:
                    revert with 0, 'transferFrom fail'
    sub_d7343897[msg.sender][arg1][block.number].field_0 = arg1
    sub_d7343897[msg.sender][arg1][block.number].field_256 = msg.value
    sub_d7343897[msg.sender][arg1][block.number].field_512 = block.number
    sub_d7343897[msg.sender][arg1][block.number].field_768 = 0
    sub_d7343897[msg.sender][arg1][block.number].field_1024 = msg.sender
    sub_d7343897[msg.sender][arg1][block.number].field_1184 = 3
    sub_b1ff4715.length++
    sub_b1ff4715[sub_b1ff4715.length] = sha3(msg.sender, arg1, block.number)
    emit 0xfe6124b2: sha3(msg.sender, arg1, block.number), arg1, msg.value, msg.sender, msg.sender, 3
    return sha3(msg.sender, arg1, block.number)
}

function unstake(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=8, data='xyPaused')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Staking is Paused'
    if sub_5652c52f[arg1].field_1024 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6e4f6e6c7920746865207374616b65722063616e20756e7374616b652061207374616b,
                    mem[199 len 29]
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=15, data='xyStakeCooldown')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_5652c52f[arg1].field_256 + ext_call.return_data[0] >= block.number:
        revert with 0, 'Staking needs to cooldown'
    if sub_5652c52f[arg1].field_512:
        revert with 0, 'Cannot re-unstake'
    require sub_5652c52f[arg1].field_0 <= sub_fd36117b[stor57[arg1].field_768].field_0
    sub_fd36117b[stor57[arg1].field_768].field_0 -= sub_5652c52f[arg1].field_0
    require sub_5652c52f[arg1].field_0 <= sub_36032486[stor57[arg1].field_1024].field_0
    sub_36032486[stor57[arg1].field_1024].field_0 -= sub_5652c52f[arg1].field_0
    if sub_5652c52f[arg1].field_1184:
        require sub_5652c52f[arg1].field_0 <= sub_fd36117b[stor57[arg1].field_768].field_256
        sub_fd36117b[stor57[arg1].field_768].field_256 -= sub_5652c52f[arg1].field_0
        require sub_5652c52f[arg1].field_0 <= sub_36032486[stor57[arg1].field_1024].field_256
        sub_36032486[stor57[arg1].field_1024].field_256 -= sub_5652c52f[arg1].field_0
        require sub_5652c52f[arg1].field_0 <= totalActiveStake
        totalActiveStake -= sub_5652c52f[arg1].field_0
    if sub_5652c52f[arg1].field_1192:
        require sub_5652c52f[arg1].field_0 <= sub_fd36117b[stor57[arg1].field_768].field_512
        sub_fd36117b[stor57[arg1].field_768].field_512 -= sub_5652c52f[arg1].field_0
        require sub_5652c52f[arg1].field_0 <= sub_36032486[stor57[arg1].field_1024].field_512
        sub_36032486[stor57[arg1].field_1024].field_512 -= sub_5652c52f[arg1].field_0
        require sub_5652c52f[arg1].field_0 <= sub_6bb28918
        sub_6bb28918 -= sub_5652c52f[arg1].field_0
    require sub_5652c52f[arg1].field_0 + sub_fd36117b[stor57[arg1].field_768].field_768 >= sub_fd36117b[stor57[arg1].field_768].field_768
    sub_fd36117b[stor57[arg1].field_768].field_768 += sub_5652c52f[arg1].field_0
    require sub_5652c52f[arg1].field_0 + sub_36032486[stor57[arg1].field_1024].field_768 >= sub_36032486[stor57[arg1].field_1024].field_768
    sub_36032486[stor57[arg1].field_1024].field_768 += sub_5652c52f[arg1].field_0
    sub_5652c52f[arg1].field_1184 = 0
    sub_5652c52f[arg1].field_512 = block.number
    emit 0x7ab7e8e1: arg1, sub_5652c52f[arg1].field_0, sub_5652c52f[arg1].field_1024, sub_5652c52f[arg1].field_768, 3
}

function sub_edf2165b(?) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 58
    mem[64] = (32 * sub_1242b194[address(arg1)].field_0) + 128
    mem[96] = sub_1242b194[address(arg1)].field_0
    if not sub_1242b194[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < sub_1242b194[address(arg1)].field_0:
            _23 = mem[64]
            mem[64] = mem[64] + 224
            mem[_23] = 0
            mem[_23 + 32] = 0
            mem[_23 + 64] = 0
            mem[_23 + 96] = 0
            mem[_23 + 128] = 0
            mem[_23 + 160] = 0
            mem[_23 + 192] = 0
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 57
            _26 = sha3(mem[(32 * idx) + 128], 57)
            _27 = mem[64]
            mem[64] = mem[64] + 224
            mem[_27] = sub_5652c52f[mem[(32 * idx) + 128]].field_0
            mem[_27 + 32] = stor1[_26]
            mem[_27 + 64] = stor2[_26]
            mem[_27 + 96] = stor3[_26]
            mem[_27 + 128] = stor4[_26].field_0
            mem[_27 + 160] = bool(stor4[_26].field_160)
            mem[_27 + 192] = bool(stor4[_26].field_168)
            if stor2[_26] <= 0:
                idx = idx + 1
                s = s
                continue 
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 17
            mem[mem[64] + 68] = 'xyUnstakeCooldown'
            require ext_code.size(sub_2fa4d12bAddress)
            staticcall sub_2fa4d12bAddress.0x64693ec8 with:
                    gas gas_remaining wei
                   args Array(len=17, data='xyUnstakeCooldown')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor2[_26] + ext_call.return_data[0] >= block.number:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[_27] + s
            continue 
    else:
        mem[0] = sha3(address(arg1), 58)
        mem[128] = sub_1242b194[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_1242b194[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_1242b194[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        s = 0
        while idx < sub_1242b194[address(arg1)].field_0:
            _55 = mem[64]
            mem[64] = mem[64] + 224
            mem[_55] = 0
            mem[_55 + 32] = 0
            mem[_55 + 64] = 0
            mem[_55 + 96] = 0
            mem[_55 + 128] = 0
            mem[_55 + 160] = 0
            mem[_55 + 192] = 0
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 57
            _58 = sha3(mem[(32 * idx) + 128], 57)
            _59 = mem[64]
            mem[64] = mem[64] + 224
            mem[_59] = sub_5652c52f[mem[(32 * idx) + 128]].field_0
            mem[_59 + 32] = stor1[_58]
            mem[_59 + 64] = stor2[_58]
            mem[_59 + 96] = stor3[_58]
            mem[_59 + 128] = stor4[_58].field_0
            mem[_59 + 160] = bool(stor4[_58].field_160)
            mem[_59 + 192] = bool(stor4[_58].field_168)
            if stor2[_58] <= 0:
                idx = idx + 1
                s = s
                continue 
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 17
            mem[mem[64] + 68] = 'xyUnstakeCooldown'
            require ext_code.size(sub_2fa4d12bAddress)
            staticcall sub_2fa4d12bAddress.0x64693ec8 with:
                    gas gas_remaining wei
                   args Array(len=17, data='xyUnstakeCooldown')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor2[_58] + ext_call.return_data[0] >= block.number:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = mem[_59] + s
            continue 
    return s
}

function sub_b95ff689(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=8, data='xyPaused')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Staking is Paused'
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x4348f5cd with:
            gas gas_remaining wei
           args sub_5652c52f[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 32, 38, 0xfe416c6c20616374696f6e73206f6e207374616b6565206d757374206265207265736f6c7665, mem[650 len 26]
    if sub_5652c52f[arg1].field_1024 != msg.sender:
        revert with 0, 'Only owner can withdraw'
    if sub_5652c52f[arg1].field_512 <= 0:
        revert with 0, 'Not ready for withdraw'
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=17, data='xyUnstakeCooldown')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_5652c52f[arg1].field_512 + ext_call.return_data[0] >= block.number:
        revert with 0, 'Not ready for withdraw'
    emit 0x7ab7e8e1: arg1, sub_5652c52f[arg1].field_0, sub_5652c52f[arg1].field_1024, sub_5652c52f[arg1].field_768, 4
    require sub_1242b194[stor57[arg1].field_768].field_0 - 1 < sub_1242b194[stor57[arg1].field_768].field_0
    require sub_b4f5052b[arg1] < sub_1242b194[stor57[arg1].field_768].field_0
    sub_1242b194[stor57[arg1].field_768][stor60[arg1]].field_0 = sub_1242b194[stor57[arg1].field_768][sub_1242b194[stor57[arg1].field_768].field_0].field_0
    require sub_1242b194[stor57[arg1].field_768].field_0 - 1 < sub_1242b194[stor57[arg1].field_768].field_0
    sub_1242b194[stor57[arg1].field_768][sub_1242b194[stor57[arg1].field_768].field_0].field_0 = 0
    sub_1242b194[stor57[arg1].field_768].field_0--
    if sub_1242b194[stor57[arg1].field_768].field_0 > sub_1242b194[stor57[arg1].field_768].field_0 - 1:
        idx = sub_1242b194[stor57[arg1].field_768].field_0 - 1
        while sub_1242b194[stor57[arg1].field_768].field_0 > idx:
            sub_1242b194[stor57[arg1].field_768][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_b4f5052b[arg1] = 0
    sub_b4f5052b[stor58[stor57[arg1].field_768][stor58[stor57[arg1].field_768].field_0].field_0] = sub_b4f5052b[arg1]
    require sub_8ccc3544[stor57[arg1].field_1024] - 1 < sub_8ccc3544[stor57[arg1].field_1024]
    require sub_4fba1838[arg1] < sub_8ccc3544[stor57[arg1].field_1024]
    sub_8ccc3544[stor57[arg1].field_1024][stor61[arg1]] = sub_8ccc3544[stor57[arg1].field_1024][sub_8ccc3544[stor57[arg1].field_1024]]
    require sub_8ccc3544[stor57[arg1].field_1024] - 1 < sub_8ccc3544[stor57[arg1].field_1024]
    sub_8ccc3544[stor57[arg1].field_1024][sub_8ccc3544[stor57[arg1].field_1024]] = 0
    sub_8ccc3544[stor57[arg1].field_1024]--
    if sub_8ccc3544[stor57[arg1].field_1024] > sub_8ccc3544[stor57[arg1].field_1024] - 1:
        idx = sub_8ccc3544[stor57[arg1].field_1024] - 1
        while sub_8ccc3544[stor57[arg1].field_1024] > idx:
            sub_8ccc3544[stor57[arg1].field_1024][idx] = 0
            idx = idx + 1
            continue 
    sub_4fba1838[arg1] = 0
    sub_4fba1838[stor59[stor57[arg1].field_1024][stor59[stor57[arg1].field_1024]]] = sub_4fba1838[arg1]
    require sub_5652c52f[arg1].field_0 <= sub_fd36117b[stor57[arg1].field_768].field_768
    sub_fd36117b[stor57[arg1].field_768].field_768 -= sub_5652c52f[arg1].field_0
    require sub_5652c52f[arg1].field_0 <= sub_36032486[msg.sender].field_768
    sub_36032486[msg.sender].field_768 -= sub_5652c52f[arg1].field_0
    require ext_code.size(sub_14fa8a25Address)
    call sub_14fa8a25Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_5652c52f[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'transfer fail'
        if not ext_call.return_data[0]:
            revert with 0, 'transfer fail'
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if sub_14fa8a25Address != arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6543616e206f6e6c792062652063616c6c65642066726f6d207468652063757272656e7420746f6b65,
                    mem[205 len 23]
    require arg4.length >= 64
    require cd[(arg4 + 68)] <= 4294967296
    require cd[(arg4 + 68)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 68 <= arg4.length + 36
    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128
    mem[96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[128 len cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len cd[(arg4 + cd[(arg4 + 68)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 68)] + 36)] + 128] = 0
    if cd[(arg4 + 36)] != 1:
        if cd[(arg4 + 36)] != 2:
            if 3 == cd[(arg4 + 36)]:
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] >= 96
                _13 = mem[128]
                require mem[128] <= 4294967296
                require mem[128] + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                _24 = mem[160]
                require mem[160] <= 4294967296
                require mem[160] + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                require mem[mem[160] + 128] <= 4294967296 and mem[160] + (32 * mem[mem[160] + 128]) + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                _33 = mem[192]
                require mem[192] <= 4294967296
                require mem[192] + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                require mem[mem[192] + 128] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 128]) + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                _349 = mem[mem[160] + 128]
                idx = 0
                while idx < _349:
                    require idx < mem[_13 + 128]
                    _351 = mem[(32 * idx) + _13 + 160]
                    require idx < mem[_24 + 128]
                    _353 = mem[(32 * idx) + _24 + 160]
                    require idx < mem[_33 + 128]
                    _355 = mem[(32 * idx) + _33 + 160]
                    require ext_code.size(sub_14fa8a25Address)
                    call sub_14fa8a25Address.0x23b872dd with:
                         gas gas_remaining wei
                        args address(arg1), address(this.address), mem[(32 * idx) + _33 + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not return_data.size:
                        require ext_code.size(sub_2fa4d12bAddress)
                        staticcall sub_2fa4d12bAddress.0x4348f5cd with:
                                gas gas_remaining wei
                               args address(mem[(32 * idx) + _24 + 160])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 32, 38, 0xfe416c6c20616374696f6e73206f6e207374616b6565206d757374206265207265736f6c7665, mem[mem[64] + 106 len 26]
                        require mem[(32 * idx) + _33 + 160] + sub_fd36117b[address(mem[(32 * idx) + _24 + 160])].field_0 >= sub_fd36117b[address(mem[(32 * idx) + _24 + 160])].field_0
                        sub_fd36117b[address(mem[(32 * idx) + _24 + 160])].field_0 += mem[(32 * idx) + _33 + 160]
                        require mem[(32 * idx) + _33 + 160] + sub_36032486[msg.sender].field_0 >= sub_36032486[msg.sender].field_0
                        mem[0] = msg.sender
                        mem[32] = 63
                        sub_36032486[msg.sender].field_0 += mem[(32 * idx) + _33 + 160]
                        _382 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + _24 + 160])
                        mem[mem[64] + 52] = address(_351)
                        mem[mem[64] + 72] = block.number
                        _383 = mem[64]
                        mem[mem[64]] = 72
                        mem[64] = mem[64] + 104
                        _385 = sha3(mem[_383 + 32 len mem[_383]])
                        mem[_382 + 104] = 0
                        mem[_382 + 136] = 0
                        mem[_382 + 168] = 0
                        mem[_382 + 200] = 0
                        mem[_382 + 232] = 0
                        mem[_382 + 264] = 0
                        mem[_382 + 296] = 0
                        mem[64] = _382 + 552
                        mem[_382 + 328] = _355
                        mem[_382 + 360] = block.number
                        mem[_382 + 392] = 0
                        mem[_382 + 424] = address(_353)
                        mem[_382 + 456] = address(_351)
                        mem[_382 + 488] = 0
                        mem[_382 + 520] = 0
                        sub_b4f5052b[_385] = sub_1242b194[address(_353)].field_0
                        sub_1242b194[address(_353)].field_0++
                        sub_1242b194[address(_353)][sub_1242b194[address(_353)].field_0].field_0 = _385
                        sub_4fba1838[_385] = sub_8ccc3544[address(_351)]
                        sub_8ccc3544[address(_351)]++
                        sub_8ccc3544[address(_351)][sub_8ccc3544[address(_351)]] = _385
                        mem[0] = _385
                        mem[32] = 57
                        sub_5652c52f[_385].field_0 = _355
                        sub_5652c52f[_385].field_256 = block.number
                        sub_5652c52f[_385].field_512 = 0
                        sub_5652c52f[_385].field_768 = address(_353)
                        sub_5652c52f[_385].field_1024 = address(_351)
                        sub_5652c52f[_385].field_1184 = 0
                        sub_5652c52f[_385].field_1192 = 0
                        mem[_382 + 552] = _385
                        mem[_382 + 584] = _355
                        mem[_382 + 616] = address(_351)
                        mem[_382 + 648] = address(_353)
                        mem[_382 + 680] = 0
                        emit 0x7ab7e8e1: _385, _355, address(_351), address(_353), 0
                    else:
                        if 32 != return_data.size:
                            revert with 0, 'transferFrom fail'
                        if not ext_call.return_data[0]:
                            revert with 0, 'transferFrom fail'
                        require ext_code.size(sub_2fa4d12bAddress)
                        staticcall sub_2fa4d12bAddress.0x4348f5cd with:
                                gas gas_remaining wei
                               args address(mem[(32 * idx) + _24 + 160])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 32, 38, 0xfe416c6c20616374696f6e73206f6e207374616b6565206d757374206265207265736f6c7665, mem[mem[64] + 106 len 26]
                        require mem[(32 * idx) + _33 + 160] + sub_fd36117b[address(mem[(32 * idx) + _24 + 160])].field_0 >= sub_fd36117b[address(mem[(32 * idx) + _24 + 160])].field_0
                        sub_fd36117b[address(mem[(32 * idx) + _24 + 160])].field_0 += mem[(32 * idx) + _33 + 160]
                        require mem[(32 * idx) + _33 + 160] + sub_36032486[msg.sender].field_0 >= sub_36032486[msg.sender].field_0
                        mem[0] = msg.sender
                        mem[32] = 63
                        sub_36032486[msg.sender].field_0 += mem[(32 * idx) + _33 + 160]
                        _388 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + _24 + 160])
                        mem[mem[64] + 52] = address(_351)
                        mem[mem[64] + 72] = block.number
                        _389 = mem[64]
                        mem[mem[64]] = 72
                        mem[64] = mem[64] + 104
                        _391 = sha3(mem[_389 + 32 len mem[_389]])
                        mem[_388 + 104] = 0
                        mem[_388 + 136] = 0
                        mem[_388 + 168] = 0
                        mem[_388 + 200] = 0
                        mem[_388 + 232] = 0
                        mem[_388 + 264] = 0
                        mem[_388 + 296] = 0
                        mem[64] = _388 + 552
                        mem[_388 + 328] = _355
                        mem[_388 + 360] = block.number
                        mem[_388 + 392] = 0
                        mem[_388 + 424] = address(_353)
                        mem[_388 + 456] = address(_351)
                        mem[_388 + 488] = 0
                        mem[_388 + 520] = 0
                        sub_b4f5052b[_391] = sub_1242b194[address(_353)].field_0
                        sub_1242b194[address(_353)].field_0++
                        sub_1242b194[address(_353)][sub_1242b194[address(_353)].field_0].field_0 = _391
                        sub_4fba1838[_391] = sub_8ccc3544[address(_351)]
                        sub_8ccc3544[address(_351)]++
                        sub_8ccc3544[address(_351)][sub_8ccc3544[address(_351)]] = _391
                        mem[0] = _391
                        mem[32] = 57
                        sub_5652c52f[_391].field_0 = _355
                        sub_5652c52f[_391].field_256 = block.number
                        sub_5652c52f[_391].field_512 = 0
                        sub_5652c52f[_391].field_768 = address(_353)
                        sub_5652c52f[_391].field_1024 = address(_351)
                        sub_5652c52f[_391].field_1184 = 0
                        sub_5652c52f[_391].field_1192 = 0
                        mem[_388 + 552] = _391
                        mem[_388 + 584] = _355
                        mem[_388 + 616] = address(_351)
                        mem[_388 + 648] = address(_353)
                        mem[_388 + 680] = 0
                        emit 0x7ab7e8e1: _391, _355, address(_351), address(_353), 0
                    idx = idx + 1
                    continue 
        else:
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] >= 128
            if sub_d7343897[mem[128]].field_512:
                revert with 0, 'Duplicate request submitted'
            require ext_code.size(sub_2fa4d12bAddress)
            staticcall sub_2fa4d12bAddress.0x64693ec8 with:
                    gas gas_remaining wei
                   args Array(len=14, data='xyWeiMiningMin')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_2fa4d12bAddress)
            staticcall sub_2fa4d12bAddress.0x64693ec8 with:
                    gas gas_remaining wei
                   args Array(len=21, data='xyXYORequestBountyMin')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if ext_call.return_data[0] > msg.value:
                    revert with 0, 'Not enough wei to cover mining'
            if mem[160] > 0:
                if mem[160] < ext_call.return_data[0]:
                    revert with 0, 'XYO Bounty less than minimum'
                require ext_code.size(sub_14fa8a25Address)
                call sub_14fa8a25Address.0x23b872dd with:
                     gas gas_remaining wei
                    args address(mem[192]), address(this.address), mem[160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    if 32 != return_data.size:
                        revert with 0, 'transferFrom fail'
                    if not ext_call.return_data[0]:
                        revert with 0, 'transferFrom fail'
            else:
                if ext_call.return_data[0] > 0:
                    if mem[160] < ext_call.return_data[0]:
                        revert with 0, 'XYO Bounty less than minimum'
                    require ext_code.size(sub_14fa8a25Address)
                    call sub_14fa8a25Address.0x23b872dd with:
                         gas gas_remaining wei
                        args address(mem[192]), address(this.address), mem[160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        if 32 != return_data.size:
                            revert with 0, 'transferFrom fail'
                        if not ext_call.return_data[0]:
                            revert with 0, 'transferFrom fail'
            sub_d7343897[mem[128]].field_0 = mem[160]
            sub_d7343897[mem[128]].field_256 = msg.value
            sub_d7343897[mem[128]].field_512 = block.number
            sub_d7343897[mem[128]].field_768 = 0
            sub_d7343897[mem[128]].field_1024 = arg1
            sub_d7343897[mem[128]].field_1184 = mem[255 len 1]
            sub_b1ff4715.length++
            sub_b1ff4715[sub_b1ff4715.length] = mem[128]
            emit 0xfe6124b2: mem[128], mem[160], msg.value, address(arg1), address(mem[192]), mem[255 len 1]
    else:
        require cd[(arg4 + cd[(arg4 + 68)] + 36)] >= 64
        _7 = mem[160]
        require ext_code.size(sub_14fa8a25Address)
        call sub_14fa8a25Address.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'transferFrom fail'
            if not ext_call.return_data[0]:
                revert with 0, 'transferFrom fail'
        require ext_code.size(sub_2fa4d12bAddress)
        staticcall sub_2fa4d12bAddress.0x4348f5cd with:
                gas gas_remaining wei
               args mem[172 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        38,
                        0xfe416c6c20616374696f6e73206f6e207374616b6565206d757374206265207265736f6c7665,
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 234 len 26]
        require arg2 + sub_fd36117b[address(mem[160])].field_0 >= sub_fd36117b[address(mem[160])].field_0
        sub_fd36117b[address(mem[160])].field_0 += arg2
        require arg2 + sub_36032486[msg.sender].field_0 >= sub_36032486[msg.sender].field_0
        sub_36032486[msg.sender].field_0 += arg2
        mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = address(mem[160])
        sub_b4f5052b[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]] = sub_1242b194[address(_7)].field_0
        sub_1242b194[address(_7)].field_0++
        sub_1242b194[address(_7)][sub_1242b194[address(_7)].field_0].field_0 = sha3(mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72])
        sub_4fba1838[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]] = sub_8ccc3544[address(mem[128])]
        sub_8ccc3544[address(mem[128])]++
        sub_8ccc3544[address(mem[128])][sub_8ccc3544[address(mem[128])]] = sha3(mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72])
        sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_0 = arg2
        sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_256 = block.number
        sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_512 = 0
        sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_768 = address(_7)
        sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_1024 = mem[140 len 20]
        sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_1184 = 0
        sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_1192 = 0
        emit 0x7ab7e8e1: sha3(mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]), arg2, address(mem[128]), address(_7), 0
}

function sub_867c9332(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0xb776f569 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if bool(ext_call.return_data[96]) != 1:
        revert with 0, 'action must be accepted'
    require ext_call.return_data[64] <= 2
    if not ext_call.return_data[64]:
        idx = arg2
        while idx < arg3 + arg2:
            require idx < sub_1242b194[address(arg1)].field_0
            mem[0] = sub_1242b194[address(arg1)][idx].field_0
            mem[32] = 57
            if not sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512:
                if ext_call.return_data[32] <= 0:
                    _896 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_896] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    mem[_896 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                    mem[_896 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                    mem[_896 + 96] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768
                    mem[_896 + 128] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                    mem[_896 + 160] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184)
                    mem[_896 + 192] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192)
                else:
                    if not ext_call.return_data[32]:
                        _916 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_916] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        mem[_916 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                        mem[_916 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                        mem[_916 + 96] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768
                        mem[_916 + 128] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                        mem[_916 + 160] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184)
                        mem[_916 + 192] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192)
                        require 0 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_0
                        require 0 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_0
                        mem[0] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                        mem[32] = 63
                        if not sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184:
                            if not sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192:
                                require sub_c1ae3cd2 >= sub_c1ae3cd2
                                _1047 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_1047] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                                mem[_1047 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                                mem[_1047 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                                mem[_1047 + 96] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768
                                mem[_1047 + 128] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                                mem[_1047 + 160] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184)
                                mem[_1047 + 192] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192)
                            else:
                                require 0 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_512
                                require 0 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_512
                                mem[0] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                                mem[32] = 63
                                require 0 <= sub_6bb28918
                                require sub_c1ae3cd2 >= sub_c1ae3cd2
                                _1140 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_1140] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                                mem[_1140 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                                mem[_1140 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                                mem[_1140 + 96] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768
                                mem[_1140 + 128] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                                mem[_1140 + 160] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184)
                                mem[_1140 + 192] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192)
                        else:
                            require 0 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_256
                            require 0 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_256
                            mem[0] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                            mem[32] = 63
                            require 0 <= totalActiveStake
                            if not sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192:
                                require sub_c1ae3cd2 >= sub_c1ae3cd2
                                _1148 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_1148] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                                mem[_1148 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                                mem[_1148 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                                mem[_1148 + 96] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768
                                mem[_1148 + 128] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                                mem[_1148 + 160] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184)
                                mem[_1148 + 192] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192)
                            else:
                                require 0 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_512
                                require 0 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_512
                                mem[0] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                                mem[32] = 63
                                require 0 <= sub_6bb28918
                                require sub_c1ae3cd2 >= sub_c1ae3cd2
                                _1265 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_1265] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                                mem[_1265 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                                mem[_1265 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                                mem[_1265 + 96] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768
                                mem[_1265 + 128] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                                mem[_1265 + 160] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184)
                                mem[_1265 + 192] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192)
                    else:
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / ext_call.return_data[32] == sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        _928 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_928] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        mem[_928 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                        mem[_928 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                        mem[_928 + 96] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768
                        mem[_928 + 128] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                        mem[_928 + 160] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184)
                        mem[_928 + 192] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192)
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_0
                        sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_0 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_0
                        mem[0] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                        mem[32] = 63
                        sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_0 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                        if not sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184:
                            if not sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192:
                                require (sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100) + sub_c1ae3cd2 >= sub_c1ae3cd2
                                _1050 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_1050] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                                mem[_1050 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                                mem[_1050 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                                mem[_1050 + 96] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768
                                mem[_1050 + 128] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                                mem[_1050 + 160] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184)
                                mem[_1050 + 192] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192)
                            else:
                                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_512
                                sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_512
                                mem[0] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                                mem[32] = 63
                                sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_6bb28918
                                sub_6bb28918 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                                require (sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100) + sub_c1ae3cd2 >= sub_c1ae3cd2
                                _1144 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_1144] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                                mem[_1144 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                                mem[_1144 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                                mem[_1144 + 96] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768
                                mem[_1144 + 128] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                                mem[_1144 + 160] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184)
                                mem[_1144 + 192] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192)
                        else:
                            require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_256
                            sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_256 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                            require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_256
                            mem[0] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                            mem[32] = 63
                            sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_256 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                            require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= totalActiveStake
                            totalActiveStake -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                            if not sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192:
                                require (sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100) + sub_c1ae3cd2 >= sub_c1ae3cd2
                                _1152 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_1152] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                                mem[_1152 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                                mem[_1152 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                                mem[_1152 + 96] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768
                                mem[_1152 + 128] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                                mem[_1152 + 160] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184)
                                mem[_1152 + 192] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192)
                            else:
                                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_512
                                sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_512
                                mem[0] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                                mem[32] = 63
                                sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_6bb28918
                                sub_6bb28918 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                                require (sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100) + sub_c1ae3cd2 >= sub_c1ae3cd2
                                _1272 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_1272] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                                mem[_1272 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                                mem[_1272 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                                mem[_1272 + 96] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768
                                mem[_1272 + 128] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                                mem[_1272 + 160] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184)
                                mem[_1272 + 192] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192)
                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_0
                sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_0 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_0
                sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_0 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                if sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184:
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_256
                    sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_256 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_256
                    sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_256 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= totalActiveStake
                    totalActiveStake -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                if sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192:
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_512
                    sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_512
                    sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_6bb28918
                    sub_6bb28918 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 + sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_768 >= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_768
                sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_768 += sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 + sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_768 >= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_768
                mem[0] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                mem[32] = 63
                sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_768 += sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512 = block.number
            idx = idx + 1
            continue 
        require ext_call.return_data[64] <= 2
        if not ext_call.return_data[64]:
            if not sub_fd36117b[address(arg1)].field_256:
                require ext_code.size(sub_2fa4d12bAddress)
                call sub_2fa4d12bAddress.0x8400657e with:
                     gas gas_remaining wei
                    args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_call.return_data[64] <= 2
            if ext_call.return_data[64] == 2:
                if not sub_fd36117b[address(arg1)].field_256:
                    require ext_code.size(sub_2fa4d12bAddress)
                    call sub_2fa4d12bAddress.0x8400657e with:
                         gas gas_remaining wei
                        args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_call.return_data[64] <= 2
        if ext_call.return_data[64] == 2:
            idx = arg2
            while idx < arg3 + arg2:
                require idx < sub_1242b194[address(arg1)].field_0
                mem[0] = sub_1242b194[address(arg1)][idx].field_0
                mem[32] = 57
                if not sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512:
                    _895 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_895] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    mem[_895 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                    mem[_895 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                    mem[_895 + 96] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768
                    mem[_895 + 128] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                    mem[_895 + 160] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184)
                    mem[_895 + 192] = bool(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192)
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_0
                    sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_0 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_0
                    sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_0 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    if sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184:
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_256
                        sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_256 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_256
                        sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_256 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= totalActiveStake
                        totalActiveStake -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    if sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192:
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_512
                        sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_512
                        sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_6bb28918
                        sub_6bb28918 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 + sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_768 >= sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_768
                    sub_fd36117b[stor57[stor58[address(arg1)][idx].field_0].field_768].field_768 += sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 + sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_768 >= sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_768
                    mem[0] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024
                    mem[32] = 63
                    sub_36032486[stor57[stor58[address(arg1)][idx].field_0].field_1024].field_768 += sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512 = block.number
                idx = idx + 1
                continue 
            require ext_code.size(sub_9170c1abAddress)
            call sub_9170c1abAddress.0x29092d0e with:
                 gas gas_remaining wei
                args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_call.return_data[64] <= 2
            if not ext_call.return_data[64]:
                if not sub_fd36117b[address(arg1)].field_256:
                    require ext_code.size(sub_2fa4d12bAddress)
                    call sub_2fa4d12bAddress.0x8400657e with:
                         gas gas_remaining wei
                        args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_call.return_data[64] <= 2
                if ext_call.return_data[64] == 2:
                    if not sub_fd36117b[address(arg1)].field_256:
                        require ext_code.size(sub_2fa4d12bAddress)
                        call sub_2fa4d12bAddress.0x8400657e with:
                             gas gas_remaining wei
                            args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_call.return_data[64] <= 2
            if ext_call.return_data[64] == 1:
                require ext_code.size(sub_9170c1abAddress)
                call sub_9170c1abAddress.0x9ed93318 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_2fa4d12bAddress)
                call sub_2fa4d12bAddress.0x8400657e with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_call.return_data[64] <= 2
            if not ext_call.return_data[64]:
                if not sub_fd36117b[address(arg1)].field_256:
                    require ext_code.size(sub_2fa4d12bAddress)
                    call sub_2fa4d12bAddress.0x8400657e with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_call.return_data[64] <= 2
                if ext_call.return_data[64] == 2:
                    if not sub_fd36117b[address(arg1)].field_256:
                        require ext_code.size(sub_2fa4d12bAddress)
                        call sub_2fa4d12bAddress.0x8400657e with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
