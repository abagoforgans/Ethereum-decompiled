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
address sub_14fa8a25Address;
address sub_9170c1abAddress;
address sub_2fa4d12bAddress;
uint256 totalActiveStake;
uint256 sub_6bb28918;
uint256 sub_c1ae3cd2;
mapping of struct sub_5652c52f;
array of uint256 sub_1242b194;
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
array of uint256 sub_b5ee2f23;
mapping of uint256 sub_d2e53903;

function sub_1242b194(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_1242b194[arg1]
    return sub_1242b194[arg1][arg2]
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

function sub_b5ee2f23(?) {
    require calldata.size - 4 >= 32
    return sub_b5ee2f23[arg1]
}

function sub_c1ae3cd2(?) {
    return sub_c1ae3cd2
}

function sub_c2e4e2a9(?) {
    require calldata.size - 4 >= 32
    return sub_1242b194[address(arg1)]
}

function sub_d2e53903(?) {
    require calldata.size - 4 >= 32
    return sub_d2e53903[arg1]
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

function sub_f0acc707(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_b5ee2f23[arg1]
    return sub_b5ee2f23[arg1][arg2]
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
    sub_b4f5052b[arg1][msg.sender][block.number] = sub_1242b194[address(arg1)]
    sub_1242b194[address(arg1)]++
    sub_1242b194[address(arg1)][sub_1242b194[address(arg1)]] = sha3(arg1, msg.sender, block.number)
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
    require sub_1242b194[address(stor57[arg1].field_768)] - 1 < sub_1242b194[address(stor57[arg1].field_768)]
    require sub_b4f5052b[arg1] < sub_1242b194[address(stor57[arg1].field_768)]
    sub_1242b194[address(stor57[arg1].field_768)][stor60[arg1]] = sub_1242b194[address(stor57[arg1].field_768)][sub_1242b194[address(stor57[arg1].field_768)]]
    require sub_1242b194[address(stor57[arg1].field_768)] - 1 < sub_1242b194[address(stor57[arg1].field_768)]
    sub_1242b194[address(stor57[arg1].field_768)][sub_1242b194[address(stor57[arg1].field_768)]] = 0
    sub_1242b194[address(stor57[arg1].field_768)]--
    if sub_1242b194[address(stor57[arg1].field_768)] > sub_1242b194[address(stor57[arg1].field_768)] - 1:
        idx = sub_1242b194[address(stor57[arg1].field_768)] - 1
        while sub_1242b194[address(stor57[arg1].field_768)] > idx:
            sub_1242b194[address(stor57[arg1].field_768)][idx] = 0
            idx = idx + 1
            continue 
    sub_b4f5052b[arg1] = 0
    sub_b4f5052b[stor58[address(stor57[arg1].field_768)][stor58[address(stor57[arg1].field_768)]]] = sub_b4f5052b[arg1]
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
    require 1 <= sub_b5ee2f23[arg1]
    require sub_b5ee2f23[arg1] - 1 < sub_b5ee2f23[arg1]
    require sub_d2e53903[arg2] < sub_b5ee2f23[arg1]
    sub_b5ee2f23[arg1][stor70[arg2]] = sub_b5ee2f23[arg1][sub_b5ee2f23[arg1]]
    sub_b5ee2f23[arg1]--
    if sub_b5ee2f23[arg1] > sub_b5ee2f23[arg1] - 1:
        idx = sub_b5ee2f23[arg1] - 1
        while sub_b5ee2f23[arg1] > idx:
            sub_b5ee2f23[arg1][idx] = 0
            idx = idx + 1
            continue 
    sub_d2e53903[arg2] = 0
    sub_d2e53903[stor69[arg1][stor69[arg1]]] = sub_d2e53903[arg2]
    sub_1e23f2f9[arg2] = 0
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
    require sub_1242b194[address(stor57[arg2].field_768)] - 1 < sub_1242b194[address(stor57[arg2].field_768)]
    require sub_b4f5052b[arg2] < sub_1242b194[address(stor57[arg2].field_768)]
    sub_1242b194[address(stor57[arg2].field_768)][stor60[arg2]] = sub_1242b194[address(stor57[arg2].field_768)][sub_1242b194[address(stor57[arg2].field_768)]]
    require sub_1242b194[address(stor57[arg2].field_768)] - 1 < sub_1242b194[address(stor57[arg2].field_768)]
    sub_1242b194[address(stor57[arg2].field_768)][sub_1242b194[address(stor57[arg2].field_768)]] = 0
    sub_1242b194[address(stor57[arg2].field_768)]--
    if sub_1242b194[address(stor57[arg2].field_768)] > sub_1242b194[address(stor57[arg2].field_768)] - 1:
        idx = sub_1242b194[address(stor57[arg2].field_768)] - 1
        while sub_1242b194[address(stor57[arg2].field_768)] > idx:
            sub_1242b194[address(stor57[arg2].field_768)][idx] = 0
            idx = idx + 1
            continue 
    sub_b4f5052b[arg2] = 0
    sub_b4f5052b[stor58[address(stor57[arg2].field_768)][stor58[address(stor57[arg2].field_768)]]] = sub_b4f5052b[arg2]
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
        require sub_1242b194[address(stor57[_159].field_768)] - 1 < sub_1242b194[address(stor57[_159].field_768)]
        require sub_b4f5052b[_159] < sub_1242b194[address(stor57[_159].field_768)]
        sub_1242b194[address(stor57[_159].field_768)][stor60[_159]] = sub_1242b194[address(stor57[_159].field_768)][sub_1242b194[address(stor57[_159].field_768)]]
        require sub_1242b194[address(stor57[_159].field_768)] - 1 < sub_1242b194[address(stor57[_159].field_768)]
        sub_1242b194[address(stor57[_159].field_768)][sub_1242b194[address(stor57[_159].field_768)]] = 0
        sub_1242b194[address(stor57[_159].field_768)]--
        if sub_1242b194[address(stor57[_159].field_768)] > sub_1242b194[address(stor57[_159].field_768)] - 1:
            s = sub_1242b194[address(stor57[_159].field_768)] + sha3(sha3(address(sub_5652c52f[_159].field_768), 58)) - 1
            while sha3(sha3(address(sub_5652c52f[_159].field_768), 58)) + sub_1242b194[address(stor57[_159].field_768)] > s:
                stor[s] = 0
                s = s + 1
                continue 
        sub_b4f5052b[_159] = 0
        sub_b4f5052b[stor58[address(stor57[_159].field_768)][stor58[address(stor57[_159].field_768)]]] = sub_b4f5052b[_159]
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
            require idx < sub_1242b194[address(arg1)]
            mem[0] = sub_1242b194[address(arg1)][idx]
            mem[32] = 57
            if not sub_5652c52f[stor58[address(arg1)][idx]].field_512:
                if ext_call.return_data[32] <= 0:
                    _468 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_468] = sub_5652c52f[stor58[address(arg1)][idx]].field_0
                    mem[_468 + 32] = sub_5652c52f[stor58[address(arg1)][idx]].field_256
                    mem[_468 + 64] = sub_5652c52f[stor58[address(arg1)][idx]].field_512
                    mem[_468 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_768)
                    mem[_468 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                    mem[_468 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184))
                    mem[_468 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192))
                else:
                    if not ext_call.return_data[32]:
                        _486 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_486] = sub_5652c52f[stor58[address(arg1)][idx]].field_0
                        mem[_486 + 32] = sub_5652c52f[stor58[address(arg1)][idx]].field_256
                        mem[_486 + 64] = sub_5652c52f[stor58[address(arg1)][idx]].field_512
                        mem[_486 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_768)
                        mem[_486 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                        mem[_486 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184))
                        mem[_486 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192))
                        require 0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_0
                        require 0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_0
                        mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                        mem[32] = 63
                        if uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184):
                            require 0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_256
                            require 0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_256
                            mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                            mem[32] = 63
                            require 0 <= totalActiveStake
                            require sub_c1ae3cd2 >= sub_c1ae3cd2
                            _652 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_652] = sub_5652c52f[stor58[address(arg1)][idx]].field_0
                            mem[_652 + 32] = sub_5652c52f[stor58[address(arg1)][idx]].field_256
                            mem[_652 + 64] = sub_5652c52f[stor58[address(arg1)][idx]].field_512
                            mem[_652 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_768)
                            mem[_652 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                            mem[_652 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184))
                            mem[_652 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192))
                        else:
                            if not uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192):
                                require sub_c1ae3cd2 >= sub_c1ae3cd2
                                _599 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_599] = sub_5652c52f[stor58[address(arg1)][idx]].field_0
                                mem[_599 + 32] = sub_5652c52f[stor58[address(arg1)][idx]].field_256
                                mem[_599 + 64] = sub_5652c52f[stor58[address(arg1)][idx]].field_512
                                mem[_599 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_768)
                                mem[_599 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                                mem[_599 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184))
                                mem[_599 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192))
                            else:
                                require 0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_512
                                require 0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_512
                                mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                                mem[32] = 63
                                require 0 <= sub_6bb28918
                                require sub_c1ae3cd2 >= sub_c1ae3cd2
                                _651 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_651] = sub_5652c52f[stor58[address(arg1)][idx]].field_0
                                mem[_651 + 32] = sub_5652c52f[stor58[address(arg1)][idx]].field_256
                                mem[_651 + 64] = sub_5652c52f[stor58[address(arg1)][idx]].field_512
                                mem[_651 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_768)
                                mem[_651 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                                mem[_651 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184))
                                mem[_651 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192))
                    else:
                        require sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / ext_call.return_data[32] == sub_5652c52f[stor58[address(arg1)][idx]].field_0
                        _498 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_498] = sub_5652c52f[stor58[address(arg1)][idx]].field_0
                        mem[_498 + 32] = sub_5652c52f[stor58[address(arg1)][idx]].field_256
                        mem[_498 + 64] = sub_5652c52f[stor58[address(arg1)][idx]].field_512
                        mem[_498 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_768)
                        mem[_498 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                        mem[_498 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184))
                        mem[_498 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192))
                        require sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_0
                        sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_0 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100
                        require sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100 <= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_0
                        mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                        mem[32] = 63
                        sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_0 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100
                        if uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184):
                            require sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_256
                            sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_256 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100
                            require sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100 <= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_256
                            mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                            mem[32] = 63
                            sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_256 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100
                            require sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100 <= totalActiveStake
                            totalActiveStake -= sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100
                            require (sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100) + sub_c1ae3cd2 >= sub_c1ae3cd2
                            _656 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_656] = sub_5652c52f[stor58[address(arg1)][idx]].field_0
                            mem[_656 + 32] = sub_5652c52f[stor58[address(arg1)][idx]].field_256
                            mem[_656 + 64] = sub_5652c52f[stor58[address(arg1)][idx]].field_512
                            mem[_656 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_768)
                            mem[_656 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                            mem[_656 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184))
                            mem[_656 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192))
                        else:
                            if not uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192):
                                require (sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100) + sub_c1ae3cd2 >= sub_c1ae3cd2
                                _610 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_610] = sub_5652c52f[stor58[address(arg1)][idx]].field_0
                                mem[_610 + 32] = sub_5652c52f[stor58[address(arg1)][idx]].field_256
                                mem[_610 + 64] = sub_5652c52f[stor58[address(arg1)][idx]].field_512
                                mem[_610 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_768)
                                mem[_610 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                                mem[_610 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184))
                                mem[_610 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192))
                            else:
                                require sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_512
                                sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_512 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100
                                require sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100 <= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_512
                                mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                                mem[32] = 63
                                sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_512 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100
                                require sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100 <= sub_6bb28918
                                sub_6bb28918 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100
                                require (sub_5652c52f[stor58[address(arg1)][idx]].field_0 * ext_call.return_data[32] / 100) + sub_c1ae3cd2 >= sub_c1ae3cd2
                                _655 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_655] = sub_5652c52f[stor58[address(arg1)][idx]].field_0
                                mem[_655 + 32] = sub_5652c52f[stor58[address(arg1)][idx]].field_256
                                mem[_655 + 64] = sub_5652c52f[stor58[address(arg1)][idx]].field_512
                                mem[_655 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_768)
                                mem[_655 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                                mem[_655 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184))
                                mem[_655 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192))
                require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_0
                sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_0 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_0
                sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_0 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                if uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184):
                    require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_256
                    sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_256 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_256
                    sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_256 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= totalActiveStake
                    totalActiveStake -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                else:
                    if uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192):
                        require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_512
                        sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_512 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                        require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_512
                        sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_512 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                        require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_6bb28918
                        sub_6bb28918 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                require sub_5652c52f[stor58[address(arg1)][idx]].field_0 + sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_768 >= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_768
                sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_768 += sub_5652c52f[stor58[address(arg1)][idx]].field_0
                require sub_5652c52f[stor58[address(arg1)][idx]].field_0 + sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_768 >= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_768
                mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                mem[32] = 63
                sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_768 += sub_5652c52f[stor58[address(arg1)][idx]].field_0
                uint16(sub_5652c52f[stor58[address(arg1)][idx]].field_1184) = 0
                sub_5652c52f[stor58[address(arg1)][idx]].field_512 = block.number
                mem[mem[64]] = sub_1242b194[address(arg1)][idx]
                mem[mem[64] + 32] = sub_5652c52f[stor58[address(arg1)][idx]].field_0
                mem[mem[64] + 64] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                mem[mem[64] + 96] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_768)
                mem[mem[64] + 128] = 3
                emit 0x7ab7e8e1: sub_1242b194[address(arg1)][idx], sub_5652c52f[stor58[address(arg1)][idx]].field_0, address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024), address(sub_5652c52f[stor58[address(arg1)][idx]].field_768), 3
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
                require idx < sub_1242b194[address(arg1)]
                mem[0] = sub_1242b194[address(arg1)][idx]
                mem[32] = 57
                if not sub_5652c52f[stor58[address(arg1)][idx]].field_512:
                    _467 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_467] = sub_5652c52f[stor58[address(arg1)][idx]].field_0
                    mem[_467 + 32] = sub_5652c52f[stor58[address(arg1)][idx]].field_256
                    mem[_467 + 64] = sub_5652c52f[stor58[address(arg1)][idx]].field_512
                    mem[_467 + 96] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_768)
                    mem[_467 + 128] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                    mem[_467 + 160] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184))
                    mem[_467 + 192] = bool(uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192))
                    require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_0
                    sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_0 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_0
                    sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_0 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                    if uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1184):
                        require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_256
                        sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_256 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                        require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_256
                        sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_256 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                        require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= totalActiveStake
                        totalActiveStake -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                    else:
                        if uint8(sub_5652c52f[stor58[address(arg1)][idx]].field_1192):
                            require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_512
                            sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_512 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                            require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_512
                            sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_512 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                            require sub_5652c52f[stor58[address(arg1)][idx]].field_0 <= sub_6bb28918
                            sub_6bb28918 -= sub_5652c52f[stor58[address(arg1)][idx]].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx]].field_0 + sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_768 >= sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_768
                    sub_fd36117b[address(stor57[stor58[address(arg1)][idx]].field_768)].field_768 += sub_5652c52f[stor58[address(arg1)][idx]].field_0
                    require sub_5652c52f[stor58[address(arg1)][idx]].field_0 + sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_768 >= sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_768
                    mem[0] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                    mem[32] = 63
                    sub_36032486[address(stor57[stor58[address(arg1)][idx]].field_1024)].field_768 += sub_5652c52f[stor58[address(arg1)][idx]].field_0
                    uint16(sub_5652c52f[stor58[address(arg1)][idx]].field_1184) = 0
                    sub_5652c52f[stor58[address(arg1)][idx]].field_512 = block.number
                    mem[mem[64]] = sub_1242b194[address(arg1)][idx]
                    mem[mem[64] + 32] = sub_5652c52f[stor58[address(arg1)][idx]].field_0
                    mem[mem[64] + 64] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024)
                    mem[mem[64] + 96] = address(sub_5652c52f[stor58[address(arg1)][idx]].field_768)
                    mem[mem[64] + 128] = 3
                    emit 0x7ab7e8e1: sub_1242b194[address(arg1)][idx], sub_5652c52f[stor58[address(arg1)][idx]].field_0, address(sub_5652c52f[stor58[address(arg1)][idx]].field_1024), address(sub_5652c52f[stor58[address(arg1)][idx]].field_768), 3
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
                    _700 = mem[mem[192] + 128]
                    idx = 0
                    while idx < _700:
                        require idx < mem[_20 + 128]
                        _704 = mem[(32 * idx) + _20 + 160]
                        require idx < mem[_30 + 128]
                        _708 = mem[(32 * idx) + _30 + 160]
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
                            _738 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + _20 + 160])
                            mem[mem[64] + 52] = address(_19)
                            mem[mem[64] + 72] = block.number
                            _739 = mem[64]
                            mem[mem[64]] = 72
                            mem[64] = mem[64] + 104
                            _741 = sha3(mem[_739 + 32 len mem[_739]])
                            mem[_738 + 104] = 0
                            mem[_738 + 136] = 0
                            mem[_738 + 168] = 0
                            mem[_738 + 200] = 0
                            mem[_738 + 232] = 0
                            mem[_738 + 264] = 0
                            mem[_738 + 296] = 0
                            mem[_738 + 328] = _708
                            mem[_738 + 360] = block.number
                            mem[_738 + 392] = 0
                            mem[_738 + 424] = address(_704)
                            mem[_738 + 456] = address(_19)
                            mem[_738 + 488] = 0
                            mem[_738 + 520] = 0
                            require _708 + sub_fd36117b[address(_704)].field_0 >= sub_fd36117b[address(_704)].field_0
                            sub_fd36117b[address(_704)].field_0 += _708
                            require _708 + sub_36032486[address(_19)].field_0 >= sub_36032486[address(_19)].field_0
                            sub_36032486[address(_19)].field_0 += _708
                            sub_b4f5052b[_741] = sub_1242b194[address(_704)]
                            sub_1242b194[address(_704)]++
                            sub_1242b194[address(_704)][sub_1242b194[address(_704)]] = _741
                            sub_4fba1838[_741] = sub_8ccc3544[address(_19)]
                            sub_8ccc3544[address(_19)]++
                            sub_8ccc3544[address(_19)][sub_8ccc3544[address(_19)]] = _741
                            sub_5652c52f[_741].field_0 = _708
                            sub_5652c52f[_741].field_256 = block.number
                            sub_5652c52f[_741].field_512 = 0
                            address(sub_5652c52f[_741].field_768) = address(_704)
                            address(sub_5652c52f[_741].field_1024) = address(_19)
                            uint8(sub_5652c52f[_741].field_1184) = 0
                            Mask(88, 0, sub_5652c52f[_741].field_1192) = 0
                            Mask(80, 0, sub_5652c52f[_741].field_1200) = 0
                            mem[_738 + 552] = _741
                            mem[_738 + 584] = _708
                            mem[_738 + 616] = address(_19)
                            mem[_738 + 648] = address(_704)
                            mem[_738 + 680] = 0
                            emit 0x7ab7e8e1: _741, _708, address(_19), address(_704), 0
                            sub_1e23f2f9[_741] = _18
                            sub_d2e53903[_741] = sub_b5ee2f23[_18]
                            sub_b5ee2f23[_18]++
                            sub_b5ee2f23[_18][sub_b5ee2f23[_18]] = _741
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
                            if not sub_1e23f2f9[_741]:
                                if address(sub_5652c52f[_741].field_1024) != msg.sender:
                                    revert with 0, 'Only the staker can activate'
                                require ext_code.size(sub_2fa4d12bAddress)
                                staticcall sub_2fa4d12bAddress.0x64693ec8 with:
                                        gas gas_remaining wei
                                       args Array(len=15, data='xyStakeCooldown')
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_5652c52f[_741].field_256 + ext_call.return_data[0] >= block.number:
                                    revert with 0, 'Not ready to activate stake yet'
                            if sub_5652c52f[_741].field_512:
                                revert with 0, 'Cannot activate unstake'
                            if uint8(sub_5652c52f[_741].field_1192):
                                revert with 0, 'cannot re-activate stake'
                            if uint8(sub_5652c52f[_741].field_1184):
                                revert with 0, 'cannot re-activate stake'
                            require ext_code.size(sub_9170c1abAddress)
                            staticcall sub_9170c1abAddress.exists(address arg1) with:
                                    gas gas_remaining wei
                                   args address(sub_5652c52f[_741].field_768)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if bool(ext_call.return_data[0]) == bool(ext_call.return_data[0]) != 1:
                                revert with 0, 'Only BPs activated'
                            Mask(96, 0, sub_5652c52f[_741].field_1184) = Mask(96, 0, 1 == bool(ext_call.return_data[0]))
                            Mask(88, 0, sub_5652c52f[_741].field_1192) = Mask(88, 0, bool(ext_call.return_data[0]) != 1)
                            Mask(88, 0, sub_5652c52f[_741].field_1192) = 0
                            mem[64] = _738 + 776
                            mem[_738 + 552] = sub_5652c52f[_741].field_0
                            mem[_738 + 584] = sub_5652c52f[_741].field_256
                            mem[_738 + 616] = sub_5652c52f[_741].field_512
                            mem[_738 + 648] = address(sub_5652c52f[_741].field_768)
                            mem[_738 + 680] = address(sub_5652c52f[_741].field_1024)
                            mem[_738 + 712] = bool(uint8(1 == bool(ext_call.return_data[0])))
                            mem[_738 + 744] = bool(uint16(1 == bool(ext_call.return_data[0])) / 256 or uint8(bool(ext_call.return_data[0]) != 1) or 0 or 0)
                            if not uint16(1 == bool(ext_call.return_data[0])) / 256 and not uint8(bool(ext_call.return_data[0]) != 1) and True and True:
                                require sub_5652c52f[_741].field_0 + sub_fd36117b[address(stor57[_741].field_768)].field_256 >= sub_fd36117b[address(stor57[_741].field_768)].field_256
                                sub_fd36117b[address(stor57[_741].field_768)].field_256 += sub_5652c52f[_741].field_0
                                require sub_5652c52f[_741].field_0 + sub_36032486[address(stor57[_741].field_1024)].field_256 >= sub_36032486[address(stor57[_741].field_1024)].field_256
                                mem[0] = address(sub_5652c52f[_741].field_1024)
                                mem[32] = 63
                                sub_36032486[address(stor57[_741].field_1024)].field_256 += sub_5652c52f[_741].field_0
                                require sub_5652c52f[_741].field_0 + totalActiveStake >= totalActiveStake
                                totalActiveStake += sub_5652c52f[_741].field_0
                            else:
                                require sub_5652c52f[_741].field_0 + sub_fd36117b[address(stor57[_741].field_768)].field_512 >= sub_fd36117b[address(stor57[_741].field_768)].field_512
                                sub_fd36117b[address(stor57[_741].field_768)].field_512 += sub_5652c52f[_741].field_0
                                require sub_5652c52f[_741].field_0 + sub_36032486[address(stor57[_741].field_1024)].field_512 >= sub_36032486[address(stor57[_741].field_1024)].field_512
                                mem[0] = address(sub_5652c52f[_741].field_1024)
                                mem[32] = 63
                                sub_36032486[address(stor57[_741].field_1024)].field_512 += sub_5652c52f[_741].field_0
                                require sub_5652c52f[_741].field_0 + sub_6bb28918 >= sub_6bb28918
                                sub_6bb28918 += sub_5652c52f[_741].field_0
                            mem[_738 + 776] = _741
                            mem[_738 + 808] = sub_5652c52f[_741].field_0
                            mem[_738 + 840] = msg.sender
                            mem[_738 + 872] = address(sub_5652c52f[_741].field_768)
                            if bool(ext_call.return_data[0]) != 1:
                                mem[_738 + 904] = 2
                                emit 0x7ab7e8e1: _741, sub_5652c52f[_741].field_0, msg.sender, address(sub_5652c52f[_741].field_768), 2
                            else:
                                mem[_738 + 904] = 1
                                emit 0x7ab7e8e1: _741, sub_5652c52f[_741].field_0, msg.sender, address(sub_5652c52f[_741].field_768), 1
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
                            _748 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * idx) + _20 + 160])
                            mem[mem[64] + 52] = address(_19)
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
                            mem[_748 + 328] = _708
                            mem[_748 + 360] = block.number
                            mem[_748 + 392] = 0
                            mem[_748 + 424] = address(_704)
                            mem[_748 + 456] = address(_19)
                            mem[_748 + 488] = 0
                            mem[_748 + 520] = 0
                            require _708 + sub_fd36117b[address(_704)].field_0 >= sub_fd36117b[address(_704)].field_0
                            sub_fd36117b[address(_704)].field_0 += _708
                            require _708 + sub_36032486[address(_19)].field_0 >= sub_36032486[address(_19)].field_0
                            sub_36032486[address(_19)].field_0 += _708
                            sub_b4f5052b[_751] = sub_1242b194[address(_704)]
                            sub_1242b194[address(_704)]++
                            sub_1242b194[address(_704)][sub_1242b194[address(_704)]] = _751
                            sub_4fba1838[_751] = sub_8ccc3544[address(_19)]
                            sub_8ccc3544[address(_19)]++
                            sub_8ccc3544[address(_19)][sub_8ccc3544[address(_19)]] = _751
                            sub_5652c52f[_751].field_0 = _708
                            sub_5652c52f[_751].field_256 = block.number
                            sub_5652c52f[_751].field_512 = 0
                            address(sub_5652c52f[_751].field_768) = address(_704)
                            address(sub_5652c52f[_751].field_1024) = address(_19)
                            uint8(sub_5652c52f[_751].field_1184) = 0
                            Mask(88, 0, sub_5652c52f[_751].field_1192) = 0
                            Mask(80, 0, sub_5652c52f[_751].field_1200) = 0
                            mem[_748 + 552] = _751
                            mem[_748 + 584] = _708
                            mem[_748 + 616] = address(_19)
                            mem[_748 + 648] = address(_704)
                            mem[_748 + 680] = 0
                            emit 0x7ab7e8e1: _751, _708, address(_19), address(_704), 0
                            sub_1e23f2f9[_751] = _18
                            sub_d2e53903[_751] = sub_b5ee2f23[_18]
                            sub_b5ee2f23[_18]++
                            sub_b5ee2f23[_18][sub_b5ee2f23[_18]] = _751
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
                            if not sub_1e23f2f9[_751]:
                                if address(sub_5652c52f[_751].field_1024) != msg.sender:
                                    revert with 0, 'Only the staker can activate'
                                require ext_code.size(sub_2fa4d12bAddress)
                                staticcall sub_2fa4d12bAddress.0x64693ec8 with:
                                        gas gas_remaining wei
                                       args Array(len=15, data='xyStakeCooldown')
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_5652c52f[_751].field_256 + ext_call.return_data[0] >= block.number:
                                    revert with 0, 'Not ready to activate stake yet'
                            if sub_5652c52f[_751].field_512:
                                revert with 0, 'Cannot activate unstake'
                            if uint8(sub_5652c52f[_751].field_1192):
                                revert with 0, 'cannot re-activate stake'
                            if uint8(sub_5652c52f[_751].field_1184):
                                revert with 0, 'cannot re-activate stake'
                            require ext_code.size(sub_9170c1abAddress)
                            staticcall sub_9170c1abAddress.exists(address arg1) with:
                                    gas gas_remaining wei
                                   args address(sub_5652c52f[_751].field_768)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if bool(ext_call.return_data[0]) == bool(ext_call.return_data[0]) != 1:
                                revert with 0, 'Only BPs activated'
                            Mask(96, 0, sub_5652c52f[_751].field_1184) = Mask(96, 0, 1 == bool(ext_call.return_data[0]))
                            Mask(88, 0, sub_5652c52f[_751].field_1192) = Mask(88, 0, bool(ext_call.return_data[0]) != 1)
                            Mask(88, 0, sub_5652c52f[_751].field_1192) = 0
                            mem[64] = _748 + 776
                            mem[_748 + 552] = sub_5652c52f[_751].field_0
                            mem[_748 + 584] = sub_5652c52f[_751].field_256
                            mem[_748 + 616] = sub_5652c52f[_751].field_512
                            mem[_748 + 648] = address(sub_5652c52f[_751].field_768)
                            mem[_748 + 680] = address(sub_5652c52f[_751].field_1024)
                            mem[_748 + 712] = bool(uint8(1 == bool(ext_call.return_data[0])))
                            mem[_748 + 744] = bool(uint16(1 == bool(ext_call.return_data[0])) / 256 or uint8(bool(ext_call.return_data[0]) != 1) or 0 or 0)
                            if not uint16(1 == bool(ext_call.return_data[0])) / 256 and not uint8(bool(ext_call.return_data[0]) != 1) and True and True:
                                require sub_5652c52f[_751].field_0 + sub_fd36117b[address(stor57[_751].field_768)].field_256 >= sub_fd36117b[address(stor57[_751].field_768)].field_256
                                sub_fd36117b[address(stor57[_751].field_768)].field_256 += sub_5652c52f[_751].field_0
                                require sub_5652c52f[_751].field_0 + sub_36032486[address(stor57[_751].field_1024)].field_256 >= sub_36032486[address(stor57[_751].field_1024)].field_256
                                mem[0] = address(sub_5652c52f[_751].field_1024)
                                mem[32] = 63
                                sub_36032486[address(stor57[_751].field_1024)].field_256 += sub_5652c52f[_751].field_0
                                require sub_5652c52f[_751].field_0 + totalActiveStake >= totalActiveStake
                                totalActiveStake += sub_5652c52f[_751].field_0
                            else:
                                require sub_5652c52f[_751].field_0 + sub_fd36117b[address(stor57[_751].field_768)].field_512 >= sub_fd36117b[address(stor57[_751].field_768)].field_512
                                sub_fd36117b[address(stor57[_751].field_768)].field_512 += sub_5652c52f[_751].field_0
                                require sub_5652c52f[_751].field_0 + sub_36032486[address(stor57[_751].field_1024)].field_512 >= sub_36032486[address(stor57[_751].field_1024)].field_512
                                mem[0] = address(sub_5652c52f[_751].field_1024)
                                mem[32] = 63
                                sub_36032486[address(stor57[_751].field_1024)].field_512 += sub_5652c52f[_751].field_0
                                require sub_5652c52f[_751].field_0 + sub_6bb28918 >= sub_6bb28918
                                sub_6bb28918 += sub_5652c52f[_751].field_0
                            mem[_748 + 776] = _751
                            mem[_748 + 808] = sub_5652c52f[_751].field_0
                            mem[_748 + 840] = msg.sender
                            mem[_748 + 872] = address(sub_5652c52f[_751].field_768)
                            if bool(ext_call.return_data[0]) != 1:
                                mem[_748 + 904] = 2
                                emit 0x7ab7e8e1: _751, sub_5652c52f[_751].field_0, msg.sender, address(sub_5652c52f[_751].field_768), 2
                            else:
                                mem[_748 + 904] = 1
                                emit 0x7ab7e8e1: _751, sub_5652c52f[_751].field_0, msg.sender, address(sub_5652c52f[_751].field_768), 1
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
                _701 = mem[mem[160] + 128]
                idx = 0
                while idx < _701:
                    require idx < mem[_14 + 128]
                    _706 = mem[(32 * idx) + _14 + 160]
                    require idx < mem[_29 + 128]
                    _709 = mem[(32 * idx) + _29 + 160]
                    require idx < mem[_40 + 128]
                    _711 = mem[(32 * idx) + _40 + 160]
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
                        _754 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + _29 + 160])
                        mem[mem[64] + 52] = address(_706)
                        mem[mem[64] + 72] = block.number
                        _755 = mem[64]
                        mem[mem[64]] = 72
                        mem[64] = mem[64] + 104
                        _757 = sha3(mem[_755 + 32 len mem[_755]])
                        mem[_754 + 104] = 0
                        mem[_754 + 136] = 0
                        mem[_754 + 168] = 0
                        mem[_754 + 200] = 0
                        mem[_754 + 232] = 0
                        mem[_754 + 264] = 0
                        mem[_754 + 296] = 0
                        mem[64] = _754 + 552
                        mem[_754 + 328] = _711
                        mem[_754 + 360] = block.number
                        mem[_754 + 392] = 0
                        mem[_754 + 424] = address(_709)
                        mem[_754 + 456] = address(_706)
                        mem[_754 + 488] = 0
                        mem[_754 + 520] = 0
                        require _711 + sub_fd36117b[address(_709)].field_0 >= sub_fd36117b[address(_709)].field_0
                        sub_fd36117b[address(_709)].field_0 += _711
                        require _711 + sub_36032486[address(_706)].field_0 >= sub_36032486[address(_706)].field_0
                        sub_36032486[address(_706)].field_0 += _711
                        sub_b4f5052b[_757] = sub_1242b194[address(_709)]
                        sub_1242b194[address(_709)]++
                        sub_1242b194[address(_709)][sub_1242b194[address(_709)]] = _757
                        sub_4fba1838[_757] = sub_8ccc3544[address(_706)]
                        sub_8ccc3544[address(_706)]++
                        sub_8ccc3544[address(_706)][sub_8ccc3544[address(_706)]] = _757
                        mem[0] = _757
                        mem[32] = 57
                        sub_5652c52f[_757].field_0 = _711
                        sub_5652c52f[_757].field_256 = block.number
                        sub_5652c52f[_757].field_512 = 0
                        address(sub_5652c52f[_757].field_768) = address(_709)
                        address(sub_5652c52f[_757].field_1024) = address(_706)
                        uint8(sub_5652c52f[_757].field_1184) = 0
                        Mask(88, 0, sub_5652c52f[_757].field_1192) = 0
                        Mask(80, 0, sub_5652c52f[_757].field_1200) = 0
                        mem[_754 + 552] = _757
                        mem[_754 + 584] = _711
                        mem[_754 + 616] = address(_706)
                        mem[_754 + 648] = address(_709)
                        mem[_754 + 680] = 0
                        emit 0x7ab7e8e1: _757, _711, address(_706), address(_709), 0
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
                        _764 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + _29 + 160])
                        mem[mem[64] + 52] = address(_706)
                        mem[mem[64] + 72] = block.number
                        _765 = mem[64]
                        mem[mem[64]] = 72
                        mem[64] = mem[64] + 104
                        _767 = sha3(mem[_765 + 32 len mem[_765]])
                        mem[_764 + 104] = 0
                        mem[_764 + 136] = 0
                        mem[_764 + 168] = 0
                        mem[_764 + 200] = 0
                        mem[_764 + 232] = 0
                        mem[_764 + 264] = 0
                        mem[_764 + 296] = 0
                        mem[64] = _764 + 552
                        mem[_764 + 328] = _711
                        mem[_764 + 360] = block.number
                        mem[_764 + 392] = 0
                        mem[_764 + 424] = address(_709)
                        mem[_764 + 456] = address(_706)
                        mem[_764 + 488] = 0
                        mem[_764 + 520] = 0
                        require _711 + sub_fd36117b[address(_709)].field_0 >= sub_fd36117b[address(_709)].field_0
                        sub_fd36117b[address(_709)].field_0 += _711
                        require _711 + sub_36032486[address(_706)].field_0 >= sub_36032486[address(_706)].field_0
                        sub_36032486[address(_706)].field_0 += _711
                        sub_b4f5052b[_767] = sub_1242b194[address(_709)]
                        sub_1242b194[address(_709)]++
                        sub_1242b194[address(_709)][sub_1242b194[address(_709)]] = _767
                        sub_4fba1838[_767] = sub_8ccc3544[address(_706)]
                        sub_8ccc3544[address(_706)]++
                        sub_8ccc3544[address(_706)][sub_8ccc3544[address(_706)]] = _767
                        mem[0] = _767
                        mem[32] = 57
                        sub_5652c52f[_767].field_0 = _711
                        sub_5652c52f[_767].field_256 = block.number
                        sub_5652c52f[_767].field_512 = 0
                        address(sub_5652c52f[_767].field_768) = address(_709)
                        address(sub_5652c52f[_767].field_1024) = address(_706)
                        uint8(sub_5652c52f[_767].field_1184) = 0
                        Mask(88, 0, sub_5652c52f[_767].field_1192) = 0
                        Mask(80, 0, sub_5652c52f[_767].field_1200) = 0
                        mem[_764 + 552] = _767
                        mem[_764 + 584] = _711
                        mem[_764 + 616] = address(_706)
                        mem[_764 + 648] = address(_709)
                        mem[_764 + 680] = 0
                        emit 0x7ab7e8e1: _767, _711, address(_706), address(_709), 0
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
        sub_b4f5052b[mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72]] = sub_1242b194[address(_7)]
        sub_1242b194[address(_7)]++
        sub_1242b194[address(_7)][sub_1242b194[address(_7)]] = sha3(mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 0, 72])
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
