contract main {




// =====================  Runtime code  =====================


const NAME = 'DutchX Seller Module'

const VERSION = '0.0.2'


address stor0;
address managerAddress;
address sub_051b6a26Address;
mapping of uint8 stor3;
mapping of uint8 stor4;
array of struct whitelistedTokens;
array of struct sub_630868dc;

function sub_051b6a26(?) payable {
    return sub_051b6a26Address
}

function whitelistedTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < whitelistedTokens.length
    return address(whitelistedTokens[arg1].field_0)
}

function manager() payable {
    return managerAddress
}

function sub_630868dc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_630868dc.length
    return address(sub_630868dc[arg1].field_0)
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function isWhitelistedToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function sub_92a96ab4(?) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    if not arg1:
        revert with 0, 'Invalid address provided'
    sub_051b6a26Address = arg1
}

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    if not arg1:
        revert with 0, 'Invalid address provided'
    if stor4[address(arg1)]:
        revert with 0, 'Operator is already whitelisted'
    stor4[address(arg1)] = 1
    sub_630868dc.length++
    address(sub_630868dc[sub_630868dc.length].field_0) = arg1
}

function addToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    if not arg1:
        revert with 0, 'Invalid token provided'
    if stor3[address(arg1)]:
        revert with 0, 'Token is already whitelisted'
    stor3[address(arg1)] = 1
    whitelistedTokens.length++
    address(whitelistedTokens[whitelistedTokens.length].field_0) = arg1
}

function changeMasterCopy(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x48496e76616c6964206d617374657220636f707920616464726573732070726f76696465,
                    mem[200 len 28]
    stor0 = arg1
}

function sub_495c8bf9(?) payable {
    if not sub_630868dc.length:
        mem[(32 * sub_630868dc.length) + 128] = 32
        mem[(32 * sub_630868dc.length) + 160] = sub_630868dc.length
        mem[(32 * sub_630868dc.length) + 192 len floor32(sub_630868dc.length)] = mem[128 len floor32(sub_630868dc.length)]
        return memory
          from (32 * sub_630868dc.length) + 128
           len (96 * sub_630868dc.length) + 64
    mem[128] = address(sub_630868dc.field_0)
    idx = 128
    s = 0
    while (32 * sub_630868dc.length) + 96 > idx:
        mem[idx + 32] = address(sub_630868dc[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_630868dc.length) + 192 len floor32(sub_630868dc.length)] = mem[128 len floor32(sub_630868dc.length)]
    return Array(len=sub_630868dc.length, data=mem[128 len floor32(sub_630868dc.length)], mem[(32 * sub_630868dc.length) + floor32(sub_630868dc.length) + 192 len (32 * sub_630868dc.length) - floor32(sub_630868dc.length)]), 
}

function getWhitelistedTokens() payable {
    if not whitelistedTokens.length:
        mem[(32 * whitelistedTokens.length) + 128] = 32
        mem[(32 * whitelistedTokens.length) + 160] = whitelistedTokens.length
        mem[(32 * whitelistedTokens.length) + 192 len floor32(whitelistedTokens.length)] = mem[128 len floor32(whitelistedTokens.length)]
        return memory
          from (32 * whitelistedTokens.length) + 128
           len (96 * whitelistedTokens.length) + 64
    mem[128] = address(whitelistedTokens.field_0)
    idx = 128
    s = 0
    while (32 * whitelistedTokens.length) + 96 > idx:
        mem[idx + 32] = address(whitelistedTokens[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * whitelistedTokens.length) + 192 len floor32(whitelistedTokens.length)] = mem[128 len floor32(whitelistedTokens.length)]
    return Array(len=whitelistedTokens.length, data=mem[128 len floor32(whitelistedTokens.length)], mem[(32 * whitelistedTokens.length) + floor32(whitelistedTokens.length) + 192 len (32 * whitelistedTokens.length) - floor32(whitelistedTokens.length)]), 
}

function removeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    if not stor4[address(arg1)]:
        revert with 0, 'Operator is not whitelisted'
    stor4[address(arg1)] = 0
    idx = 0
    while idx < sub_630868dc.length - 1:
        mem[0] = 6
        if address(sub_630868dc[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require sub_630868dc.length - 1 < sub_630868dc.length
        require idx < sub_630868dc.length
        address(sub_630868dc[idx].field_0) = address(sub_630868dc[sub_630868dc.length].field_0)
        sub_630868dc.length--
        if sub_630868dc.length > sub_630868dc.length - 1:
            idx = sha3(6) + sub_630868dc.length - 1
            while sha3(6) + sub_630868dc.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    sub_630868dc.length--
    if sub_630868dc.length > sub_630868dc.length - 1:
        idx = sub_630868dc.length - 1
        while sub_630868dc.length > idx:
            sub_630868dc[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644d6574686f642063616e206f6e6c792062652063616c6c65642066726f6d206d616e616765,
                    mem[202 len 26]
    if not stor3[address(arg1)]:
        revert with 0, 'Token is not whitelisted'
    stor3[address(arg1)] = 0
    idx = 0
    while idx < whitelistedTokens.length - 1:
        mem[0] = 5
        if address(whitelistedTokens[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require whitelistedTokens.length - 1 < whitelistedTokens.length
        require idx < whitelistedTokens.length
        address(whitelistedTokens[idx].field_0) = address(whitelistedTokens[whitelistedTokens.length].field_0)
        whitelistedTokens.length--
        if whitelistedTokens.length > whitelistedTokens.length - 1:
            idx = sha3(5) + whitelistedTokens.length - 1
            while sha3(5) + whitelistedTokens.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    whitelistedTokens.length--
    if whitelistedTokens.length > whitelistedTokens.length - 1:
        idx = whitelistedTokens.length - 1
        while whitelistedTokens.length > idx:
            whitelistedTokens[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_e8fbb887(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if managerAddress:
        revert with 0, 'Manager has already been set'
    if arg4:
        managerAddress = arg4
    else:
        managerAddress = msg.sender
    sub_051b6a26Address = arg1
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Invalid token provided'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    whitelistedTokens.length = arg2.length
    if not arg2.length:
        idx = 0
        while whitelistedTokens.length > idx:
            address(whitelistedTokens[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            address(whitelistedTokens[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while whitelistedTokens.length > idx:
            address(whitelistedTokens[idx].field_0) = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
            revert with 0, 
                        32,
                        33,
                        0x74496e76616c6964206f70657261746f7220616464726573732070726f76696465,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 261 len 31]
        mem[0] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + (32 * arg2.length) + 172 len 20]] = 1
        idx = idx + 1
        continue 
    sub_630868dc.length = arg3.length
    if not arg3.length:
        idx = 0
        while sub_630868dc.length > idx:
            address(sub_630868dc[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg2.length) + 160
        while (32 * arg2.length) + (32 * arg3.length) + 160 > idx:
            address(sub_630868dc[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while sub_630868dc.length > idx:
            address(sub_630868dc[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function executeWhitelisted(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not stor4[address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x584d6574686f642063616e206f6e6c792062652063616c6c656420627920616e206f70657261746f,
                    mem[ceil32(arg3.length) + 236 len 24]
    if arg1 != sub_051b6a26Address:
        if not stor3[address(arg1)]:
            revert with 0, 
                        32,
                        34,
                        0x7244657374696e6174696f6e2061646472657373206973206e6f7420616c6c6f7765,
                        mem[ceil32(arg3.length) + 230 len 30]
    if Mask(32, 224, mem[128]) != 0xd0e30db000000000000000000000000000000000000000000000000000000000:
        if arg2:
            revert with 0, 
                        32,
                        46,
                        0xfe457468207472616e73616374696f6e73206f6e6c7920616c6c6f77656420666f72207772617070696e67204554,
                        mem[ceil32(arg3.length) + 242 len 18]
    if Mask(32, 224, mem[128]) == 0x95ea7b300000000000000000000000000000000000000000000000000000000:
        if mem[144 len 20] != sub_051b6a26Address:
            revert with 0, 
                        32,
                        35,
                        0x645370656e646572206d757374206265207468652044757463685820436f6e74726163,
                        mem[ceil32(arg3.length) + 231 len 29]
    else:
        if Mask(32, 224, mem[128]) == 0x47e7ef2400000000000000000000000000000000000000000000000000000000:
            if not stor3[mem[144 len 20]]:
                revert with 0, 
                            32,
                            52,
                            0x644f6e6c792077686974656c697374656420746f6b656e732063616e206265206465706f736974206f6e20746865204475746368,
                            mem[ceil32(arg3.length) + 248 len 12]
        else:
            if Mask(32, 224, mem[128]) == 0x59f96ae500000000000000000000000000000000000000000000000000000000:
                if not stor3[mem[144 len 20]]:
                    revert with 0, 
                                32,
                                35,
                                0x644f6e6c792077686974656c697374656420746f6b656e732063616e20626520736f6c,
                                mem[ceil32(arg3.length) + 231 len 29]
                if not stor3[address(mem[164])]:
                    revert with 0, 
                                32,
                                35,
                                0x644f6e6c792077686974656c697374656420746f6b656e732063616e20626520736f6c,
                                mem[ceil32(arg3.length) + 231 len 29]
            else:
                if Mask(32, 224, mem[128]) != 0x7895dd2100000000000000000000000000000000000000000000000000000000:
                    if Mask(32, 224, mem[128]) != 0xd3cc8d1c00000000000000000000000000000000000000000000000000000000:
                        if Mask(32, 224, mem[128]) != 0xd0e30db000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'Function not allowed'
    mem[ceil32(arg3.length) + 128] = 0x468721a700000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        require ext_code.size(managerAddress)
        call managerAddress with:
             gas gas_remaining wei
            args address(arg1), arg2, 128, 0, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
        require ext_code.size(managerAddress)
        call managerAddress with:
             gas gas_remaining wei
            args address(arg1), arg2, 128, 0, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 292 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not execute transaction'
    else:
        return 0
}



}
