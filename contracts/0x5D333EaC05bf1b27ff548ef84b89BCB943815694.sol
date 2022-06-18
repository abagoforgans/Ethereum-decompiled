contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 tokenRate;
address companyWalletAddress;

function companyWallet() {
    return companyWalletAddress
}

function tokenRate() {
    return tokenRate
}

function sub_6f9dc4a1(?) {
    return sub_6f9dc4a1[msg.sender].field_256
}

function owner() {
    return owner
}

function sub_fd9153a3(?) {
    require calldata.size - 4 >= 32
    return sub_6f9dc4a1[arg1].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_e80798ec(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    tokenRate = arg1
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5ea4424a(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        tokenRate = 1500
    if 1 == arg1:
        tokenRate = 1000
    if 2 == arg1:
        tokenRate = 0
        return 0
    else:
        return 0
}

function sub_dc09e5cf(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not arg1:
        revert with 0, 'staking can not be 0'
    sub_6f9dc4a1[msg.sender].field_256++
    stor[(3 * sub_6f9dc4a1[msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0 = 1
    stor[(3 * sub_6f9dc4a1[msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_256 = arg1
    stor[sha3((3 * sub_6f9dc4a1[msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + 2)][].field_0 = Array(len=arg2.length, data=arg2[all])
    require sub_6f9dc4a1[msg.sender].field_0 + 1 >= sub_6f9dc4a1[msg.sender].field_0
    sub_6f9dc4a1[msg.sender].field_0++
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'can not transfer tokens'
    emit 0x63143118: block.timestamp, msg.sender, arg1, sha3('XR')
    return 1
}

function sub_fe5a65c6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.value
    if not tokenRate:
        revert with 0, 
                    32,
                    36,
                    0xfe5852206973206f6e2065786368616e67652c206e65656420746f206765742070726963,
                    mem[ceil32(arg1.length) + 232 len 28]
    call 0x66b5e3cc4b5cf15f210b6bc2d7fae962c7adf8ea with:
       value 10 * msg.value / 110 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_6f9dc4a1[msg.sender].field_256++
    stor[(3 * sub_6f9dc4a1[msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0 = 0
    stor[(3 * sub_6f9dc4a1[msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_256 = msg.value - (10 * msg.value / 110)
    stor[sha3((3 * sub_6f9dc4a1[msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + 2)][].field_0 = Array(len=arg1.length, data=arg1[all])
    require sub_6f9dc4a1[msg.sender].field_0 + 1 >= sub_6f9dc4a1[msg.sender].field_0
    sub_6f9dc4a1[msg.sender].field_0++
    emit 0x63143118: block.timestamp, msg.sender, msg.value - (10 * msg.value / 110), sha3('ETH')
    return 1
}

function returnTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'always invalid id'
    if not sub_6f9dc4a1[msg.sender].field_0:
        revert with 0, 'nothing to return'
    if arg1 > sub_6f9dc4a1[msg.sender].field_0:
        revert with 0, 'no staking data with such id'
    require arg1 - 1 < sub_6f9dc4a1[msg.sender].field_256
    if stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0 != 1:
        revert with 0, 'use returnETH'
    require arg1 - 1 < sub_6f9dc4a1[msg.sender].field_256
    mem[0] = msg.sender
    idx = arg1 - 1
    while idx < sub_6f9dc4a1[msg.sender].field_256 - 1:
        require idx + 1 < sub_6f9dc4a1[msg.sender].field_256
        require idx < sub_6f9dc4a1[msg.sender].field_256
        stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0 = stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_768
        stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_256 = stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_1024
        mem[0] = (3 * idx) + sha3(sha3(msg.sender, 5) + 1) + 2
        if 31 >= stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx) + 5].length:
            stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_512 = stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_1280
            s = sha3(mem[0])
            while sha3((3 * idx) + sha3(sha3(msg.sender, 5) + 1) + 2) + (stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + 2].length + 31 / 32) > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 5
                s = s + 1
                continue 
        else:
            stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_512 = Mask(255, 1, (256 * not bool(stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_1280)) - 1 and stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_1280) + 1
            if not Mask(255, 1, (256 * not bool(stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_1280)) - 1 and stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_1280):
                s = sha3(mem[0])
                while sha3((3 * idx) + sha3(sha3(msg.sender, 5) + 1) + 2) + (stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + 2].length + 31 / 32) > s:
                    stor[s] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    s = s + 1
                    continue 
            else:
                mem[0] = sha3(sha3(msg.sender, 5) + 1) + (3 * idx) + 5
                s = sha3((3 * idx) + sha3(sha3(msg.sender, 5) + 1) + 2)
                t = sha3(mem[0])
                while sha3(sha3(sha3(msg.sender, 5) + 1) + (3 * idx) + 5) + (stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx) + 5].length + 31 / 32) > t:
                    stor[s] = stor[t]
                    mem[0] = msg.sender
                    mem[32] = 5
                    s = s + 1
                    t = t + 1
                    continue 
                t = s
                while sha3((3 * idx) + sha3(sha3(msg.sender, 5) + 1) + 2) + (stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + 2].length + 31 / 32) > t:
                    stor[t] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    t = t + 1
                    continue 
        mem[0] = msg.sender
        mem[32] = 5
        idx = idx + 1
        continue 
    sub_6f9dc4a1[msg.sender].field_256--
    if sub_6f9dc4a1[msg.sender].field_256 > sub_6f9dc4a1[msg.sender].field_256 - 1:
        mem[0] = sha3(msg.sender, 5) + 1
        idx = (3 * sub_6f9dc4a1[msg.sender].field_256) - 3
        while sha3(sha3(msg.sender, 5) + 1) + (3 * sub_6f9dc4a1[msg.sender].field_256) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            stor[idx + sha3(mem[0]) + 1] = 0
            stor[idx + sha3(mem[0]) + 2] = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 3
            continue 
    require 1 <= sub_6f9dc4a1[msg.sender].field_0
    sub_6f9dc4a1[msg.sender].field_0--
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x9a0048b7: block.timestamp, msg.sender, stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0, sha3('XR')
    return 1
}

function returnEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'always invalid id'
    if not sub_6f9dc4a1[msg.sender].field_0:
        revert with 0, 'nothing to return'
    if arg1 > sub_6f9dc4a1[msg.sender].field_0:
        revert with 0, 'no staking data with such id'
    require arg1 - 1 < sub_6f9dc4a1[msg.sender].field_256
    if stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0:
        revert with 0, 'use returnXR'
    if not tokenRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe5852206973206f6e2065786368616e67652c206e65656420746f206765742070726963,
                    mem[200 len 28]
    require arg1 - 1 < sub_6f9dc4a1[msg.sender].field_256
    mem[0] = msg.sender
    idx = arg1 - 1
    while idx < sub_6f9dc4a1[msg.sender].field_256 - 1:
        require idx + 1 < sub_6f9dc4a1[msg.sender].field_256
        require idx < sub_6f9dc4a1[msg.sender].field_256
        stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0 = stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_768
        stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_256 = stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_1024
        mem[0] = (3 * idx) + sha3(sha3(msg.sender, 5) + 1) + 2
        if 31 >= stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx) + 5].length:
            stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_512 = stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_1280
            s = sha3(mem[0])
            while sha3((3 * idx) + sha3(sha3(msg.sender, 5) + 1) + 2) + (stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + 2].length + 31 / 32) > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 5
                s = s + 1
                continue 
        else:
            stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_512 = Mask(255, 1, (256 * not bool(stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_1280)) - 1 and stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_1280) + 1
            if not Mask(255, 1, (256 * not bool(stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_1280)) - 1 and stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx)].field_1280):
                s = sha3(mem[0])
                while sha3((3 * idx) + sha3(sha3(msg.sender, 5) + 1) + 2) + (stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + 2].length + 31 / 32) > s:
                    stor[s] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    s = s + 1
                    continue 
            else:
                mem[0] = sha3(sha3(msg.sender, 5) + 1) + (3 * idx) + 5
                s = sha3((3 * idx) + sha3(sha3(msg.sender, 5) + 1) + 2)
                t = sha3(mem[0])
                while sha3(sha3(sha3(msg.sender, 5) + 1) + (3 * idx) + 5) + (stor[('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + (3 * idx) + 5].length + 31 / 32) > t:
                    stor[s] = stor[t]
                    mem[0] = msg.sender
                    mem[32] = 5
                    s = s + 1
                    t = t + 1
                    continue 
                t = s
                while sha3((3 * idx) + sha3(sha3(msg.sender, 5) + 1) + 2) + (stor[(3 * idx) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) + 2].length + 31 / 32) > t:
                    stor[t] = 0
                    mem[0] = msg.sender
                    mem[32] = 5
                    t = t + 1
                    continue 
        mem[0] = msg.sender
        mem[32] = 5
        idx = idx + 1
        continue 
    sub_6f9dc4a1[msg.sender].field_256--
    if sub_6f9dc4a1[msg.sender].field_256 > sub_6f9dc4a1[msg.sender].field_256 - 1:
        mem[0] = sha3(msg.sender, 5) + 1
        idx = (3 * sub_6f9dc4a1[msg.sender].field_256) - 3
        while sha3(sha3(msg.sender, 5) + 1) + (3 * sub_6f9dc4a1[msg.sender].field_256) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            stor[idx + sha3(mem[0]) + 1] = 0
            stor[idx + sha3(mem[0]) + 2] = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 3
            continue 
    require 1 <= sub_6f9dc4a1[msg.sender].field_0
    sub_6f9dc4a1[msg.sender].field_0--
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args companyWalletAddress, msg.sender, 9 * stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0 / 10 * tokenRate / 10^10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'can not transfer tokens'
    emit 0x9a0048b7: block.timestamp, msg.sender, 9 * stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0 / 10 * tokenRate / 10^10, sha3('ETH')
    return 1
}

function getStakeById(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'always invalid id'
    if not sub_6f9dc4a1[msg.sender].field_0:
        revert with 0, 'no staking data'
    if arg1 > sub_6f9dc4a1[msg.sender].field_0:
        revert with 0, 'no staking data with such id'
    require arg1 - 1 < sub_6f9dc4a1[msg.sender].field_256
    if stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0 != 0:
        mem[96] = 2
        mem[128] = 'XR'
        require arg1 - 1 < sub_6f9dc4a1[msg.sender].field_256
        mem[32] = 5
        require arg1 - 1 < sub_6f9dc4a1[msg.sender].field_256
        mem[160] = stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length
        mem[0] = (3 * arg1) + sha3(sha3(msg.sender, 5) + 1) - 1
        mem[192] = stor[sha3((3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1)].field_0
        idx = 192
        s = 0
        while stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length + 160 > idx:
            mem[idx + 32] = stor[s + sha3((3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 224] = stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0
        mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 192] = 96
        mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 288] = 2
        mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 320] = uint16('XR')
        mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 256] = 160
        mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 352] = stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length
        mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 384 len ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length)] = mem[192 len ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length)]
        if not stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length % 32:
            return 96, 
                   stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0,
                   160,
                   2,
                   'XR' << 240,
                   stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length,
                   mem[192 len stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length]
        mem[floor32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 384] = mem[floor32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + -stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length % 32 + 416 len stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length % 32]
        return 96, 
               stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0,
               160,
               2,
               'XR' << 240,
               stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length,
               mem[192 len ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length)],
               mem[(2 * ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length)) + 384 len floor32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + -ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 32]
    mem[96] = 3
    mem[128] = 'ETH'
    require arg1 - 1 < sub_6f9dc4a1[msg.sender].field_256
    mem[32] = 5
    require arg1 - 1 < sub_6f9dc4a1[msg.sender].field_256
    mem[160] = stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length
    mem[0] = (3 * arg1) + sha3(sha3(msg.sender, 5) + 1) - 1
    mem[192] = stor[sha3((3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1)].field_0
    idx = 192
    s = 0
    while stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length + 160 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 224] = stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0
    mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 192] = 96
    mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 288] = 3
    mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 320] = 'ETH' % 16777216
    mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 256] = 160
    mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 352] = stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length
    mem[ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 384 len ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length)] = mem[192 len ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length)]
    if not stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length % 32:
        return 96, 
               stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0,
               160,
               3,
               'ETH' << 232,
               stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length,
               mem[192 len stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length]
    mem[floor32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 384] = mem[floor32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + -stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length % 32 + 416 len stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length % 32]
    return 96, 
           stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5)))].field_0,
           160,
           3,
           'ETH' << 232,
           stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length,
           mem[192 len ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length)],
           mem[(2 * ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length)) + 384 len floor32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + -ceil32(stor[(3 * arg1) + ('array', 1, ('map', 'msg.sender', ('name', 'sub_6f9dc4a1', 5))) - 1].length) + 32]
}



}
