contract main {




// =====================  Runtime code  =====================


address owner;
bool stor1; offset 256
uint8 stor1; offset 160
uint8 stor1; offset 168
uint8 stor1; offset 176
uint8 stor1; offset 184
uint128 stor1; offset 184
address stor1;
uint256 stor1;
address sub_3f6742d6Address;
address sub_daed85fdAddress;
address sub_8365d4e5Address;
address sub_f96070a3Address;
uint256 sub_67f39820;
uint256 requiredStake;
uint8 sub_8edaf637;
address tokenAddress; offset 8
array of address stor4;
mapping of struct stor5;
mapping of uint256 stor6;
array of uint256 name;
mapping of uint8 stor8;
address sub_c2603658Address;

function requiredStake() payable {
    return requiredStake
}

function sub_21d7dfa4(?) payable {
    return bool(uint8(stor5[msg.sender].field_0))
}

function sub_3f6742d6(?) payable {
    return sub_3f6742d6Address
}

function getName(address arg1) payable {
    return name[address(arg1)][0 len name[address(arg1)].length]
}

function sub_67f39820(?) payable {
    return sub_67f39820
}

function sub_6984a57e(?) payable {
    return bool(stor6[msg.sender])
}

function sub_8365d4e5(?) payable {
    return sub_8365d4e5Address
}

function requiredToken() payable {
    return tokenAddress
}

function owner() payable {
    return owner
}

function sub_8edaf637(?) payable {
    return bool(sub_8edaf637)
}

function tokenAddress() payable {
    return tokenAddress
}

function sub_c2603658(?) payable {
    return sub_c2603658Address
}

function sub_daed85fd(?) payable {
    return sub_daed85fdAddress
}

function sub_e311e3df(?) payable {
    return bool(uint8(stor1.field_184))
}

function sub_f96070a3(?) payable {
    return sub_f96070a3Address
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function close() payable {
    require msg.sender == owner
    uint256(stor1.field_0) = 0xffffffffffffffffff00ff00ffffffffffffffffffffffffffffffffffffffff and uint256(stor1.field_0)
}

function open() payable {
    require msg.sender == owner
    uint8(stor1.field_160) = 1
    uint8(stor1.field_176) = 0
    Mask(72, 0, stor1.field_184) = 0
    stor1.field_256 % 1 = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setStakeAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'There is some stake left in the pool'
    requiredStake = arg1
}

function allowClaiming() payable {
    require msg.sender == owner
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0x3e7c7b90 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Answers are not available yet'
    if uint8(stor1.field_176):
        revert with 0, 'The pool has already been completed'
    uint8(stor1.field_176) = 1
}

function withdraw() payable {
    if bool(uint8(stor1.field_160)) != 1:
        revert with 0, 'Predictions are closed'
    if stor6[msg.sender] < requiredStake:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have any funds in the pool'
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    require ext_code.size(tokenAddress)
    if ext_call.return_data[0] < requiredStake:
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    else:
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, requiredStake, mem[ceil32(return_data.size) + 196 len 28]
    call tokenAddress.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28]
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228]
    stor6[msg.sender] = 0
}

function sub_37cc3fe0(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if bool(uint8(stor1.field_168)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You cannot disperse awards yet. call complete()'
    if bool(uint8(stor1.field_184)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You cannot disperse funds even though you're the owner'
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    require ext_code.size(tokenAddress)
    if ext_call.return_data[0] < arg2:
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    else:
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, mem[ceil32(return_data.size) + 196 len 28]
    call tokenAddress.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28]
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228]
}

function stake() payable {
    if bool(uint8(stor1.field_160)) != 1:
        revert with 0, 'Predictions are closed'
    if stor6[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You already have funds in the pool'
    mem[100] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < requiredStake:
        revert with 0, 'Your account doesn't have enough funds for the token'
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    require ext_code.size(tokenAddress)
    mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), requiredStake, mem[ceil32(return_data.size) + 228 len 28]
    call tokenAddress.mem[ceil32(return_data.size) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 232 len 96]
    if not return_data.size:
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28]
    else:
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 260]
    stor6[msg.sender] = requiredStake
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if address(stor4[idx]) != msg.sender:
            idx = idx + 1
            continue 
        if idx >= stor4.length:
            stor4.length++
            uint256(stor4[stor4.length]) = msg.sender or Mask(96, 160, uint256(stor4[stor4.length]))
    stor4.length++
    uint256(stor4[stor4.length]) = msg.sender or Mask(96, 160, uint256(stor4[stor4.length]))
}

function sub_87f7fea0(?) payable {
    require calldata.size - 4 >= 2048
    require 35 < calldata.size
    require 964 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 30:
        mem[t] = bool(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 995 < calldata.size
    require 1924 <= calldata.size
    idx = 0
    s = 964
    t = 1056
    while idx < 30:
        mem[t] = uint8(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[1924] < 30
    require cd[1956] < 30
    require cd[1988] < 30
    require cd[2020] <= test266151307()
    require cd[2020] + 35 < calldata.size
    require ('cd', 2020).length <= test266151307()
    require ceil32(('cd', 2020).length) + 2048 >= 2016 and ceil32(('cd', 2020).length) + 2048 <= test266151307()
    mem[2016] = ('cd', 2020).length
    require cd[2020] + ('cd', 2020).length + 36 <= calldata.size
    if bool(uint8(stor1.field_160)) != 1:
        revert with 0, 'Predictions are closed'
    require cd[1924] <= 29
    require cd[1956] <= 29
    require cd[1988] <= 29
    name[msg.sender][] = Array(len=('cd', 2020).length, data=call.data[cd[2020] + 36 len ('cd', 2020).length])
    uint8(stor5[msg.sender].field_0) = 1
    s = 0
    idx = 96
    while 1056 > idx:
        stor5[msg.sender].field_256 = bool(mem[idx]) * 256^s or !(255 * 256^s) and stor5[msg.sender].field_256
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 30
    s = sha3(msg.sender, 5) + 1
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-28 * None + 3 / 32) + (None * None + 3 / 32) + 1
    while 2 > idx:
        uint8(stor5[msg.sender][idx].field_0) = 0
        idx = idx + 1
        continue 
    s = 0
    idx = 1056
    while 2016 > idx:
        stor5[msg.sender].field_512 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor5[msg.sender].field_512
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 30
    s = sha3(msg.sender, 5) + 2
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-28 * None + 3 / 32) + (None * None + 3 / 32) + 2
    while 3 > idx:
        uint8(stor5[msg.sender][idx].field_0) = 0
        idx = idx + 1
        continue 
    require cd[1924] <= 29
    stor5[msg.sender].field_768 = cd[1924] or Mask(248, 8, stor5[msg.sender].field_768)
    uint8(stor5[msg.sender].field_776) = 0
    stor5[msg.sender].field_1024 % 1 = 0
    require cd[1956] <= 29
    Mask(240, 0, stor5[msg.sender].field_784) = Mask(240, 0, cd[1956])
    require cd[1988] <= 29
    Mask(232, 0, stor5[msg.sender].field_792) = Mask(232, 0, cd[1988])
}

function claim() payable {
    if bool(uint8(stor1.field_176)) != 1:
        revert with 0, 'You cannot claim your bounty yet'
    if stor6[msg.sender] < requiredStake:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have any funds in the pool'
    if stor8[msg.sender]:
        revert with 0, 'You already claimed!'
    if msg.sender == sub_c2603658Address:
        if 51 * sub_67f39820 / 100 <= 0:
            revert with 0, 'You didn't place'
        mem[100] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        require ext_code.size(tokenAddress)
        if ext_call.return_data[0] < 51 * sub_67f39820 / 100:
            mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
        else:
            mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, 51 * sub_67f39820 / 100, mem[ceil32(return_data.size) + 196 len 28]
    else:
        if msg.sender == sub_3f6742d6Address:
            if 26 * sub_67f39820 / 100 <= 0:
                revert with 0, 'You didn't place'
            mem[100] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            require ext_code.size(tokenAddress)
            if ext_call.return_data[0] < 26 * sub_67f39820 / 100:
                mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
            else:
                mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, 26 * sub_67f39820 / 100, mem[ceil32(return_data.size) + 196 len 28]
        else:
            if msg.sender == sub_daed85fdAddress:
                if 13 * sub_67f39820 / 100 <= 0:
                    revert with 0, 'You didn't place'
                mem[100] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                require ext_code.size(tokenAddress)
                if ext_call.return_data[0] < 13 * sub_67f39820 / 100:
                    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
                else:
                    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, 13 * sub_67f39820 / 100, mem[ceil32(return_data.size) + 196 len 28]
            else:
                if msg.sender == sub_8365d4e5Address:
                    if 7 * sub_67f39820 / 100 <= 0:
                        revert with 0, 'You didn't place'
                    mem[100] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    require ext_code.size(tokenAddress)
                    if ext_call.return_data[0] < 7 * sub_67f39820 / 100:
                        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
                    else:
                        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, 7 * sub_67f39820 / 100, mem[ceil32(return_data.size) + 196 len 28]
                else:
                    if sub_f96070a3Address != msg.sender:
                        revert with 0, 'You didn't place'
                    if 3 * sub_67f39820 / 100 <= 0:
                        revert with 0, 'You didn't place'
                    mem[100] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    require ext_code.size(tokenAddress)
                    if ext_call.return_data[0] < 3 * sub_67f39820 / 100:
                        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
                    else:
                        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, 3 * sub_67f39820 / 100, mem[ceil32(return_data.size) + 196 len 28]
    call tokenAddress.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28]
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228]
    stor8[msg.sender] = 1
}

function calculatePoints() payable {
    mem[96] = stor4.length
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = stor4.length
    else:
        mem[128 len 32 * stor4.length] = code.data[10805 len 32 * stor4.length]
        mem[(32 * stor4.length) + 128] = stor4.length
        mem[(32 * stor4.length) + 160 len 32 * stor4.length] = code.data[10805 len 32 * stor4.length]
    mem[(64 * stor4.length) + 160] = 0
    mem[(64 * stor4.length) + 2240 len 960] = code.data[10805 len 960]
    mem[(64 * stor4.length) + 192] = (64 * stor4.length) + 2240
    mem[(64 * stor4.length) + 3200 len 960] = code.data[10805 len 960]
    mem[(64 * stor4.length) + 224] = (64 * stor4.length) + 3200
    mem[(64 * stor4.length) + 256] = 0
    mem[(64 * stor4.length) + 288] = 0
    mem[(64 * stor4.length) + 320] = 0
    mem[(64 * stor4.length) + 352] = 0
    mem[(64 * stor4.length) + 4160] = 0x40e1fd2200000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0x40e1fd22 with:
            gas gas_remaining wei
           args mem[(64 * stor4.length) + 4164 len 127 * stor4.length]
    mem[(64 * stor4.length) + 4160 len 2080] = ext_call.return_data[0 len 2080]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 2080
    require bool((64 * stor4.length) + ceil32(return_data.size) + 4384 <= test266151307())
    mem[(64 * stor4.length) + ceil32(return_data.size) + 4160] = bool(ext_call.return_data[0])
    require (64 * stor4.length) + 4223 < (64 * stor4.length) + return_data.size + 4160
    require bool((64 * stor4.length) + ceil32(return_data.size) + 5344 <= test266151307())
    require 992 <= return_data.size
    idx = 0
    s = (64 * stor4.length) + 4192
    t = (64 * stor4.length) + ceil32(return_data.size) + 4384
    while idx < 30:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * stor4.length) + ceil32(return_data.size) + 4192] = (64 * stor4.length) + ceil32(return_data.size) + 4384
    require (64 * stor4.length) + 5183 < (64 * stor4.length) + return_data.size + 4160
    require bool((64 * stor4.length) + ceil32(return_data.size) + 6304 <= test266151307())
    mem[64] = (64 * stor4.length) + ceil32(return_data.size) + 6304
    require 1952 <= return_data.size
    idx = 0
    s = (64 * stor4.length) + 5152
    t = (64 * stor4.length) + ceil32(return_data.size) + 5344
    while idx < 30:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * stor4.length) + ceil32(return_data.size) + 4224] = (64 * stor4.length) + ceil32(return_data.size) + 5344
    require mem[(64 * stor4.length) + 6112] < 30
    mem[(64 * stor4.length) + ceil32(return_data.size) + 4256] = mem[(64 * stor4.length) + 6112]
    require mem[(64 * stor4.length) + 6144] < 30
    mem[(64 * stor4.length) + ceil32(return_data.size) + 4288] = mem[(64 * stor4.length) + 6144]
    require mem[(64 * stor4.length) + 6176] < 30
    mem[(64 * stor4.length) + ceil32(return_data.size) + 4320] = mem[(64 * stor4.length) + 6176]
    require mem[(64 * stor4.length) + 6208] < 30
    mem[(64 * stor4.length) + ceil32(return_data.size) + 4352] = mem[(64 * stor4.length) + 6208]
    idx = 0
    while idx < stor4.length:
        mem[0] = address(stor4[idx])
        mem[32] = 6
        if stor6[address(stor4[idx])] >= requiredStake:
            require idx < stor4.length
            mem[32] = 5
            s = 0
            while s < 28:
                require s < 30
                if bool(sub_8edaf637) != 1:
                    if bool(stor(('map', ('stor', 160, 0, ('array', ('var', 0), ('name', 'stor4', 4))), ('name', 'stor5', 5)) + (0.03125 / s) + 1)[uint8(s)]) == bool(mem[(32 * s) + (64 * stor4.length) + ceil32(return_data.size) + 4384]):
                        require s < 30
                        if 1 == bool(mem[(32 * s) + (64 * stor4.length) + ceil32(return_data.size) + 4384]):
                            require s < 30
                else:
                    require s < 30
                    if bool(mem[(32 * s) + (64 * stor4.length) + ceil32(return_data.size) + 4384]) != 1:
                        if bool(stor(('map', ('stor', 160, 0, ('array', ('var', 0), ('name', 'stor4', 4))), ('name', 'stor5', 5)) + (0.03125 / s) + 1)[uint8(s)]) == bool(mem[(32 * s) + (64 * stor4.length) + ceil32(return_data.size) + 4384]):
                            require s < 30
                            if 1 == bool(mem[(32 * s) + (64 * stor4.length) + ceil32(return_data.size) + 4384]):
                                require s < 30
                    else:
                        if mem[(32 * s) + (64 * stor4.length) + ceil32(return_data.size) + 5375 len 1] != 1:
                            require s < 30
                            if bool(stor(('map', ('stor', 160, 0, ('array', ('var', 0), ('name', 'stor4', 4))), ('name', 'stor5', 5)) + (0.03125 / s) + 1)[uint8(s)]) == bool(mem[(32 * s) + (64 * stor4.length) + ceil32(return_data.size) + 4384]):
                                require s < 30
                                if 1 == bool(mem[(32 * s) + (64 * stor4.length) + ceil32(return_data.size) + 4384]):
                                    require s < 30
                s = s + 1
                continue 
            if bool(sub_8edaf637) != 1:
                require mem[(64 * stor4.length) + ceil32(return_data.size) + 4256] <= 29
                require uint8(stor5[address(stor4[idx])].field_768) <= 29
                require mem[(64 * stor4.length) + ceil32(return_data.size) + 4320] <= 29
                require uint8(stor5[address(stor4[idx])].field_784) <= 29
                require mem[(64 * stor4.length) + ceil32(return_data.size) + 4352] <= 29
                require uint8(stor5[address(stor4[idx])].field_792) <= 29
                require 0 < stor4.length
                if uint8(stor5[address(stor4[idx])].field_768) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4256]:
                    if uint8(stor5[address(stor4[idx])].field_784) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4320]:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4352]:
                            mem[128] = 0
                        else:
                            mem[128] = 1
                    else:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4352]:
                            mem[128] = 1
                        else:
                            mem[128] = 2
                else:
                    if uint8(stor5[address(stor4[idx])].field_784) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4320]:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4352]:
                            mem[128] = 1
                        else:
                            mem[128] = 2
                    else:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4352]:
                            mem[128] = 2
                        else:
                            mem[128] = 3
            else:
                require mem[(64 * stor4.length) + ceil32(return_data.size) + 4288] <= 29
                require uint8(stor5[address(stor4[idx])].field_768) <= 29
                require mem[(64 * stor4.length) + ceil32(return_data.size) + 4320] <= 29
                require uint8(stor5[address(stor4[idx])].field_784) <= 29
                require mem[(64 * stor4.length) + ceil32(return_data.size) + 4352] <= 29
                require uint8(stor5[address(stor4[idx])].field_792) <= 29
                require 0 < stor4.length
                if uint8(stor5[address(stor4[idx])].field_768) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4288]:
                    if uint8(stor5[address(stor4[idx])].field_784) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4320]:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4352]:
                            mem[128] = 0
                        else:
                            mem[128] = 1
                    else:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4352]:
                            mem[128] = 1
                        else:
                            mem[128] = 2
                else:
                    if uint8(stor5[address(stor4[idx])].field_784) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4320]:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4352]:
                            mem[128] = 1
                        else:
                            mem[128] = 2
                    else:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(64 * stor4.length) + ceil32(return_data.size) + 4352]:
                            mem[128] = 2
                        else:
                            mem[128] = 3
            require idx < stor4.length
            mem[0] = 4
            require 0 < mem[(32 * stor4.length) + 128]
            mem[(32 * stor4.length) + 160] = address(stor4[idx])
        idx = idx + 1
        continue 
    mem[(64 * stor4.length) + ceil32(return_data.size) + 6304] = 64
    mem[(64 * stor4.length) + ceil32(return_data.size) + 6368] = stor4.length
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < stor4.length:
        mem[t] = ('signextend', 1, ('mem', ('range', ('var', 1), 32)))
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * stor4.length) + ceil32(return_data.size) + 6336] = (32 * stor4.length) + 96
    mem[(98 * stor4.length) + ceil32(return_data.size) + 6400] = mem[(32 * stor4.length) + 128]
    idx = 0
    s = (32 * stor4.length) + 160
    t = (98 * stor4.length) + ceil32(return_data.size) + 6432
    while idx < mem[(32 * stor4.length) + 128]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (98 * stor4.length) + ceil32(return_data.size) + (32 * mem[(32 * stor4.length) + 128]) + -mem[64] + 6432
}

function complete() payable {
    require msg.sender == owner
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0x3e7c7b90 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Answers are not available yet'
    if uint8(stor1.field_176):
        revert with 0, 'The pool has already been completed'
    uint8(stor1.field_168) = 1
    mem[ceil32(return_data.size) + 96] = stor4.length
    if not stor4.length:
        mem[ceil32(return_data.size) + (32 * stor4.length) + 128] = stor4.length
    else:
        mem[ceil32(return_data.size) + 128 len 32 * stor4.length] = code.data[10805 len 32 * stor4.length]
        mem[ceil32(return_data.size) + (32 * stor4.length) + 128] = stor4.length
        mem[ceil32(return_data.size) + (32 * stor4.length) + 160 len 32 * stor4.length] = code.data[10805 len 32 * stor4.length]
    mem[ceil32(return_data.size) + (64 * stor4.length) + 160] = 0
    mem[ceil32(return_data.size) + (64 * stor4.length) + 2240 len 960] = code.data[10805 len 960]
    mem[ceil32(return_data.size) + (64 * stor4.length) + 192] = ceil32(return_data.size) + (64 * stor4.length) + 2240
    mem[ceil32(return_data.size) + (64 * stor4.length) + 3200 len 960] = code.data[10805 len 960]
    mem[ceil32(return_data.size) + (64 * stor4.length) + 224] = ceil32(return_data.size) + (64 * stor4.length) + 3200
    mem[ceil32(return_data.size) + (64 * stor4.length) + 256] = 0
    mem[ceil32(return_data.size) + (64 * stor4.length) + 288] = 0
    mem[ceil32(return_data.size) + (64 * stor4.length) + 320] = 0
    mem[ceil32(return_data.size) + (64 * stor4.length) + 352] = 0
    mem[ceil32(return_data.size) + (64 * stor4.length) + 4160] = 0x40e1fd2200000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0x40e1fd22 with:
            gas gas_remaining wei
           args mem[ceil32(return_data.size) + (64 * stor4.length) + 4164 len 127 * stor4.length]
    mem[ceil32(return_data.size) + (64 * stor4.length) + 4160 len 2080] = ext_call.return_data[0 len 2080]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 2080
    require bool((2 * ceil32(return_data.size)) + (64 * stor4.length) + 4384 <= test266151307())
    mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4160] = bool(ext_call.return_data[0])
    require ceil32(return_data.size) + (64 * stor4.length) + 4223 < ceil32(return_data.size) + (64 * stor4.length) + return_data.size + 4160
    require bool((2 * ceil32(return_data.size)) + (64 * stor4.length) + 5344 <= test266151307())
    require 992 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + (64 * stor4.length) + 4192
    t = (2 * ceil32(return_data.size)) + (64 * stor4.length) + 4384
    while idx < 30:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4192] = (2 * ceil32(return_data.size)) + (64 * stor4.length) + 4384
    require ceil32(return_data.size) + (64 * stor4.length) + 5183 < ceil32(return_data.size) + (64 * stor4.length) + return_data.size + 4160
    require bool((2 * ceil32(return_data.size)) + (64 * stor4.length) + 6304 <= test266151307())
    require 1952 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + (64 * stor4.length) + 5152
    t = (2 * ceil32(return_data.size)) + (64 * stor4.length) + 5344
    while idx < 30:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4224] = (2 * ceil32(return_data.size)) + (64 * stor4.length) + 5344
    require mem[ceil32(return_data.size) + (64 * stor4.length) + 6112] < 30
    mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4256] = mem[ceil32(return_data.size) + (64 * stor4.length) + 6112]
    require mem[ceil32(return_data.size) + (64 * stor4.length) + 6144] < 30
    mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4288] = mem[ceil32(return_data.size) + (64 * stor4.length) + 6144]
    require mem[ceil32(return_data.size) + (64 * stor4.length) + 6176] < 30
    mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4320] = mem[ceil32(return_data.size) + (64 * stor4.length) + 6176]
    require mem[ceil32(return_data.size) + (64 * stor4.length) + 6208] < 30
    mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4352] = mem[ceil32(return_data.size) + (64 * stor4.length) + 6208]
    idx = 0
    while idx < stor4.length:
        mem[0] = address(stor4[idx])
        mem[32] = 6
        if stor6[address(stor4[idx])] >= requiredStake:
            require idx < stor4.length
            mem[32] = 5
            s = 0
            while s < 28:
                require s < 30
                if bool(sub_8edaf637) != 1:
                    if bool(stor(('map', ('stor', 160, 0, ('array', ('var', 0), ('name', 'stor4', 4))), ('name', 'stor5', 5)) + (0.03125 / s) + 1)[uint8(s)]) == bool(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * stor4.length) + 4384]):
                        require s < 30
                        if 1 == bool(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * stor4.length) + 4384]):
                            require s < 30
                else:
                    require s < 30
                    if bool(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * stor4.length) + 4384]) != 1:
                        if bool(stor(('map', ('stor', 160, 0, ('array', ('var', 0), ('name', 'stor4', 4))), ('name', 'stor5', 5)) + (0.03125 / s) + 1)[uint8(s)]) == bool(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * stor4.length) + 4384]):
                            require s < 30
                            if 1 == bool(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * stor4.length) + 4384]):
                                require s < 30
                    else:
                        if mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * stor4.length) + 5375 len 1] != 1:
                            require s < 30
                            if bool(stor(('map', ('stor', 160, 0, ('array', ('var', 0), ('name', 'stor4', 4))), ('name', 'stor5', 5)) + (0.03125 / s) + 1)[uint8(s)]) == bool(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * stor4.length) + 4384]):
                                require s < 30
                                if 1 == bool(mem[(32 * s) + (2 * ceil32(return_data.size)) + (64 * stor4.length) + 4384]):
                                    require s < 30
                s = s + 1
                continue 
            if bool(sub_8edaf637) != 1:
                require mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4256] <= 29
                require uint8(stor5[address(stor4[idx])].field_768) <= 29
                require mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4320] <= 29
                require uint8(stor5[address(stor4[idx])].field_784) <= 29
                require mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4352] <= 29
                require uint8(stor5[address(stor4[idx])].field_792) <= 29
                require 0 < mem[ceil32(return_data.size) + 96]
                if uint8(stor5[address(stor4[idx])].field_768) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4256]:
                    if uint8(stor5[address(stor4[idx])].field_784) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4320]:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4352]:
                            mem[ceil32(return_data.size) + 128] = 0
                        else:
                            mem[ceil32(return_data.size) + 128] = 1
                    else:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4352]:
                            mem[ceil32(return_data.size) + 128] = 1
                        else:
                            mem[ceil32(return_data.size) + 128] = 2
                else:
                    if uint8(stor5[address(stor4[idx])].field_784) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4320]:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4352]:
                            mem[ceil32(return_data.size) + 128] = 1
                        else:
                            mem[ceil32(return_data.size) + 128] = 2
                    else:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4352]:
                            mem[ceil32(return_data.size) + 128] = 2
                        else:
                            mem[ceil32(return_data.size) + 128] = 3
            else:
                require mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4288] <= 29
                require uint8(stor5[address(stor4[idx])].field_768) <= 29
                require mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4320] <= 29
                require uint8(stor5[address(stor4[idx])].field_784) <= 29
                require mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4352] <= 29
                require uint8(stor5[address(stor4[idx])].field_792) <= 29
                require 0 < mem[ceil32(return_data.size) + 96]
                if uint8(stor5[address(stor4[idx])].field_768) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4288]:
                    if uint8(stor5[address(stor4[idx])].field_784) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4320]:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4352]:
                            mem[ceil32(return_data.size) + 128] = 0
                        else:
                            mem[ceil32(return_data.size) + 128] = 1
                    else:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4352]:
                            mem[ceil32(return_data.size) + 128] = 1
                        else:
                            mem[ceil32(return_data.size) + 128] = 2
                else:
                    if uint8(stor5[address(stor4[idx])].field_784) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4320]:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4352]:
                            mem[ceil32(return_data.size) + 128] = 1
                        else:
                            mem[ceil32(return_data.size) + 128] = 2
                    else:
                        if uint8(stor5[address(stor4[idx])].field_792) != mem[(2 * ceil32(return_data.size)) + (64 * stor4.length) + 4352]:
                            mem[ceil32(return_data.size) + 128] = 2
                        else:
                            mem[ceil32(return_data.size) + 128] = 3
            require idx < stor4.length
            mem[0] = 4
            require 0 < mem[ceil32(return_data.size) + (32 * stor4.length) + 128]
            mem[ceil32(return_data.size) + (32 * stor4.length) + 160] = address(stor4[idx])
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    t = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        require idx < mem[ceil32(return_data.size) + 96]
        require idx < mem[ceil32(return_data.size) + 96]
        require idx < mem[ceil32(return_data.size) + 96]
        if ('signextend', 1, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))) <= ('signextend', 1, ('var', 1)):
            if idx < mem[ceil32(return_data.size) + 96]:
                if ('signextend', 1, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))) > ('signextend', 1, ('var', 1)):
                    if idx < mem[ceil32(return_data.size) + 96]:
                        if idx < mem[ceil32(return_data.size) + (32 * stor4.length) + 128]:
                            idx = idx + 1
                            s = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            t = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 160]
                            continue 
                else:
                    if idx < mem[ceil32(return_data.size) + 96]:
                        if ('signextend', 1, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))) > 0:
                            if idx < mem[ceil32(return_data.size) + 96]:
                                if idx < mem[ceil32(return_data.size) + (32 * stor4.length) + 128]:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                        else:
                            if idx < mem[ceil32(return_data.size) + 96]:
                                if ('signextend', 1, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))) > 0:
                                    if idx < mem[ceil32(return_data.size) + 96]:
                                        if idx < mem[ceil32(return_data.size) + (32 * stor4.length) + 128]:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                else:
                                    if idx < mem[ceil32(return_data.size) + 96]:
                                        if ('signextend', 1, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))) > 0:
                                            if idx < mem[ceil32(return_data.size) + 96]:
                                                if idx < mem[ceil32(return_data.size) + (32 * stor4.length) + 128]:
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                        else:
                                            if idx < mem[ceil32(return_data.size) + 96]:
                                                if ('signextend', 1, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))) <= 0:
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                                if idx < mem[ceil32(return_data.size) + 96]:
                                                    if idx < mem[ceil32(return_data.size) + (32 * stor4.length) + 128]:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
        else:
            if idx < mem[ceil32(return_data.size) + 96]:
                if ('signextend', 1, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))) > ('signextend', 1, ('var', 1)):
                    if idx < mem[ceil32(return_data.size) + 96]:
                        if idx < mem[ceil32(return_data.size) + (32 * stor4.length) + 128]:
                            idx = idx + 1
                            s = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            t = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor4.length) + 160]
                            continue 
                else:
                    if idx < mem[ceil32(return_data.size) + 96]:
                        if ('signextend', 1, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))) > ('signextend', 1, ('var', 1)):
                            if idx < mem[ceil32(return_data.size) + 96]:
                                if idx < mem[ceil32(return_data.size) + (32 * stor4.length) + 128]:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                        else:
                            if idx < mem[ceil32(return_data.size) + 96]:
                                if ('signextend', 1, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))) > 0:
                                    if idx < mem[ceil32(return_data.size) + 96]:
                                        if idx < mem[ceil32(return_data.size) + (32 * stor4.length) + 128]:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                else:
                                    if idx < mem[ceil32(return_data.size) + 96]:
                                        if ('signextend', 1, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))) > 0:
                                            if idx < mem[ceil32(return_data.size) + 96]:
                                                if idx < mem[ceil32(return_data.size) + (32 * stor4.length) + 128]:
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                        else:
                                            if idx < mem[ceil32(return_data.size) + 96]:
                                                if ('signextend', 1, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32))) <= 0:
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                                if idx < mem[ceil32(return_data.size) + 96]:
                                                    if idx < mem[ceil32(return_data.size) + (32 * stor4.length) + 128]:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
        revert
    sub_c2603658Address = address(t)
    sub_3f6742d6Address = 0
    sub_daed85fdAddress = 0
    sub_8365d4e5Address = 0
    sub_f96070a3Address = 0
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_67f39820 = ext_call.return_data[0]
}



}
