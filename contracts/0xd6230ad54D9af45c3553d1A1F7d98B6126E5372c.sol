contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3966]




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
    return sub_1bccca14[arg1]
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
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len 222] = code.data[3744 len 222]
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

function register(string arg1, uint256 arg2) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
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
    mem[ceil32(arg1.length) + 416 len 222] = code.data[3744 len 222]
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
    _307 = mem[64]
    mem[64] = mem[64] + 64
    mem[_307] = 7
    mem[_307 + 32] = ' landed'
    _308 = mem[64]
    mem[64] = mem[64] + 32
    mem[_308] = 0
    _309 = mem[64]
    mem[64] = mem[64] + 32
    mem[_309] = 0
    _310 = mem[64]
    mem[64] = mem[64] + 32
    mem[_310] = 0
    _311 = mem[64]
    mem[64] = mem[64] + 32
    mem[_311] = 0
    _312 = mem[64]
    mem[64] = mem[64] + 256
    mem[_312] = 222
    mem[_312 + 32 len 222] = code.data[3744 len 222]
    _397 = mem[ceil32(arg1.length) + 384]
    idx = 0
    s = 0
    while idx < _397:
        require idx < mem[ceil32(arg1.length) + 384]
        require s < 222
        mem[s + _312 + 32] = Mask(8, 248, mem[ceil32(arg1.length) + idx + 416])
        _397 = mem[ceil32(arg1.length) + 384]
        idx = idx + 1
        s = s + 1
        continue 
    _481 = mem[_307]
    idx = 0
    s = _397
    while idx < _481:
        require idx < mem[_307]
        require s < 222
        mem[s + _312 + 32] = Mask(8, 248, mem[_307 + idx + 32])
        _481 = mem[_307]
        idx = idx + 1
        s = s + 1
        continue 
    idx = _397 + _481
    while idx < mem[_312]:
        require idx < mem[_312]
        mem[idx + _312 + 32] = 0
        idx = idx + 1
        continue 
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0.field_0))
    mem[mem[64]] = 0x524f388900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[ceil32(arg1.length) + 128]
    _569 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 68 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
    if not _569 % 32:
        call address(stor0.field_0).0x524f3889 with:
             gas gas_remaining - 25050 wei
            args 32, mem[mem[64] + 36 len _569 + 32]
        require ext_call.success
        mem[mem[64]] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = mem[ceil32(arg1.length) + 128]
        _576 = mem[ceil32(arg1.length) + 128]
        mem[mem[64] + 132 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
        if not _576 % 32:
            mem[mem[64] + 68] = _576 + 128
            mem[_576 + mem[64] + 132] = mem[_312]
            _579 = mem[_312]
            mem[_576 + mem[64] + 164 len mem[_312]] = mem[_312 + 32 len mem[_312]]
            if not _579 % 32:
                call address(stor0.field_0).0xadf59f99 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg2, 96, _576 + 128, mem[mem[64] + 100 len _579 + _576 + 64]
            else:
                mem[floor32(_579) + _576 + mem[64] + 164] = mem[floor32(_579) + _576 + mem[64] + -(_579 % 32) + 196 len _579 % 32]
                call address(stor0.field_0).0xadf59f99 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg2, 96, _576 + 128, mem[mem[64] + 100 len floor32(_579) + _576 + 96]
        else:
            mem[floor32(_576) + mem[64] + 132] = mem[floor32(_576) + mem[64] + -(_576 % 32) + 164 len _576 % 32]
            mem[mem[64] + 68] = floor32(_576) + 160
            mem[floor32(_576) + mem[64] + 164] = mem[_312]
            _589 = mem[_312]
            mem[floor32(_576) + mem[64] + 196 len mem[_312]] = mem[_312 + 32 len mem[_312]]
            if not _589 % 32:
                call address(stor0.field_0).0xadf59f99 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg2, 96, floor32(_576) + 160, mem[mem[64] + 100 len _589 + floor32(_576) + 96]
            else:
                mem[floor32(_589) + floor32(_576) + mem[64] + 196] = mem[floor32(_589) + floor32(_576) + mem[64] + -(_589 % 32) + 228 len _589 % 32]
                call address(stor0.field_0).0xadf59f99 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg2, 96, floor32(_576) + 160, mem[mem[64] + 100 len floor32(_589) + floor32(_576) + 128]
    else:
        mem[floor32(_569) + mem[64] + 68] = mem[floor32(_569) + mem[64] + -(_569 % 32) + 100 len _569 % 32]
        call address(stor0.field_0).0x524f3889 with:
             gas gas_remaining - 25050 wei
            args 32, mem[mem[64] + 36 len floor32(_569) + 64]
        require ext_call.success
        mem[mem[64]] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = mem[ceil32(arg1.length) + 128]
        _585 = mem[ceil32(arg1.length) + 128]
        mem[mem[64] + 132 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
        if not _585 % 32:
            mem[mem[64] + 68] = _585 + 128
            mem[_585 + mem[64] + 132] = mem[_312]
            _591 = mem[_312]
            mem[_585 + mem[64] + 164 len mem[_312]] = mem[_312 + 32 len mem[_312]]
            if not _591 % 32:
                call address(stor0.field_0).0xadf59f99 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg2, 96, _585 + 128, mem[mem[64] + 100 len _591 + _585 + 64]
            else:
                mem[floor32(_591) + _585 + mem[64] + 164] = mem[floor32(_591) + _585 + mem[64] + -(_591 % 32) + 196 len _591 % 32]
                call address(stor0.field_0).0xadf59f99 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg2, 96, _585 + 128, mem[mem[64] + 100 len floor32(_591) + _585 + 96]
        else:
            mem[floor32(_585) + mem[64] + 132] = mem[floor32(_585) + mem[64] + -(_585 % 32) + 164 len _585 % 32]
            mem[mem[64] + 68] = floor32(_585) + 160
            mem[floor32(_585) + mem[64] + 164] = mem[_312]
            _601 = mem[_312]
            mem[floor32(_585) + mem[64] + 196 len mem[_312]] = mem[_312 + 32 len mem[_312]]
            if not _601 % 32:
                call address(stor0.field_0).0xadf59f99 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg2, 96, floor32(_585) + 160, mem[mem[64] + 100 len _601 + floor32(_585) + 96]
            else:
                mem[floor32(_601) + floor32(_585) + mem[64] + 196] = mem[floor32(_601) + floor32(_585) + mem[64] + -(_601 % 32) + 228 len _601 % 32]
                call address(stor0.field_0).0xadf59f99 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg2, 96, floor32(_585) + 160, mem[mem[64] + 100 len floor32(_601) + floor32(_585) + 128]
    require ext_call.success
    uint256(stor8[ext_call.return_data[0]]) = msg.sender or Mask(96, 160, uint256(stor8[ext_call.return_data[0]]))
    sub_437600bc[address(msg.sender)] = msg.value
    require sub_29f8df0d < 5
    uint256(sub_a32da9d1[stor6]) = msg.sender or Mask(96, 160, uint256(sub_a32da9d1[stor6]))
    sub_29f8df0d++
}



}
