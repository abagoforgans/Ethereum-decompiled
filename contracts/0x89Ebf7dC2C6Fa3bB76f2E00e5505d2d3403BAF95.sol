contract main {




// =====================  Runtime code  =====================


#
#  - sub_0b70bc49(?)
#  - sub_45441d17(?)
#  - sub_4ce0e438(?)
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
mapping of uint256 sub_1e23f2f9;

function sub_1242b194(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_1242b194[arg1].field_0
    return sub_1242b194[arg1][arg2].field_0
}

function sub_14fa8a25(?) {
    return sub_14fa8a25Address
}

function sub_1e23f2f9(?) {
    require calldata.size - 4 >= 32
    return sub_1e23f2f9[arg1]
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
           address(sub_5652c52f[arg1].field_768),
           address(sub_5652c52f[arg1].field_1024),
           bool(uint8(sub_5652c52f[arg1].field_1184)),
           bool(uint8(sub_5652c52f[arg1].field_1192))
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
           address(sub_d7343897[arg1].field_1024),
           uint8(sub_d7343897[arg1].field_1024)
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
           address(sub_f588a96a[arg1].field_1024)
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
           address(sub_f588a96a[stor66[stor65[arg1].field_768]].field_1024)
}

function initialize(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x74436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
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
        mem[_23 + 96] = address(sub_5652c52f[stor59[address(arg1)][idx]].field_768)
        mem[_23 + 128] = address(sub_5652c52f[stor59[address(arg1)][idx]].field_1024)
        mem[_23 + 160] = bool(uint8(sub_5652c52f[stor59[address(arg1)][idx]].field_1184))
        mem[_23 + 192] = bool(uint8(sub_5652c52f[stor59[address(arg1)][idx]].field_1192))
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
    address(sub_d7343897[arg2].field_1024) = arg1
    uint8(sub_d7343897[arg2].field_1184) = arg5
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
    address(sub_d7343897[arg1].field_1024) = msg.sender
    uint8(sub_d7343897[arg1].field_1184) = arg4
    sub_b1ff4715.length++
    sub_b1ff4715[sub_b1ff4715.length] = arg1
    emit 0xfe6124b2: arg1, arg2, msg.value, msg.sender, address(arg3), arg4
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
    address(sub_d7343897[msg.sender][arg1][block.number].field_1024) = msg.sender
    uint8(sub_d7343897[msg.sender][arg1][block.number].field_1184) = 3
    sub_b1ff4715.length++
    sub_b1ff4715[sub_b1ff4715.length] = sha3(msg.sender, arg1, block.number)
    emit 0xfe6124b2: sha3(msg.sender, arg1, block.number), arg1, msg.value, msg.sender, msg.sender, 3
    return sha3(msg.sender, arg1, block.number)
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
    require arg2 + sub_36032486[address(msg.sender)].field_0 >= sub_36032486[address(msg.sender)].field_0
    sub_36032486[address(msg.sender)].field_0 += arg2
    sub_b4f5052b[arg1][msg.sender][block.number] = sub_1242b194[address(arg1)].field_0
    sub_1242b194[address(arg1)].field_0++
    sub_1242b194[address(arg1)][sub_1242b194[address(arg1)].field_0].field_0 = sha3(arg1, msg.sender, block.number)
    sub_4fba1838[arg1][msg.sender][block.number] = sub_8ccc3544[address(msg.sender)]
    sub_8ccc3544[address(msg.sender)]++
    sub_8ccc3544[address(msg.sender)][sub_8ccc3544[address(msg.sender)]] = sha3(arg1, msg.sender, block.number)
    sub_5652c52f[arg1][msg.sender][block.number].field_0 = arg2
    sub_5652c52f[arg1][msg.sender][block.number].field_256 = block.number
    sub_5652c52f[arg1][msg.sender][block.number].field_512 = 0
    address(sub_5652c52f[arg1][msg.sender][block.number].field_768) = arg1
    address(sub_5652c52f[arg1][msg.sender][block.number].field_1024) = msg.sender
    uint8(sub_5652c52f[arg1][msg.sender][block.number].field_1184) = 0
    Mask(88, 0, sub_5652c52f[arg1][msg.sender][block.number].field_1192) = 0
    Mask(80, 0, sub_5652c52f[arg1][msg.sender][block.number].field_1200) = 0
    emit 0x7ab7e8e1: sha3(arg1, msg.sender, block.number), arg2, msg.sender, address(arg1), 0
    return sha3(arg1, msg.sender, block.number)
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
    if sub_1e23f2f9[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x654f6e6c7920756e7374616b6520626f6e6465642d7374616b652076696120706172656e,
                    mem[200 len 28]
    if address(sub_5652c52f[arg1].field_1024) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x654f6e6c7920746865207374616b65722063616e20756e7374616b652061207374616b,
                    mem[199 len 29]
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=15, data='xyStakeCooldown')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + sub_5652c52f[arg1].field_256 >= sub_5652c52f[arg1].field_256
    if ext_call.return_data[0] + sub_5652c52f[arg1].field_256 >= block.number:
        revert with 0, 'Staking needs to cooldown'
    if sub_5652c52f[arg1].field_512:
        revert with 0, 'Cannot re-unstake'
    require sub_5652c52f[arg1].field_0 <= sub_fd36117b[address(stor57[arg1].field_768)].field_0
    sub_fd36117b[address(stor57[arg1].field_768)].field_0 -= sub_5652c52f[arg1].field_0
    require sub_5652c52f[arg1].field_0 <= sub_36032486[address(stor57[arg1].field_1024)].field_0
    sub_36032486[address(stor57[arg1].field_1024)].field_0 -= sub_5652c52f[arg1].field_0
    if uint8(sub_5652c52f[arg1].field_1184):
        require sub_5652c52f[arg1].field_0 <= sub_fd36117b[address(stor57[arg1].field_768)].field_256
        sub_fd36117b[address(stor57[arg1].field_768)].field_256 -= sub_5652c52f[arg1].field_0
        require sub_5652c52f[arg1].field_0 <= sub_36032486[address(stor57[arg1].field_1024)].field_256
        sub_36032486[address(stor57[arg1].field_1024)].field_256 -= sub_5652c52f[arg1].field_0
        require sub_5652c52f[arg1].field_0 <= totalActiveStake
        totalActiveStake -= sub_5652c52f[arg1].field_0
    else:
        if uint8(sub_5652c52f[arg1].field_1192):
            require sub_5652c52f[arg1].field_0 <= sub_fd36117b[address(stor57[arg1].field_768)].field_512
            sub_fd36117b[address(stor57[arg1].field_768)].field_512 -= sub_5652c52f[arg1].field_0
            require sub_5652c52f[arg1].field_0 <= sub_36032486[address(stor57[arg1].field_1024)].field_512
            sub_36032486[address(stor57[arg1].field_1024)].field_512 -= sub_5652c52f[arg1].field_0
            require sub_5652c52f[arg1].field_0 <= sub_6bb28918
            sub_6bb28918 -= sub_5652c52f[arg1].field_0
    require sub_5652c52f[arg1].field_0 + sub_fd36117b[address(stor57[arg1].field_768)].field_768 >= sub_fd36117b[address(stor57[arg1].field_768)].field_768
    sub_fd36117b[address(stor57[arg1].field_768)].field_768 += sub_5652c52f[arg1].field_0
    require sub_5652c52f[arg1].field_0 + sub_36032486[address(stor57[arg1].field_1024)].field_768 >= sub_36032486[address(stor57[arg1].field_1024)].field_768
    sub_36032486[address(stor57[arg1].field_1024)].field_768 += sub_5652c52f[arg1].field_0
    uint16(sub_5652c52f[arg1].field_1184) = 0
    sub_5652c52f[arg1].field_512 = block.number
    emit 0x7ab7e8e1: arg1, sub_5652c52f[arg1].field_0, address(sub_5652c52f[arg1].field_1024), address(sub_5652c52f[arg1].field_768), 3
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
            mem[_27 + 128] = address(stor4[_26].field_0)
            mem[_27 + 160] = bool(uint8(stor4[_26].field_160))
            mem[_27 + 192] = bool(uint8(stor4[_26].field_168))
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
            mem[_59 + 128] = address(stor4[_58].field_0)
            mem[_59 + 160] = bool(uint8(stor4[_58].field_160))
            mem[_59 + 192] = bool(uint8(stor4[_58].field_168))
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
    if sub_1e23f2f9[arg1]:
        revert with 0, 'Cannot withdraw bonded stake'
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x4348f5cd with:
            gas gas_remaining wei
           args address(sub_5652c52f[arg1].field_768)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe416c6c20616374696f6e73206f6e207374616b6565206d757374206265207265736f6c7665,
                    mem[202 len 26]
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
    if address(sub_5652c52f[arg1].field_1024) != msg.sender:
        revert with 0, 'Only owner can withdraw'
    require sub_5652c52f[arg1].field_0 <= sub_fd36117b[address(stor57[arg1].field_768)].field_768
    sub_fd36117b[address(stor57[arg1].field_768)].field_768 -= sub_5652c52f[arg1].field_0
    require sub_5652c52f[arg1].field_0 <= sub_36032486[address(stor57[arg1].field_1024)].field_768
    sub_36032486[address(stor57[arg1].field_1024)].field_768 -= sub_5652c52f[arg1].field_0
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
    emit 0x7ab7e8e1: arg1, sub_5652c52f[arg1].field_0, address(sub_5652c52f[arg1].field_1024), address(sub_5652c52f[arg1].field_768), 4
    require sub_1242b194[address(stor57[arg1].field_768)].field_0 - 1 < sub_1242b194[address(stor57[arg1].field_768)].field_0
    require sub_b4f5052b[arg1] < sub_1242b194[address(stor57[arg1].field_768)].field_0
    sub_1242b194[address(stor57[arg1].field_768)][stor60[arg1]].field_0 = sub_1242b194[address(stor57[arg1].field_768)][sub_1242b194[address(stor57[arg1].field_768)].field_0].field_0
    require sub_1242b194[address(stor57[arg1].field_768)].field_0 - 1 < sub_1242b194[address(stor57[arg1].field_768)].field_0
    sub_1242b194[address(stor57[arg1].field_768)][sub_1242b194[address(stor57[arg1].field_768)].field_0].field_0 = 0
    sub_1242b194[address(stor57[arg1].field_768)].field_0--
    if sub_1242b194[address(stor57[arg1].field_768)].field_0 > sub_1242b194[address(stor57[arg1].field_768)].field_0 - 1:
        idx = sub_1242b194[address(stor57[arg1].field_768)].field_0 - 1
        while sub_1242b194[address(stor57[arg1].field_768)].field_0 > idx:
            sub_1242b194[address(stor57[arg1].field_768)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_b4f5052b[arg1] = 0
    sub_b4f5052b[stor58[address(stor57[arg1].field_768)][stor58[address(stor57[arg1].field_768)].field_0].field_0] = sub_b4f5052b[arg1]
    require sub_8ccc3544[address(stor57[arg1].field_1024)] - 1 < sub_8ccc3544[address(stor57[arg1].field_1024)]
    require sub_4fba1838[arg1] < sub_8ccc3544[address(stor57[arg1].field_1024)]
    sub_8ccc3544[address(stor57[arg1].field_1024)][stor61[arg1]] = sub_8ccc3544[address(stor57[arg1].field_1024)][sub_8ccc3544[address(stor57[arg1].field_1024)]]
    require sub_8ccc3544[address(stor57[arg1].field_1024)] - 1 < sub_8ccc3544[address(stor57[arg1].field_1024)]
    sub_8ccc3544[address(stor57[arg1].field_1024)][sub_8ccc3544[address(stor57[arg1].field_1024)]] = 0
    sub_8ccc3544[address(stor57[arg1].field_1024)]--
    if sub_8ccc3544[address(stor57[arg1].field_1024)] > sub_8ccc3544[address(stor57[arg1].field_1024)] - 1:
        idx = sub_8ccc3544[address(stor57[arg1].field_1024)] - 1
        while sub_8ccc3544[address(stor57[arg1].field_1024)] > idx:
            sub_8ccc3544[address(stor57[arg1].field_1024)][idx] = 0
            idx = idx + 1
            continue 
    sub_4fba1838[arg1] = 0
    sub_4fba1838[stor59[address(stor57[arg1].field_1024)][stor59[address(stor57[arg1].field_1024)]]] = sub_4fba1838[arg1]
    sub_5652c52f[arg1].field_0 = 0
    sub_5652c52f[arg1].field_256 = 0
    sub_5652c52f[arg1].field_512 = 0
    address(sub_5652c52f[arg1].field_768) = 0
    Mask(176, 0, sub_5652c52f[arg1].field_1024) = 0
}

function sub_d78b37ed(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=14, data='XyBondContract')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'only from bond contract'
    if not arg1:
        revert with 0, 'Stake not bonded to this bond'
    if arg1 != sub_1e23f2f9[arg2]:
        revert with 0, 'Stake not bonded to this bond'
    if not sub_5652c52f[arg2].field_512:
        require sub_5652c52f[arg2].field_0 <= sub_fd36117b[address(stor57[arg2].field_768)].field_0
        sub_fd36117b[address(stor57[arg2].field_768)].field_0 -= sub_5652c52f[arg2].field_0
        require sub_5652c52f[arg2].field_0 <= sub_36032486[address(stor57[arg2].field_1024)].field_0
        sub_36032486[address(stor57[arg2].field_1024)].field_0 -= sub_5652c52f[arg2].field_0
        if uint8(sub_5652c52f[arg2].field_1184):
            require sub_5652c52f[arg2].field_0 <= sub_fd36117b[address(stor57[arg2].field_768)].field_256
            sub_fd36117b[address(stor57[arg2].field_768)].field_256 -= sub_5652c52f[arg2].field_0
            require sub_5652c52f[arg2].field_0 <= sub_36032486[address(stor57[arg2].field_1024)].field_256
            sub_36032486[address(stor57[arg2].field_1024)].field_256 -= sub_5652c52f[arg2].field_0
            require sub_5652c52f[arg2].field_0 <= totalActiveStake
            totalActiveStake -= sub_5652c52f[arg2].field_0
        else:
            if uint8(sub_5652c52f[arg2].field_1192):
                require sub_5652c52f[arg2].field_0 <= sub_fd36117b[address(stor57[arg2].field_768)].field_512
                sub_fd36117b[address(stor57[arg2].field_768)].field_512 -= sub_5652c52f[arg2].field_0
                require sub_5652c52f[arg2].field_0 <= sub_36032486[address(stor57[arg2].field_1024)].field_512
                sub_36032486[address(stor57[arg2].field_1024)].field_512 -= sub_5652c52f[arg2].field_0
                require sub_5652c52f[arg2].field_0 <= sub_6bb28918
                sub_6bb28918 -= sub_5652c52f[arg2].field_0
        require sub_5652c52f[arg2].field_0 + sub_fd36117b[address(stor57[arg2].field_768)].field_768 >= sub_fd36117b[address(stor57[arg2].field_768)].field_768
        sub_fd36117b[address(stor57[arg2].field_768)].field_768 += sub_5652c52f[arg2].field_0
        require sub_5652c52f[arg2].field_0 + sub_36032486[address(stor57[arg2].field_1024)].field_768 >= sub_36032486[address(stor57[arg2].field_1024)].field_768
        sub_36032486[address(stor57[arg2].field_1024)].field_768 += sub_5652c52f[arg2].field_0
        uint16(sub_5652c52f[arg2].field_1184) = 0
        sub_5652c52f[arg2].field_512 = block.number
        emit 0x7ab7e8e1: arg2, sub_5652c52f[arg2].field_0, address(sub_5652c52f[arg2].field_1024), address(sub_5652c52f[arg2].field_768), 3
    require sub_5652c52f[arg2].field_0 <= sub_fd36117b[address(stor57[arg2].field_768)].field_768
    sub_fd36117b[address(stor57[arg2].field_768)].field_768 -= sub_5652c52f[arg2].field_0
    require sub_5652c52f[arg2].field_0 <= sub_36032486[address(stor57[arg2].field_1024)].field_768
    sub_36032486[address(stor57[arg2].field_1024)].field_768 -= sub_5652c52f[arg2].field_0
    require ext_code.size(sub_14fa8a25Address)
    call sub_14fa8a25Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_5652c52f[arg2].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'transfer fail'
        if not ext_call.return_data[0]:
            revert with 0, 'transfer fail'
    emit 0x7ab7e8e1: arg2, sub_5652c52f[arg2].field_0, address(sub_5652c52f[arg2].field_1024), address(sub_5652c52f[arg2].field_768), 4
    require sub_1242b194[address(stor57[arg2].field_768)].field_0 - 1 < sub_1242b194[address(stor57[arg2].field_768)].field_0
    require sub_b4f5052b[arg2] < sub_1242b194[address(stor57[arg2].field_768)].field_0
    sub_1242b194[address(stor57[arg2].field_768)][stor60[arg2]].field_0 = sub_1242b194[address(stor57[arg2].field_768)][sub_1242b194[address(stor57[arg2].field_768)].field_0].field_0
    require sub_1242b194[address(stor57[arg2].field_768)].field_0 - 1 < sub_1242b194[address(stor57[arg2].field_768)].field_0
    sub_1242b194[address(stor57[arg2].field_768)][sub_1242b194[address(stor57[arg2].field_768)].field_0].field_0 = 0
    sub_1242b194[address(stor57[arg2].field_768)].field_0--
    if sub_1242b194[address(stor57[arg2].field_768)].field_0 > sub_1242b194[address(stor57[arg2].field_768)].field_0 - 1:
        idx = sub_1242b194[address(stor57[arg2].field_768)].field_0 - 1
        while sub_1242b194[address(stor57[arg2].field_768)].field_0 > idx:
            sub_1242b194[address(stor57[arg2].field_768)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_b4f5052b[arg2] = 0
    sub_b4f5052b[stor58[address(stor57[arg2].field_768)][stor58[address(stor57[arg2].field_768)].field_0].field_0] = sub_b4f5052b[arg2]
    require sub_8ccc3544[address(stor57[arg2].field_1024)] - 1 < sub_8ccc3544[address(stor57[arg2].field_1024)]
    require sub_4fba1838[arg2] < sub_8ccc3544[address(stor57[arg2].field_1024)]
    sub_8ccc3544[address(stor57[arg2].field_1024)][stor61[arg2]] = sub_8ccc3544[address(stor57[arg2].field_1024)][sub_8ccc3544[address(stor57[arg2].field_1024)]]
    require sub_8ccc3544[address(stor57[arg2].field_1024)] - 1 < sub_8ccc3544[address(stor57[arg2].field_1024)]
    sub_8ccc3544[address(stor57[arg2].field_1024)][sub_8ccc3544[address(stor57[arg2].field_1024)]] = 0
    sub_8ccc3544[address(stor57[arg2].field_1024)]--
    if sub_8ccc3544[address(stor57[arg2].field_1024)] > sub_8ccc3544[address(stor57[arg2].field_1024)] - 1:
        idx = sub_8ccc3544[address(stor57[arg2].field_1024)] - 1
        while sub_8ccc3544[address(stor57[arg2].field_1024)] > idx:
            sub_8ccc3544[address(stor57[arg2].field_1024)][idx] = 0
            idx = idx + 1
            continue 
    sub_4fba1838[arg2] = 0
    sub_4fba1838[stor59[address(stor57[arg2].field_1024)][stor59[address(stor57[arg2].field_1024)]]] = sub_4fba1838[arg2]
    sub_5652c52f[arg2].field_0 = 0
    sub_5652c52f[arg2].field_256 = 0
    sub_5652c52f[arg2].field_512 = 0
    address(sub_5652c52f[arg2].field_768) = 0
    Mask(176, 0, sub_5652c52f[arg2].field_1024) = 0
    sub_1e23f2f9[arg2] = 0
}

function sub_67717f3a(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 132] = 32
    mem[(32 * arg1.length) + 164] = 8
    mem[(32 * arg1.length) + 196] = 'xyPaused'
    require ext_code.size(sub_2fa4d12bAddress)
    staticcall sub_2fa4d12bAddress.0x64693ec8 with:
            gas gas_remaining wei
           args Array(len=8, data='xyPaused')
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Staking is Paused'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _159 = mem[(32 * idx) + 128]
        require ext_code.size(sub_2fa4d12bAddress)
        staticcall sub_2fa4d12bAddress.0x64693ec8 with:
                gas gas_remaining wei
               args Array(len=8, data='xyPaused')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Staking is Paused'
        mem[32] = 68
        if sub_1e23f2f9[mem[(32 * idx) + 128]]:
            revert with 0, 'Cannot withdraw bonded stake'
        require ext_code.size(sub_2fa4d12bAddress)
        staticcall sub_2fa4d12bAddress.0x4348f5cd with:
                gas gas_remaining wei
               args address(sub_5652c52f[mem[(32 * idx) + 128]].field_768)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 32, 38, 0xfe416c6c20616374696f6e73206f6e207374616b6565206d757374206265207265736f6c7665, mem[mem[64] + 106 len 26]
        if sub_5652c52f[mem[(32 * idx) + 128]].field_512 <= 0:
            revert with 0, 'Not ready for withdraw'
        mem[0] = mem[(32 * idx) + 128]
        require ext_code.size(sub_2fa4d12bAddress)
        staticcall sub_2fa4d12bAddress.0x64693ec8 with:
                gas gas_remaining wei
               args Array(len=17, data='xyUnstakeCooldown')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_5652c52f[mem[(32 * idx) + 128]].field_512 + ext_call.return_data[0] >= block.number:
            revert with 0, 'Not ready for withdraw'
        if address(sub_5652c52f[mem[(32 * idx) + 128]].field_1024) != msg.sender:
            revert with 0, 'Only owner can withdraw'
        _190 = mem[64]
        mem[64] = mem[64] + 224
        mem[_190] = sub_5652c52f[mem[(32 * idx) + 128]].field_0
        mem[_190 + 32] = sub_5652c52f[_159].field_256
        mem[_190 + 64] = sub_5652c52f[_159].field_512
        mem[_190 + 96] = address(sub_5652c52f[_159].field_768)
        mem[_190 + 128] = address(sub_5652c52f[_159].field_1024)
        mem[_190 + 160] = bool(uint8(sub_5652c52f[_159].field_1184))
        mem[_190 + 192] = bool(uint8(sub_5652c52f[_159].field_1192))
        require sub_5652c52f[_159].field_0 <= sub_fd36117b[address(stor57[_159].field_768)].field_768
        sub_fd36117b[address(stor57[_159].field_768)].field_768 -= sub_5652c52f[_159].field_0
        require sub_5652c52f[_159].field_0 <= sub_36032486[address(stor57[_159].field_1024)].field_768
        mem[0] = address(sub_5652c52f[_159].field_1024)
        mem[32] = 63
        sub_36032486[address(stor57[_159].field_1024)].field_768 -= sub_5652c52f[_159].field_0
        require ext_code.size(sub_14fa8a25Address)
        call sub_14fa8a25Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_5652c52f[_159].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'transfer fail'
            mem[0] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                revert with 0, 'transfer fail'
        mem[mem[64]] = _159
        mem[mem[64] + 32] = sub_5652c52f[_159].field_0
        mem[mem[64] + 64] = address(sub_5652c52f[_159].field_1024)
        mem[mem[64] + 96] = address(sub_5652c52f[_159].field_768)
        mem[mem[64] + 128] = 4
        emit 0x7ab7e8e1: _159, sub_5652c52f[_159].field_0, address(sub_5652c52f[_159].field_1024), address(sub_5652c52f[_159].field_768), 4
        require sub_1242b194[address(stor57[_159].field_768)].field_0 - 1 < sub_1242b194[address(stor57[_159].field_768)].field_0
        require sub_b4f5052b[_159] < sub_1242b194[address(stor57[_159].field_768)].field_0
        sub_1242b194[address(stor57[_159].field_768)][stor60[_159]].field_0 = sub_1242b194[address(stor57[_159].field_768)][sub_1242b194[address(stor57[_159].field_768)].field_0].field_0
        require sub_1242b194[address(stor57[_159].field_768)].field_0 - 1 < sub_1242b194[address(stor57[_159].field_768)].field_0
        sub_1242b194[address(stor57[_159].field_768)][sub_1242b194[address(stor57[_159].field_768)].field_0].field_0 = 0
        sub_1242b194[address(stor57[_159].field_768)].field_0--
        if sub_1242b194[address(stor57[_159].field_768)].field_0 > sub_1242b194[address(stor57[_159].field_768)].field_0 - 1:
            s = sub_1242b194[address(stor57[_159].field_768)].field_0 + sha3(sha3(address(sub_5652c52f[_159].field_768), 58)) - 1
            while sha3(sha3(address(sub_5652c52f[_159].field_768), 58)) + sub_1242b194[address(stor57[_159].field_768)].field_0 > s:
                stor[s] = 0
                s = s + 1
                continue 
        sub_b4f5052b[_159] = 0
        sub_b4f5052b[stor58[address(stor57[_159].field_768)][stor58[address(stor57[_159].field_768)].field_0].field_0] = sub_b4f5052b[_159]
        require sub_8ccc3544[address(stor57[_159].field_1024)] - 1 < sub_8ccc3544[address(stor57[_159].field_1024)]
        require sub_4fba1838[_159] < sub_8ccc3544[address(stor57[_159].field_1024)]
        sub_8ccc3544[address(stor57[_159].field_1024)][stor61[_159]] = sub_8ccc3544[address(stor57[_159].field_1024)][sub_8ccc3544[address(stor57[_159].field_1024)]]
        require sub_8ccc3544[address(stor57[_159].field_1024)] - 1 < sub_8ccc3544[address(stor57[_159].field_1024)]
        sub_8ccc3544[address(stor57[_159].field_1024)][sub_8ccc3544[address(stor57[_159].field_1024)]] = 0
        sub_8ccc3544[address(stor57[_159].field_1024)]--
        if sub_8ccc3544[address(stor57[_159].field_1024)] > sub_8ccc3544[address(stor57[_159].field_1024)] - 1:
            s = sub_8ccc3544[address(stor57[_159].field_1024)] + sha3(sha3(address(sub_5652c52f[_159].field_1024), 59)) - 1
            while sha3(sha3(address(sub_5652c52f[_159].field_1024), 59)) + sub_8ccc3544[address(stor57[_159].field_1024)] > s:
                stor[s] = 0
                s = s + 1
                continue 
        sub_4fba1838[_159] = 0
        sub_4fba1838[stor59[address(stor57[_159].field_1024)][stor59[address(stor57[_159].field_1024)]]] = sub_4fba1838[_159]
        mem[0] = _159
        mem[32] = 57
        sub_5652c52f[_159].field_0 = 0
        sub_5652c52f[_159].field_256 = 0
        sub_5652c52f[_159].field_512 = 0
        address(sub_5652c52f[_159].field_768) = 0
        Mask(176, 0, sub_5652c52f[_159].field_1024) = 0
        idx = idx + 1
        continue 
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
                    _468 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_468] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    mem[_468 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                    mem[_468 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                    mem[_468 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768)
                    mem[_468 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                    mem[_468 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184))
                    mem[_468 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192))
                else:
                    if not ext_call.return_data[32]:
                        _486 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_486] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        mem[_486 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                        mem[_486 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                        mem[_486 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768)
                        mem[_486 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                        mem[_486 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184))
                        mem[_486 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192))
                        require 0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_0
                        require 0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_0
                        mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                        mem[32] = 63
                        if uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184):
                            require 0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_256
                            require 0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_256
                            mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                            mem[32] = 63
                            require 0 <= totalActiveStake
                            require sub_c1ae3cd2 >= sub_c1ae3cd2
                            _652 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_652] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                            mem[_652 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                            mem[_652 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                            mem[_652 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768)
                            mem[_652 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                            mem[_652 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184))
                            mem[_652 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192))
                        else:
                            if not uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192):
                                require sub_c1ae3cd2 >= sub_c1ae3cd2
                                _599 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_599] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                                mem[_599 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                                mem[_599 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                                mem[_599 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768)
                                mem[_599 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                                mem[_599 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184))
                                mem[_599 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192))
                            else:
                                require 0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_512
                                require 0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_512
                                mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                                mem[32] = 63
                                require 0 <= sub_6bb28918
                                require sub_c1ae3cd2 >= sub_c1ae3cd2
                                _651 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_651] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                                mem[_651 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                                mem[_651 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                                mem[_651 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768)
                                mem[_651 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                                mem[_651 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184))
                                mem[_651 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192))
                    else:
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / ext_call.return_data[32] == sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        _498 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_498] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        mem[_498 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                        mem[_498 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                        mem[_498 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768)
                        mem[_498 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                        mem[_498 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184))
                        mem[_498 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192))
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_0
                        sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_0 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_0
                        mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                        mem[32] = 63
                        sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_0 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                        if uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184):
                            require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_256
                            sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_256 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                            require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_256
                            mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                            mem[32] = 63
                            sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_256 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                            require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= totalActiveStake
                            totalActiveStake -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                            require (sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100) + sub_c1ae3cd2 >= sub_c1ae3cd2
                            _656 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_656] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                            mem[_656 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                            mem[_656 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                            mem[_656 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768)
                            mem[_656 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                            mem[_656 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184))
                            mem[_656 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192))
                        else:
                            if not uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192):
                                require (sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100) + sub_c1ae3cd2 >= sub_c1ae3cd2
                                _610 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_610] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                                mem[_610 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                                mem[_610 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                                mem[_610 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768)
                                mem[_610 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                                mem[_610 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184))
                                mem[_610 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192))
                            else:
                                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_512
                                sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_512
                                mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                                mem[32] = 63
                                sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100 <= sub_6bb28918
                                sub_6bb28918 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100
                                require (sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 * ext_call.return_data[32] / 100) + sub_c1ae3cd2 >= sub_c1ae3cd2
                                _655 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_655] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                                mem[_655 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                                mem[_655 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                                mem[_655 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768)
                                mem[_655 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                                mem[_655 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184))
                                mem[_655 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192))
                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_0
                sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_0 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_0
                sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_0 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                if uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184):
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_256
                    sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_256 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_256
                    sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_256 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= totalActiveStake
                    totalActiveStake -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                else:
                    if uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192):
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_512
                        sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_512
                        sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_6bb28918
                        sub_6bb28918 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 + sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_768 >= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_768
                sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_768 += sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 + sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_768 >= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_768
                mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                mem[32] = 63
                sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_768 += sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                uint16(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184) = 0
                sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512 = block.number
                mem[mem[64]] = sub_1242b194[address(arg1)][idx].field_0
                mem[mem[64] + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                mem[mem[64] + 64] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                mem[mem[64] + 96] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768)
                mem[mem[64] + 128] = 3
                emit 0x7ab7e8e1: sub_1242b194[address(arg1)][idx].field_0, sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0, address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024), address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768), 3
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
                    _467 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_467] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    mem[_467 + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_256
                    mem[_467 + 64] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512
                    mem[_467 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768)
                    mem[_467 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                    mem[_467 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184))
                    mem[_467 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192))
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_0
                    sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_0 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_0
                    sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_0 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    if uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184):
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_256
                        sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_256 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_256
                        sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_256 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                        require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= totalActiveStake
                        totalActiveStake -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    else:
                        if uint8(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1192):
                            require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_512
                            sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                            require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_512
                            sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_512 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                            require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 <= sub_6bb28918
                            sub_6bb28918 -= sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 + sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_768 >= sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_768
                    sub_fd36117b[address(stor57[stor58[address(arg1)][idx].field_0].field_768)].field_768 += sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0 + sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_768 >= sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_768
                    mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                    mem[32] = 63
                    sub_36032486[address(stor57[stor58[address(arg1)][idx].field_0].field_1024)].field_768 += sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    uint16(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1184) = 0
                    sub_5652c52f[stor58[address(arg1)][idx].field_0].field_512 = block.number
                    mem[mem[64]] = sub_1242b194[address(arg1)][idx].field_0
                    mem[mem[64] + 32] = sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0
                    mem[mem[64] + 64] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024)
                    mem[mem[64] + 96] = address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768)
                    mem[mem[64] + 128] = 3
                    emit 0x7ab7e8e1: sub_1242b194[address(arg1)][idx].field_0, sub_5652c52f[stor58[address(arg1)][idx].field_0].field_0, address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_1024), address(sub_5652c52f[stor58[address(arg1)][idx].field_0].field_768), 3
                idx = idx + 1
                continue 
            require ext_code.size(sub_9170c1abAddress)
            call sub_9170c1abAddress.remove(address arg1) with:
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
                call sub_9170c1abAddress.create(address arg1) with:
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

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if sub_14fa8a25Address != msg.sender:
        revert with 0, 'sender must be token'
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
            if cd[(arg4 + 36)] != 3:
                if 4 == cd[(arg4 + 36)]:
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] >= 128
                    _18 = mem[128]
                    _19 = mem[160]
                    _20 = mem[192]
                    require mem[192] <= 4294967296
                    require mem[192] + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                    require mem[mem[192] + 128] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 128]) + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                    _30 = mem[224]
                    require mem[224] <= 4294967296
                    require mem[224] + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                    require mem[mem[224] + 128] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 128]) + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                    if mem[mem[192] + 128] != mem[mem[224] + 128]:
                        revert with 0, 'bad inputs'
                    _694 = mem[mem[192] + 128]
                    idx = 0
                    while idx < _694:
                        require idx < mem[_20 + 128]
                        _698 = mem[(32 * idx) + _20 + 160]
                        require idx < mem[_30 + 128]
                        _702 = mem[(32 * idx) + _30 + 160]
                        require ext_code.size(sub_14fa8a25Address)
                        call sub_14fa8a25Address.0x23b872dd with:
                             gas gas_remaining wei
                            args address(arg1), address(this.address), mem[(32 * idx) + _30 + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not return_data.size:
                            require ext_code.size(sub_2fa4d12bAddress)
                            staticcall sub_2fa4d12bAddress.0x4348f5cd with:
                                    gas gas_remaining wei
                                   args address(mem[(32 * idx) + _20 + 160])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 32, 38, 0xfe416c6c20616374696f6e73206f6e207374616b6565206d757374206265207265736f6c7665, mem[mem[64] + 106 len 26]
                            _732 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + _20 + 160])
                            mem[mem[64] + 52] = address(_19)
                            mem[mem[64] + 72] = block.number
                            _733 = mem[64]
                            mem[mem[64]] = 72
                            mem[64] = mem[64] + 104
                            _735 = sha3(mem[_733 + 32 len mem[_733]])
                            mem[_732 + 104] = 0
                            mem[_732 + 136] = 0
                            mem[_732 + 168] = 0
                            mem[_732 + 200] = 0
                            mem[_732 + 232] = 0
                            mem[_732 + 264] = 0
                            mem[_732 + 296] = 0
                            mem[_732 + 328] = _702
                            mem[_732 + 360] = block.number
                            mem[_732 + 392] = 0
                            mem[_732 + 424] = address(_698)
                            mem[_732 + 456] = address(_19)
                            mem[_732 + 488] = 0
                            mem[_732 + 520] = 0
                            require _702 + sub_fd36117b[address(_698)].field_0 >= sub_fd36117b[address(_698)].field_0
                            sub_fd36117b[address(_698)].field_0 += _702
                            require _702 + sub_36032486[address(_19)].field_0 >= sub_36032486[address(_19)].field_0
                            sub_36032486[address(_19)].field_0 += _702
                            sub_b4f5052b[_735] = sub_1242b194[address(_698)].field_0
                            sub_1242b194[address(_698)].field_0++
                            sub_1242b194[address(_698)][sub_1242b194[address(_698)].field_0].field_0 = _735
                            sub_4fba1838[_735] = sub_8ccc3544[address(_19)]
                            sub_8ccc3544[address(_19)]++
                            sub_8ccc3544[address(_19)][sub_8ccc3544[address(_19)]] = _735
                            sub_5652c52f[_735].field_0 = _702
                            sub_5652c52f[_735].field_256 = block.number
                            sub_5652c52f[_735].field_512 = 0
                            address(sub_5652c52f[_735].field_768) = address(_698)
                            address(sub_5652c52f[_735].field_1024) = address(_19)
                            uint8(sub_5652c52f[_735].field_1184) = 0
                            Mask(88, 0, sub_5652c52f[_735].field_1192) = 0
                            Mask(80, 0, sub_5652c52f[_735].field_1200) = 0
                            mem[_732 + 552] = _735
                            mem[_732 + 584] = _702
                            mem[_732 + 616] = address(_19)
                            mem[_732 + 648] = address(_698)
                            mem[_732 + 680] = 0
                            emit 0x7ab7e8e1: _735, _702, address(_19), address(_698), 0
                            sub_1e23f2f9[_735] = _18
                            require idx < mem[_20 + 128]
                            require ext_code.size(sub_9170c1abAddress)
                            staticcall sub_9170c1abAddress.exists(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx) + _20 + 172 len 20]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_2fa4d12bAddress)
                            staticcall sub_2fa4d12bAddress.0x64693ec8 with:
                                    gas gas_remaining wei
                                   args Array(len=8, data='xyPaused')
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'Staking is Paused'
                            if not sub_1e23f2f9[_735]:
                                if address(sub_5652c52f[_735].field_1024) != msg.sender:
                                    revert with 0, 'Only the staker can activate'
                                require ext_code.size(sub_2fa4d12bAddress)
                                staticcall sub_2fa4d12bAddress.0x64693ec8 with:
                                        gas gas_remaining wei
                                       args Array(len=15, data='xyStakeCooldown')
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_5652c52f[_735].field_256 + ext_call.return_data[0] >= block.number:
                                    revert with 0, 'Not ready to activate stake yet'
                            if sub_5652c52f[_735].field_512:
                                revert with 0, 'Cannot activate unstake'
                            if uint8(sub_5652c52f[_735].field_1192):
                                revert with 0, 'cannot re-activate stake'
                            if uint8(sub_5652c52f[_735].field_1184):
                                revert with 0, 'cannot re-activate stake'
                            require ext_code.size(sub_9170c1abAddress)
                            staticcall sub_9170c1abAddress.exists(address arg1) with:
                                    gas gas_remaining wei
                                   args address(sub_5652c52f[_735].field_768)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if bool(ext_call.return_data[0]) == bool(ext_call.return_data[0]) != 1:
                                revert with 0, 'Only BPs activated'
                            Mask(96, 0, sub_5652c52f[_735].field_1184) = Mask(96, 0, 1 == bool(ext_call.return_data[0]))
                            Mask(88, 0, sub_5652c52f[_735].field_1192) = Mask(88, 0, bool(ext_call.return_data[0]) != 1)
                            Mask(88, 0, sub_5652c52f[_735].field_1192) = 0
                            mem[64] = _732 + 776
                            mem[_732 + 552] = sub_5652c52f[_735].field_0
                            mem[_732 + 584] = sub_5652c52f[_735].field_256
                            mem[_732 + 616] = sub_5652c52f[_735].field_512
                            mem[_732 + 648] = address(sub_5652c52f[_735].field_768)
                            mem[_732 + 680] = address(sub_5652c52f[_735].field_1024)
                            mem[_732 + 712] = bool(uint8(1 == bool(ext_call.return_data[0])))
                            mem[_732 + 744] = bool(uint16(1 == bool(ext_call.return_data[0])) / 256 or uint8(bool(ext_call.return_data[0]) != 1) or 0 or 0)
                            if not uint16(1 == bool(ext_call.return_data[0])) / 256 and not uint8(bool(ext_call.return_data[0]) != 1) and True and True:
                                require sub_5652c52f[_735].field_0 + sub_fd36117b[address(stor57[_735].field_768)].field_256 >= sub_fd36117b[address(stor57[_735].field_768)].field_256
                                sub_fd36117b[address(stor57[_735].field_768)].field_256 += sub_5652c52f[_735].field_0
                                require sub_5652c52f[_735].field_0 + sub_36032486[address(stor57[_735].field_1024)].field_256 >= sub_36032486[address(stor57[_735].field_1024)].field_256
                                mem[0] = address(sub_5652c52f[_735].field_1024)
                                mem[32] = 63
                                sub_36032486[address(stor57[_735].field_1024)].field_256 += sub_5652c52f[_735].field_0
                                require sub_5652c52f[_735].field_0 + totalActiveStake >= totalActiveStake
                                totalActiveStake += sub_5652c52f[_735].field_0
                            else:
                                require sub_5652c52f[_735].field_0 + sub_fd36117b[address(stor57[_735].field_768)].field_512 >= sub_fd36117b[address(stor57[_735].field_768)].field_512
                                sub_fd36117b[address(stor57[_735].field_768)].field_512 += sub_5652c52f[_735].field_0
                                require sub_5652c52f[_735].field_0 + sub_36032486[address(stor57[_735].field_1024)].field_512 >= sub_36032486[address(stor57[_735].field_1024)].field_512
                                mem[0] = address(sub_5652c52f[_735].field_1024)
                                mem[32] = 63
                                sub_36032486[address(stor57[_735].field_1024)].field_512 += sub_5652c52f[_735].field_0
                                require sub_5652c52f[_735].field_0 + sub_6bb28918 >= sub_6bb28918
                                sub_6bb28918 += sub_5652c52f[_735].field_0
                            mem[_732 + 776] = _735
                            mem[_732 + 808] = sub_5652c52f[_735].field_0
                            mem[_732 + 840] = msg.sender
                            mem[_732 + 872] = address(sub_5652c52f[_735].field_768)
                            if bool(ext_call.return_data[0]) != 1:
                                mem[_732 + 904] = 2
                                emit 0x7ab7e8e1: _735, sub_5652c52f[_735].field_0, msg.sender, address(sub_5652c52f[_735].field_768), 2
                            else:
                                mem[_732 + 904] = 1
                                emit 0x7ab7e8e1: _735, sub_5652c52f[_735].field_0, msg.sender, address(sub_5652c52f[_735].field_768), 1
                        else:
                            if 32 != return_data.size:
                                revert with 0, 'transferFrom fail'
                            mem[0] = ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                revert with 0, 'transferFrom fail'
                            require ext_code.size(sub_2fa4d12bAddress)
                            staticcall sub_2fa4d12bAddress.0x4348f5cd with:
                                    gas gas_remaining wei
                                   args address(mem[(32 * idx) + _20 + 160])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 32, 38, 0xfe416c6c20616374696f6e73206f6e207374616b6565206d757374206265207265736f6c7665, mem[mem[64] + 106 len 26]
                            _742 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + _20 + 160])
                            mem[mem[64] + 52] = address(_19)
                            mem[mem[64] + 72] = block.number
                            _743 = mem[64]
                            mem[mem[64]] = 72
                            mem[64] = mem[64] + 104
                            _745 = sha3(mem[_743 + 32 len mem[_743]])
                            mem[_742 + 104] = 0
                            mem[_742 + 136] = 0
                            mem[_742 + 168] = 0
                            mem[_742 + 200] = 0
                            mem[_742 + 232] = 0
                            mem[_742 + 264] = 0
                            mem[_742 + 296] = 0
                            mem[_742 + 328] = _702
                            mem[_742 + 360] = block.number
                            mem[_742 + 392] = 0
                            mem[_742 + 424] = address(_698)
                            mem[_742 + 456] = address(_19)
                            mem[_742 + 488] = 0
                            mem[_742 + 520] = 0
                            require _702 + sub_fd36117b[address(_698)].field_0 >= sub_fd36117b[address(_698)].field_0
                            sub_fd36117b[address(_698)].field_0 += _702
                            require _702 + sub_36032486[address(_19)].field_0 >= sub_36032486[address(_19)].field_0
                            sub_36032486[address(_19)].field_0 += _702
                            sub_b4f5052b[_745] = sub_1242b194[address(_698)].field_0
                            sub_1242b194[address(_698)].field_0++
                            sub_1242b194[address(_698)][sub_1242b194[address(_698)].field_0].field_0 = _745
                            sub_4fba1838[_745] = sub_8ccc3544[address(_19)]
                            sub_8ccc3544[address(_19)]++
                            sub_8ccc3544[address(_19)][sub_8ccc3544[address(_19)]] = _745
                            sub_5652c52f[_745].field_0 = _702
                            sub_5652c52f[_745].field_256 = block.number
                            sub_5652c52f[_745].field_512 = 0
                            address(sub_5652c52f[_745].field_768) = address(_698)
                            address(sub_5652c52f[_745].field_1024) = address(_19)
                            uint8(sub_5652c52f[_745].field_1184) = 0
                            Mask(88, 0, sub_5652c52f[_745].field_1192) = 0
                            Mask(80, 0, sub_5652c52f[_745].field_1200) = 0
                            mem[_742 + 552] = _745
                            mem[_742 + 584] = _702
                            mem[_742 + 616] = address(_19)
                            mem[_742 + 648] = address(_698)
                            mem[_742 + 680] = 0
                            emit 0x7ab7e8e1: _745, _702, address(_19), address(_698), 0
                            sub_1e23f2f9[_745] = _18
                            require idx < mem[_20 + 128]
                            require ext_code.size(sub_9170c1abAddress)
                            staticcall sub_9170c1abAddress.exists(address arg1) with:
                                    gas gas_remaining wei
                                   args mem[(32 * idx) + _20 + 172 len 20]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_2fa4d12bAddress)
                            staticcall sub_2fa4d12bAddress.0x64693ec8 with:
                                    gas gas_remaining wei
                                   args Array(len=8, data='xyPaused')
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'Staking is Paused'
                            if not sub_1e23f2f9[_745]:
                                if address(sub_5652c52f[_745].field_1024) != msg.sender:
                                    revert with 0, 'Only the staker can activate'
                                require ext_code.size(sub_2fa4d12bAddress)
                                staticcall sub_2fa4d12bAddress.0x64693ec8 with:
                                        gas gas_remaining wei
                                       args Array(len=15, data='xyStakeCooldown')
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_5652c52f[_745].field_256 + ext_call.return_data[0] >= block.number:
                                    revert with 0, 'Not ready to activate stake yet'
                            if sub_5652c52f[_745].field_512:
                                revert with 0, 'Cannot activate unstake'
                            if uint8(sub_5652c52f[_745].field_1192):
                                revert with 0, 'cannot re-activate stake'
                            if uint8(sub_5652c52f[_745].field_1184):
                                revert with 0, 'cannot re-activate stake'
                            require ext_code.size(sub_9170c1abAddress)
                            staticcall sub_9170c1abAddress.exists(address arg1) with:
                                    gas gas_remaining wei
                                   args address(sub_5652c52f[_745].field_768)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if bool(ext_call.return_data[0]) == bool(ext_call.return_data[0]) != 1:
                                revert with 0, 'Only BPs activated'
                            Mask(96, 0, sub_5652c52f[_745].field_1184) = Mask(96, 0, 1 == bool(ext_call.return_data[0]))
                            Mask(88, 0, sub_5652c52f[_745].field_1192) = Mask(88, 0, bool(ext_call.return_data[0]) != 1)
                            Mask(88, 0, sub_5652c52f[_745].field_1192) = 0
                            mem[64] = _742 + 776
                            mem[_742 + 552] = sub_5652c52f[_745].field_0
                            mem[_742 + 584] = sub_5652c52f[_745].field_256
                            mem[_742 + 616] = sub_5652c52f[_745].field_512
                            mem[_742 + 648] = address(sub_5652c52f[_745].field_768)
                            mem[_742 + 680] = address(sub_5652c52f[_745].field_1024)
                            mem[_742 + 712] = bool(uint8(1 == bool(ext_call.return_data[0])))
                            mem[_742 + 744] = bool(uint16(1 == bool(ext_call.return_data[0])) / 256 or uint8(bool(ext_call.return_data[0]) != 1) or 0 or 0)
                            if not uint16(1 == bool(ext_call.return_data[0])) / 256 and not uint8(bool(ext_call.return_data[0]) != 1) and True and True:
                                require sub_5652c52f[_745].field_0 + sub_fd36117b[address(stor57[_745].field_768)].field_256 >= sub_fd36117b[address(stor57[_745].field_768)].field_256
                                sub_fd36117b[address(stor57[_745].field_768)].field_256 += sub_5652c52f[_745].field_0
                                require sub_5652c52f[_745].field_0 + sub_36032486[address(stor57[_745].field_1024)].field_256 >= sub_36032486[address(stor57[_745].field_1024)].field_256
                                mem[0] = address(sub_5652c52f[_745].field_1024)
                                mem[32] = 63
                                sub_36032486[address(stor57[_745].field_1024)].field_256 += sub_5652c52f[_745].field_0
                                require sub_5652c52f[_745].field_0 + totalActiveStake >= totalActiveStake
                                totalActiveStake += sub_5652c52f[_745].field_0
                            else:
                                require sub_5652c52f[_745].field_0 + sub_fd36117b[address(stor57[_745].field_768)].field_512 >= sub_fd36117b[address(stor57[_745].field_768)].field_512
                                sub_fd36117b[address(stor57[_745].field_768)].field_512 += sub_5652c52f[_745].field_0
                                require sub_5652c52f[_745].field_0 + sub_36032486[address(stor57[_745].field_1024)].field_512 >= sub_36032486[address(stor57[_745].field_1024)].field_512
                                mem[0] = address(sub_5652c52f[_745].field_1024)
                                mem[32] = 63
                                sub_36032486[address(stor57[_745].field_1024)].field_512 += sub_5652c52f[_745].field_0
                                require sub_5652c52f[_745].field_0 + sub_6bb28918 >= sub_6bb28918
                                sub_6bb28918 += sub_5652c52f[_745].field_0
                            mem[_742 + 776] = _745
                            mem[_742 + 808] = sub_5652c52f[_745].field_0
                            mem[_742 + 840] = msg.sender
                            mem[_742 + 872] = address(sub_5652c52f[_745].field_768)
                            if bool(ext_call.return_data[0]) != 1:
                                mem[_742 + 904] = 2
                                emit 0x7ab7e8e1: _745, sub_5652c52f[_745].field_0, msg.sender, address(sub_5652c52f[_745].field_768), 2
                            else:
                                mem[_742 + 904] = 1
                                emit 0x7ab7e8e1: _745, sub_5652c52f[_745].field_0, msg.sender, address(sub_5652c52f[_745].field_768), 1
                        idx = idx + 1
                        continue 
            else:
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] >= 96
                _14 = mem[128]
                require mem[128] <= 4294967296
                require mem[128] + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                _29 = mem[160]
                require mem[160] <= 4294967296
                require mem[160] + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                require mem[mem[160] + 128] <= 4294967296 and mem[160] + (32 * mem[mem[160] + 128]) + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                _40 = mem[192]
                require mem[192] <= 4294967296
                require mem[192] + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                require mem[mem[192] + 128] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 128]) + 64 <= cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32
                _695 = mem[mem[160] + 128]
                idx = 0
                while idx < _695:
                    require idx < mem[_14 + 128]
                    _700 = mem[(32 * idx) + _14 + 160]
                    require idx < mem[_29 + 128]
                    _703 = mem[(32 * idx) + _29 + 160]
                    require idx < mem[_40 + 128]
                    _705 = mem[(32 * idx) + _40 + 160]
                    require ext_code.size(sub_14fa8a25Address)
                    call sub_14fa8a25Address.0x23b872dd with:
                         gas gas_remaining wei
                        args address(arg1), address(this.address), mem[(32 * idx) + _40 + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not return_data.size:
                        require ext_code.size(sub_2fa4d12bAddress)
                        staticcall sub_2fa4d12bAddress.0x4348f5cd with:
                                gas gas_remaining wei
                               args address(mem[(32 * idx) + _29 + 160])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 32, 38, 0xfe416c6c20616374696f6e73206f6e207374616b6565206d757374206265207265736f6c7665, mem[mem[64] + 106 len 26]
                        _748 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + _29 + 160])
                        mem[mem[64] + 52] = address(_700)
                        mem[mem[64] + 72] = block.number
                        _749 = mem[64]
                        mem[mem[64]] = 72
                        mem[64] = mem[64] + 104
                        _751 = sha3(mem[_749 + 32 len mem[_749]])
                        mem[_748 + 104] = 0
                        mem[_748 + 136] = 0
                        mem[_748 + 168] = 0
                        mem[_748 + 200] = 0
                        mem[_748 + 232] = 0
                        mem[_748 + 264] = 0
                        mem[_748 + 296] = 0
                        mem[64] = _748 + 552
                        mem[_748 + 328] = _705
                        mem[_748 + 360] = block.number
                        mem[_748 + 392] = 0
                        mem[_748 + 424] = address(_703)
                        mem[_748 + 456] = address(_700)
                        mem[_748 + 488] = 0
                        mem[_748 + 520] = 0
                        require _705 + sub_fd36117b[address(_703)].field_0 >= sub_fd36117b[address(_703)].field_0
                        sub_fd36117b[address(_703)].field_0 += _705
                        require _705 + sub_36032486[address(_700)].field_0 >= sub_36032486[address(_700)].field_0
                        sub_36032486[address(_700)].field_0 += _705
                        sub_b4f5052b[_751] = sub_1242b194[address(_703)].field_0
                        sub_1242b194[address(_703)].field_0++
                        sub_1242b194[address(_703)][sub_1242b194[address(_703)].field_0].field_0 = _751
                        sub_4fba1838[_751] = sub_8ccc3544[address(_700)]
                        sub_8ccc3544[address(_700)]++
                        sub_8ccc3544[address(_700)][sub_8ccc3544[address(_700)]] = _751
                        mem[0] = _751
                        mem[32] = 57
                        sub_5652c52f[_751].field_0 = _705
                        sub_5652c52f[_751].field_256 = block.number
                        sub_5652c52f[_751].field_512 = 0
                        address(sub_5652c52f[_751].field_768) = address(_703)
                        address(sub_5652c52f[_751].field_1024) = address(_700)
                        uint8(sub_5652c52f[_751].field_1184) = 0
                        Mask(88, 0, sub_5652c52f[_751].field_1192) = 0
                        Mask(80, 0, sub_5652c52f[_751].field_1200) = 0
                        mem[_748 + 552] = _751
                        mem[_748 + 584] = _705
                        mem[_748 + 616] = address(_700)
                        mem[_748 + 648] = address(_703)
                        mem[_748 + 680] = 0
                        emit 0x7ab7e8e1: _751, _705, address(_700), address(_703), 0
                    else:
                        if 32 != return_data.size:
                            revert with 0, 'transferFrom fail'
                        mem[0] = ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            revert with 0, 'transferFrom fail'
                        require ext_code.size(sub_2fa4d12bAddress)
                        staticcall sub_2fa4d12bAddress.0x4348f5cd with:
                                gas gas_remaining wei
                               args address(mem[(32 * idx) + _29 + 160])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 32, 38, 0xfe416c6c20616374696f6e73206f6e207374616b6565206d757374206265207265736f6c7665, mem[mem[64] + 106 len 26]
                        _758 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + _29 + 160])
                        mem[mem[64] + 52] = address(_700)
                        mem[mem[64] + 72] = block.number
                        _759 = mem[64]
                        mem[mem[64]] = 72
                        mem[64] = mem[64] + 104
                        _761 = sha3(mem[_759 + 32 len mem[_759]])
                        mem[_758 + 104] = 0
                        mem[_758 + 136] = 0
                        mem[_758 + 168] = 0
                        mem[_758 + 200] = 0
                        mem[_758 + 232] = 0
                        mem[_758 + 264] = 0
                        mem[_758 + 296] = 0
                        mem[64] = _758 + 552
                        mem[_758 + 328] = _705
                        mem[_758 + 360] = block.number
                        mem[_758 + 392] = 0
                        mem[_758 + 424] = address(_703)
                        mem[_758 + 456] = address(_700)
                        mem[_758 + 488] = 0
                        mem[_758 + 520] = 0
                        require _705 + sub_fd36117b[address(_703)].field_0 >= sub_fd36117b[address(_703)].field_0
                        sub_fd36117b[address(_703)].field_0 += _705
                        require _705 + sub_36032486[address(_700)].field_0 >= sub_36032486[address(_700)].field_0
                        sub_36032486[address(_700)].field_0 += _705
                        sub_b4f5052b[_761] = sub_1242b194[address(_703)].field_0
                        sub_1242b194[address(_703)].field_0++
                        sub_1242b194[address(_703)][sub_1242b194[address(_703)].field_0].field_0 = _761
                        sub_4fba1838[_761] = sub_8ccc3544[address(_700)]
                        sub_8ccc3544[address(_700)]++
                        sub_8ccc3544[address(_700)][sub_8ccc3544[address(_700)]] = _761
                        mem[0] = _761
                        mem[32] = 57
                        sub_5652c52f[_761].field_0 = _705
                        sub_5652c52f[_761].field_256 = block.number
                        sub_5652c52f[_761].field_512 = 0
                        address(sub_5652c52f[_761].field_768) = address(_703)
                        address(sub_5652c52f[_761].field_1024) = address(_700)
                        uint8(sub_5652c52f[_761].field_1184) = 0
                        Mask(88, 0, sub_5652c52f[_761].field_1192) = 0
                        Mask(80, 0, sub_5652c52f[_761].field_1200) = 0
                        mem[_758 + 552] = _761
                        mem[_758 + 584] = _705
                        mem[_758 + 616] = address(_700)
                        mem[_758 + 648] = address(_703)
                        mem[_758 + 680] = 0
                        emit 0x7ab7e8e1: _761, _705, address(_700), address(_703), 0
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
            address(sub_d7343897[mem[128]].field_1024) = arg1
            uint8(sub_d7343897[mem[128]].field_1184) = mem[255 len 1]
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
        mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = address(mem[160])
        require arg2 + sub_fd36117b[address(_7)].field_0 >= sub_fd36117b[address(_7)].field_0
        sub_fd36117b[address(_7)].field_0 += arg2
        require arg2 + sub_36032486[address(mem[128])].field_0 >= sub_36032486[address(mem[128])].field_0
        sub_36032486[address(mem[128])].field_0 += arg2
        sub_b4f5052b[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]] = sub_1242b194[address(_7)].field_0
        sub_1242b194[address(_7)].field_0++
        sub_1242b194[address(_7)][sub_1242b194[address(_7)].field_0].field_0 = sha3(mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72])
        sub_4fba1838[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]] = sub_8ccc3544[address(mem[128])]
        sub_8ccc3544[address(mem[128])]++
        sub_8ccc3544[address(mem[128])][sub_8ccc3544[address(mem[128])]] = sha3(mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72])
        sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_0 = arg2
        sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_256 = block.number
        sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_512 = 0
        address(sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_768) = address(_7)
        address(sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_1024) = mem[140 len 20]
        uint8(sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_1184) = 0
        Mask(88, 0, sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_1192) = 0
        Mask(80, 0, sub_5652c52f[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]].field_1200) = 0
        emit 0x7ab7e8e1: sha3(mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]), arg2, address(mem[128]), address(_7), 0
}



}
