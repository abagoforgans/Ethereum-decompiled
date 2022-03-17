contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 4921]




// =====================  Runtime code  =====================


uint128 stor0; offset 160
address stor0;
uint256 stor0;
array of address sub_a32da9d1;
uint256 sub_29f8df0d;
mapping of uint256 sub_437600bc;
mapping of address stor8;
array of address sub_1bccca14;
uint256 sub_6e723e24;
mapping of uint256 sub_bf37df2f;

function sub_1bccca14(?) payable {
    require arg1 < 5
    return address(sub_1bccca14[arg1])
}

function sub_29f8df0d(?) payable {
    return sub_29f8df0d
}

function sub_437600bc(?) payable {
    return sub_437600bc[arg1]
}

function get() payable {
    return sub_437600bc[address(msg.sender)]
}

function sub_6e723e24(?) payable {
    return sub_6e723e24
}

function get_user(address arg1) payable {
    return sub_437600bc[address(arg1)]
}

function sub_a32da9d1(?) payable {
    require arg1 < 5
    return address(sub_a32da9d1[arg1])
}

function sub_bf37df2f(?) payable {
    return sub_bf37df2f[arg1]
}

function _fallback() payable {
  stop
}

function invest() payable {
    if not sub_bf37df2f[address(msg.sender)]:
        require sub_6e723e24 < 5
        uint256(sub_1bccca14[stor14]) = msg.sender or Mask(96, 160, uint256(sub_1bccca14[stor14]))
        sub_6e723e24++
    sub_bf37df2f[address(msg.sender)] += msg.value
}

function sub_0f8ebe27(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    if arg2.length >= arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]):
                return -1
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]):
                idx = idx + 1
                continue 
            return 1
    else:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]):
                return -1
            require idx < arg2.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]):
                idx = idx + 1
                continue 
            return 1
    if arg1.length < arg2.length:
        return -1
    if arg1.length <= arg2.length:
        return 0
    return 1
}

function sub_63be1d22(?) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 0
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 544
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 222
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len 222] = code.data[4699 len 222]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require s < 222
        mem[s + ceil32(arg1.length) + ceil32(arg2.length) + 320] = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length
    while idx < mem[ceil32(arg1.length) + 128]:
        require idx < mem[ceil32(arg1.length) + 128]
        require s < 222
        mem[s + ceil32(arg1.length) + ceil32(arg2.length) + 320] = Mask(8, 248, mem[ceil32(arg1.length) + idx + 160])
        idx = idx + 1
        s = s + 1
        continue 
    idx = arg1.length + arg2.length
    while idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]:
        require idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]
        mem[idx + ceil32(arg1.length) + ceil32(arg2.length) + 320] = 0
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]
    _56 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]
    mem[mem[64] + 64 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]]
    if not _56 % 32:
        return 32, mem[mem[64] + 32 len _56 + 32]
    mem[floor32(_56) + mem[64] + 64] = mem[floor32(_56) + mem[64] + -(_56 % 32) + 96 len _56 % 32]
    return 32, mem[mem[64] + 32 len floor32(_56) + 64]
}

function sub_444bdb1b(?) payable {
    idx = 0
    s = 0
    while idx < sub_29f8df0d:
        require idx < 5
        mem[0] = address(sub_a32da9d1[idx])
        mem[32] = 7
        idx = idx + 1
        s = s + sub_437600bc[address(stor1[idx])]
        continue 
    t = 0
    idx = 0
    while idx < sub_6e723e24:
        require idx < 5
        mem[0] = address(sub_1bccca14[idx])
        mem[32] = 15
        t = t + sub_bf37df2f[address(stor9[idx])]
        idx = idx + 1
        continue 
    return (100 * eth.balance(this.address) - (s * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d) / t * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24)
}

function oraclize_query(string arg1, string arg2) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    call address(stor0.field_0).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(stor0.field_0).0xadf59f99 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, arg1.length + 128, arg1.length, arg1[all], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
            call address(stor0.field_0).0xadf59f99 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, arg1.length + 128, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 324 len -(arg2.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 324 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(stor0.field_0).0xadf59f99 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 292 len -(arg1.length % 32) + 32], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
            call address(stor0.field_0).0xadf59f99 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 292 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 356 len -(arg2.length % 32) + 32]
    require ext_call.success
    return ext_call.return_data[0]
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).0xc281d19e with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    mem[ceil32(arg2.length) + 128] = 5
    mem[ceil32(arg2.length) + 160] = 'False'
    mem[ceil32(arg2.length) + 192] = 0
    mem[64] = ceil32(arg2.length) + 256
    mem[ceil32(arg2.length) + 224] = 0
    if 5 >= arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < 5
            require idx < arg2.length
            if Mask(8, 248, mem[idx + 128]) >= Mask(8, 248, mem[ceil32(arg2.length) + idx + 160]):
                require idx < 5
                require idx < arg2.length
                if Mask(8, 248, mem[idx + 128]) <= Mask(8, 248, mem[ceil32(arg2.length) + idx + 160]):
                    idx = idx + 1
                    continue 
            idx = 0
            while idx < sub_29f8df0d:
                require idx < 5
                require idx < 5
                if address(sub_a32da9d1[idx]) == address(stor8[arg1]):
                    address(sub_a32da9d1[idx]) = 0
                else:
                    if address(sub_a32da9d1[idx]) == address(stor8[arg1]):
                        require idx < 5
                        address(sub_a32da9d1[idx]) = 0
                idx = idx + 1
                continue 
            sub_437600bc[address(stor8[arg1])] = 0
    else:
        idx = 0
        while idx < 5:
            require idx < 5
            require idx < arg2.length
            if Mask(8, 248, mem[idx + 128]) >= Mask(8, 248, mem[ceil32(arg2.length) + idx + 160]):
                require idx < 5
                require idx < arg2.length
                if Mask(8, 248, mem[idx + 128]) <= Mask(8, 248, mem[ceil32(arg2.length) + idx + 160]):
                    idx = idx + 1
                    continue 
            idx = 0
            while idx < sub_29f8df0d:
                require idx < 5
                require idx < 5
                if address(sub_a32da9d1[idx]) == address(stor8[arg1]):
                    address(sub_a32da9d1[idx]) = 0
                else:
                    if address(sub_a32da9d1[idx]) == address(stor8[arg1]):
                        require idx < 5
                        address(sub_a32da9d1[idx]) = 0
                idx = idx + 1
                continue 
            sub_437600bc[address(stor8[arg1])] = 0
    if arg2.length >= 5:
        if arg2.length <= 5:
            if sub_437600bc[address(stor8[arg1])] > 0:
                call address(stor8[arg1]) with:
                   value 5 * sub_437600bc[address(stor8[arg1])] wei
                     gas 0 wei
    idx = 0
    while idx < sub_29f8df0d:
        require idx < 5
        require idx < 5
        if address(sub_a32da9d1[idx]) == address(stor8[arg1]):
            address(sub_a32da9d1[idx]) = 0
        else:
            if address(sub_a32da9d1[idx]) == address(stor8[arg1]):
                require idx < 5
                address(sub_a32da9d1[idx]) = 0
        idx = idx + 1
        continue 
    sub_437600bc[address(stor8[arg1])] = 0
}

function sub_187c5903(?) payable {
    if sub_bf37df2f[address(msg.sender)] != 0:
        idx = 0
        s = 0
        while idx < sub_29f8df0d:
            require idx < 5
            mem[0] = address(sub_a32da9d1[idx])
            mem[32] = 7
            idx = idx + 1
            s = s + (5 * sub_437600bc[address(stor1[idx])])
            continue 
        t = 0
        idx = 0
        while idx < sub_6e723e24:
            require idx < 5
            mem[0] = address(sub_1bccca14[idx])
            mem[32] = 15
            t = t + sub_bf37df2f[address(stor9[idx])]
            idx = idx + 1
            continue 
        if (eth.balance(this.address) * sub_bf37df2f[address(msg.sender)] / t * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24) - (s * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_bf37df2f[address(msg.sender)] / t * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24) <= eth.balance(this.address) - (s * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d):
            call msg.sender with:
               value (eth.balance(this.address) * sub_bf37df2f[address(msg.sender)] / t * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24) - (s * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_bf37df2f[address(msg.sender)] / t * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24 * sub_6e723e24) wei
                 gas 0 wei
            sub_bf37df2f[address(msg.sender)] = 0
            idx = 0
            while idx < sub_6e723e24:
                require idx < 5
                if address(sub_1bccca14[idx]) == msg.sender:
                    require idx < 5
                    address(sub_1bccca14[idx]) = 0
                idx = idx + 1
                continue 
}

function register(string arg1, uint256 arg2) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if msg.value >= 10^15:
        require block.timestamp <= arg2 - (48 * 24 * 3600)
        require sub_29f8df0d <= 4
        mem[0] = msg.sender
        mem[32] = 7
        require sub_437600bc[address(msg.sender)] <= 0
        idx = 0
        s = 0
        while idx < sub_29f8df0d:
            require idx < 5
            mem[0] = address(sub_a32da9d1[idx])
            mem[32] = 7
            idx = idx + 1
            s = s + (5 * sub_437600bc[address(stor1[idx])])
            continue 
        require eth.balance(this.address) - (s * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d * sub_29f8df0d) >= 5 * msg.value
        mem[ceil32(arg1.length) + 128] = 12
        mem[ceil32(arg1.length) + 160] = 'WolframAlpha'
        mem[ceil32(arg1.length) + 192] = 7
        mem[ceil32(arg1.length) + 224] = 'flight '
        mem[ceil32(arg1.length) + 256] = 0
        mem[ceil32(arg1.length) + 288] = 0
        mem[ceil32(arg1.length) + 320] = 0
        mem[ceil32(arg1.length) + 352] = 0
        mem[64] = ceil32(arg1.length) + 640
        mem[ceil32(arg1.length) + 384] = 222
        mem[ceil32(arg1.length) + 416 len 222] = code.data[4699 len 222]
        idx = 0
        s = 0
        while idx < 7:
            require idx < 7
            require s < 222
            mem[s + ceil32(arg1.length) + 416] = Mask(8, 248, mem[ceil32(arg1.length) + idx + 224])
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 7
        while idx < arg1.length:
            require idx < arg1.length
            require s < 222
            mem[s + ceil32(arg1.length) + 416] = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            s = s + 1
            continue 
        idx = mem[96] + 7
        while idx < mem[ceil32(arg1.length) + 384]:
            require idx < mem[ceil32(arg1.length) + 384]
            mem[idx + ceil32(arg1.length) + 416] = 0
            idx = idx + 1
            continue 
        _417 = mem[64]
        mem[64] = mem[64] + 64
        mem[_417] = 7
        mem[_417 + 32] = ' landed'
        _418 = mem[64]
        mem[64] = mem[64] + 32
        mem[_418] = 0
        _419 = mem[64]
        mem[64] = mem[64] + 32
        mem[_419] = 0
        _420 = mem[64]
        mem[64] = mem[64] + 32
        mem[_420] = 0
        _421 = mem[64]
        mem[64] = mem[64] + 32
        mem[_421] = 0
        _422 = mem[64]
        mem[64] = mem[64] + 256
        mem[_422] = 222
        mem[_422 + 32 len 222] = code.data[4699 len 222]
        _507 = mem[ceil32(arg1.length) + 384]
        idx = 0
        s = 0
        while idx < _507:
            require idx < mem[ceil32(arg1.length) + 384]
            require s < 222
            mem[s + _422 + 32] = Mask(8, 248, mem[ceil32(arg1.length) + idx + 416])
            _507 = mem[ceil32(arg1.length) + 384]
            idx = idx + 1
            s = s + 1
            continue 
        _591 = mem[_417]
        idx = 0
        s = _507
        while idx < _591:
            require idx < mem[_417]
            require s < 222
            mem[s + _422 + 32] = Mask(8, 248, mem[_417 + idx + 32])
            _591 = mem[_417]
            idx = idx + 1
            s = s + 1
            continue 
        idx = _507 + _591
        while idx < mem[_422]:
            require idx < mem[_422]
            mem[idx + _422 + 32] = 0
            idx = idx + 1
            continue 
        call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
        mem[mem[64]] = 0x524f388900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[ceil32(arg1.length) + 128]
        _679 = mem[ceil32(arg1.length) + 128]
        mem[mem[64] + 68 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
        if not _679 % 32:
            call address(stor0.field_0).0x524f3889 with:
                 gas gas_remaining - 25050 wei
                args 32, mem[mem[64] + 36 len _679 + 32]
            require ext_call.success
            _684 = mem[64]
            mem[mem[64]] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2 + (3 * 3600)
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = mem[ceil32(arg1.length) + 128]
            _686 = mem[ceil32(arg1.length) + 128]
            mem[mem[64] + 132 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
            if not _686 % 32:
                mem[mem[64] + 68] = _686 + 128
                mem[_686 + mem[64] + 132] = mem[_422]
                _689 = mem[_422]
                mem[_686 + mem[64] + 164 len mem[_422]] = mem[_422 + 32 len mem[_422]]
                if not _689 % 32:
                    call address(stor0.field_0).0xadf59f99 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 34050 wei
                        args arg2 + (3 * 3600), 96, _686 + 128, mem[mem[64] + 100 len _689 + _686 + 64]
                else:
                    mem[floor32(_689) + _686 + mem[64] + 164] = mem[floor32(_689) + _686 + mem[64] + -(_689 % 32) + 196 len _689 % 32]
                    call address(stor0.field_0).0xadf59f99 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 34050 wei
                        args arg2 + (3 * 3600), 96, _686 + 128, mem[mem[64] + 100 len floor32(_689) + _686 + 96]
            else:
                mem[floor32(_686) + mem[64] + 132] = mem[floor32(_686) + mem[64] + -(_686 % 32) + 164 len _686 % 32]
                mem[mem[64] + 68] = floor32(_686) + 160
                mem[floor32(_686) + _684 + 164] = mem[_422]
                _699 = mem[_422]
                mem[floor32(_686) + _684 + 196 len mem[_422]] = mem[_422 + 32 len mem[_422]]
                if not _699 % 32:
                    call address(stor0.field_0).0xadf59f99 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 34050 wei
                        args mem[mem[64] + 4 len _699 + floor32(_686) + _684 + -mem[64] + 192]
                else:
                    mem[floor32(_699) + floor32(_686) + _684 + 196] = mem[floor32(_699) + floor32(_686) + _684 + -(_699 % 32) + 228 len _699 % 32]
                    call address(stor0.field_0).0xadf59f99 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 34050 wei
                        args mem[mem[64] + 4 len floor32(_699) + floor32(_686) + _684 + -mem[64] + 224]
        else:
            mem[floor32(_679) + mem[64] + 68] = mem[floor32(_679) + mem[64] + -(_679 % 32) + 100 len _679 % 32]
            call address(stor0.field_0).0x524f3889 with:
                 gas gas_remaining - 25050 wei
                args 32, mem[mem[64] + 36 len floor32(_679) + 64]
            require ext_call.success
            mem[mem[64]] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2 + (3 * 3600)
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = mem[ceil32(arg1.length) + 128]
            _695 = mem[ceil32(arg1.length) + 128]
            mem[mem[64] + 132 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
            if not _695 % 32:
                mem[mem[64] + 68] = _695 + 128
                mem[_695 + mem[64] + 132] = mem[_422]
                _701 = mem[_422]
                mem[_695 + mem[64] + 164 len mem[_422]] = mem[_422 + 32 len mem[_422]]
                if not _701 % 32:
                    call address(stor0.field_0).0xadf59f99 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 34050 wei
                        args arg2 + (3 * 3600), 96, _695 + 128, mem[mem[64] + 100 len _701 + _695 + 64]
                else:
                    mem[floor32(_701) + _695 + mem[64] + 164] = mem[floor32(_701) + _695 + mem[64] + -(_701 % 32) + 196 len _701 % 32]
                    call address(stor0.field_0).0xadf59f99 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 34050 wei
                        args arg2 + (3 * 3600), 96, _695 + 128, mem[mem[64] + 100 len floor32(_701) + _695 + 96]
            else:
                mem[floor32(_695) + mem[64] + 132] = mem[floor32(_695) + mem[64] + -(_695 % 32) + 164 len _695 % 32]
                mem[mem[64] + 68] = floor32(_695) + 160
                mem[floor32(_695) + mem[64] + 164] = mem[_422]
                _711 = mem[_422]
                mem[floor32(_695) + mem[64] + 196 len mem[_422]] = mem[_422 + 32 len mem[_422]]
                if not _711 % 32:
                    call address(stor0.field_0).0xadf59f99 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 34050 wei
                        args arg2 + (3 * 3600), 96, floor32(_695) + 160, mem[mem[64] + 100 len _711 + floor32(_695) + 96]
                else:
                    mem[floor32(_711) + floor32(_695) + mem[64] + 196] = mem[floor32(_711) + floor32(_695) + mem[64] + -(_711 % 32) + 228 len _711 % 32]
                    call address(stor0.field_0).0xadf59f99 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 34050 wei
                        args arg2 + (3 * 3600), 96, floor32(_695) + 160, mem[mem[64] + 100 len floor32(_711) + floor32(_695) + 128]
        require ext_call.success
        uint256(stor8[ext_call.return_data[0]]) = msg.sender or Mask(96, 160, uint256(stor8[ext_call.return_data[0]]))
        sub_437600bc[address(msg.sender)] = msg.value
        require sub_29f8df0d < 5
        uint256(sub_a32da9d1[stor6]) = msg.sender or Mask(96, 160, uint256(sub_a32da9d1[stor6]))
        sub_29f8df0d++
}



}
