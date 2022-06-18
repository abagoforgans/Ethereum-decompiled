contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - buy(address arg1, uint256[] arg2, uint256[] arg3, bool arg4)
#  - sell(address arg1, uint256[] arg2, uint256[] arg3, bool arg4)
#
const sub_02e7b53f(?) = 2

const sub_56997026(?) = 3

const sub_909c9705(?) = 1

const sub_9ecc626a(?) = 0


address owner;
array of uint256 stor1;
mapping of uint8 stor2;
address stor3;
address stor4;
uint256 stor4;
array of uint256 stor5;
address bankAddress;
address sub_bea6998fAddress;
address coinTokenAddress;
address sub_a7224687Address;
uint256 customGasPrice;
array of struct sub_cbaec30f;
array of struct sub_d830fb94;
uint8 paused;
array of struct sub_49c38b0a;
mapping of uint256 sub_cca73228;

function coinvest() {
    return address(stor1.length)
}

function admins(address arg1) {
    return bool(stor2[arg1])
}

function sub_49c38b0a(?) {
    return sub_49c38b0a[arg1][0 len sub_49c38b0a[arg1].length].field_0
}

function customGasPrice() {
    return customGasPrice
}

function coinToken() {
    return coinTokenAddress
}

function paused() {
    return bool(paused)
}

function bank() {
    return bankAddress
}

function owner() {
    return owner
}

function sub_a7224687(?) {
    return sub_a7224687Address
}

function sub_bea6998f(?) {
    return sub_bea6998fAddress
}

function sub_cbaec30f(?) {
    return sub_cbaec30f[0 len sub_cbaec30f.length].field_0
}

function sub_cca73228(?) {
    return sub_cca73228[arg1]
}

function sub_d830fb94(?) {
    return sub_d830fb94[0 len sub_d830fb94.length].field_0
}

function _fallback() payable {
    require stor2[address(msg.sender)]
}

function transferCoinvest(address arg1) {
    require msg.sender == owner
    require arg1
    address(stor1.length) = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function alterAdmin(address arg1, bool arg2) {
    require msg.sender == owner
    require arg1
    require arg1 != address(stor1.length)
    stor2[address(arg1)] = uint8(arg2)
}

function addTrades(address[] arg1, uint256[] arg2) {
    require stor2[address(msg.sender)]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 18
        sub_cca73228[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
}

function sub_d353ffa9(?) {
    require msg.sender == owner
    if arg1 > 0:
        require arg1 < sub_49c38b0a.length
        sub_49c38b0a[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        sub_49c38b0a.length++
        sub_49c38b0a[sub_49c38b0a.length][].field_0 = Array(len=arg2.length, data=arg2[all])
        sub_49c38b0a.length++
        if arg3:
            sub_49c38b0a[sub_49c38b0a.length][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            sub_49c38b0a[sub_49c38b0a.length].field_0 = 0
            sub_49c38b0a[sub_49c38b0a.length].field_1 = 0
            sub_49c38b0a[sub_49c38b0a.length].field_8 = mem[ceil32(arg2.length) + 160 len 31]
            idx = 0
            while sub_49c38b0a[sub_49c38b0a.length].length + 31 / 32 > idx:
                sub_49c38b0a[sub_49c38b0a.length + idx].field_0 = 0
                idx = idx + 1
                continue 
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    if coinTokenAddress != msg.sender:
        require msg.sender == sub_a7224687Address
    require arg1 == mem[144 len 20]
    mem[ceil32(arg4.length) + 128 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        delegate this.address.mem[ceil32(arg4.length) + 128 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 132 len arg4.length - 4]
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 128] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
        delegate this.address.mem[ceil32(arg4.length) + 128 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 132 len floor32(arg4.length) + 28]
}

function tokenEscape(address arg1, uint256 arg2) {
    if address(stor1.length) != msg.sender:
        require msg.sender == owner
    if not arg1:
        call address(stor1.length) with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.balanceOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(stor1.length), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_1ff4ca09(?) {
    require msg.sender == owner
    coinTokenAddress = address(cd[4])
    sub_a7224687Address = address(cd[36])
    bankAddress = address(cd[68])
    sub_bea6998fAddress = address(cd[100])
    sub_cbaec30f.length = (2 * ('cd', 132).length) + 1
    s = 0
    idx = cd[132] + 36
    while cd[132] + ('cd', 132).length + 36 > idx:
        sub_cbaec30f[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 132).length + 31) >> 5
    while sub_cbaec30f.length + 31 / 32 > idx:
        sub_cbaec30f[idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_d830fb94.length = (2 * ('cd', 164).length) + 1
    s = 0
    idx = cd[164] + 36
    while cd[164] + ('cd', 164).length + 36 > idx:
        sub_d830fb94[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 164).length + 31) >> 5
    while sub_d830fb94.length + 31 / 32 > idx:
        sub_d830fb94[idx].field_0 = 0
        idx = idx + 1
        continue 
    paused = uint8(bool(cd[196]))
}

function changeGas(uint256 arg1) {
    require stor2[address(msg.sender)]
    customGasPrice = arg1
    if not stor3:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor5.length) = 0
            stor5.length.field_1 = 11
            stor5.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor5.length + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor5.length) = 0
                stor5.length.field_1 = 12
                stor5.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    stor5[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor5.length) = 0
                    stor5.length.field_1 = 9
                    stor5.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        stor5[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor5.length) = 0
                        stor5.length.field_1 = 11
                        stor5.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor5.length + 31 / 32 > idx:
                            stor5[idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if not ext_code.size(stor3):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor5.length) = 0
                stor5.length.field_1 = 11
                stor5.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    stor5[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor5.length) = 0
                    stor5.length.field_1 = 12
                    stor5.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        stor5[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor5.length) = 0
                        stor5.length.field_1 = 9
                        stor5.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor5.length + 31 / 32 > idx:
                            stor5[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor5.length) = 0
                            stor5.length.field_1 = 11
                            stor5.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor5.length + 31 / 32 > idx:
                                stor5[idx].field_0 = 0
                                idx = idx + 1
                                continue 
    require ext_code.size(stor3)
    call stor3.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(stor4) != ext_call.return_data[12 len 20]:
        require ext_code.size(stor3)
        call stor3.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    require ext_code.size(address(stor4))
    call address(stor4).setCustomGasPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_aa88a57c(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if not arg2:
        mem[64] = (32 * arg1.length) + ceil32(sub_d830fb94.length) + 160
        mem[(32 * arg1.length) + 128] = sub_d830fb94.length
        mem[0] = 14
        mem[(32 * arg1.length) + 160] = uint256(sub_d830fb94.field_0)
        idx = (32 * arg1.length) + 160
        s = 0
        while (32 * arg1.length) + sub_d830fb94.length + 128 > idx:
            mem[idx + 32] = sub_d830fb94[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        s = 0
        idx = 0
        s = (32 * arg1.length) + 128
        while idx < arg1.length:
            require idx < mem[96]
            _2493 = mem[(32 * idx) + 128]
            _3692 = mem[96]
            t = 0
            while t < _3692:
                if idx != t:
                    require t < mem[96]
                    require _2493 != mem[(32 * t) + 128]
                    _3692 = mem[96]
                    t = t + 1
                    continue 
                require _2493 < sub_49c38b0a.length
                require sub_49c38b0a[_2493].length > 0
                require _2493 < sub_49c38b0a.length
                mem[0] = 17
                _4028 = mem[64]
                mem[64] = mem[64] + ceil32(sub_49c38b0a[_2493].length) + 32
                mem[_4028] = sub_49c38b0a[_2493].length
                mem[0] = sha3(17) + _2493
                mem[_4028 + 32] = sub_49c38b0a[_2493].field_0
                t = _4028 + 32
                u = sha3(sha3(17) + _2493)
                while _4028 + sub_49c38b0a[_2493].length > t:
                    _3692 = mem[96]
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                _4919 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4919] = 0
                mem[_4919 + 32] = 0
                _4954 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4954] = sub_49c38b0a[_2493].length
                mem[_4954 + 32] = _4028 + 32
                _5027 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5027] = 0
                mem[_5027 + 32] = 0
                _5032 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5032] = mem[s]
                mem[_5032 + 32] = s + 32
                _5042 = mem[_5032]
                _5043 = mem[64]
                mem[mem[64]] = mem[_5032] + sub_49c38b0a[_2493].length
                mem[64] = mem[64] + floor32(_5042 + sub_49c38b0a[_2493].length + 31) + 32
                if _5042 + sub_49c38b0a[_2493].length:
                    mem[_5043 + 32 len 32 * _5042 + sub_49c38b0a[_2493].length] = code.data[22749 len 32 * _5042 + sub_49c38b0a[_2493].length]
                s = mem[_5032]
                t = mem[_5032 + 32]
                u = _5043 + 32
                while s >= 32:
                    mem[u] = mem[t]
                    _3692 = mem[96]
                    s = s - 32
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_5043 + floor32(mem[_5032]) + 32] = Mask(8 * -(mem[_5032] % 32) + 32, -(8 * -(mem[_5032] % 32) + 32) + 256, mem[_5043 + floor32(mem[_5032]) + 32]) or mem[mem[_5032 + 32] + floor32(mem[_5032]) + -(mem[_5032] % 32) + 32 len mem[_5032] % 32]
                s = mem[_4954]
                t = mem[_4954 + 32]
                u = _5043 + mem[_5032] + 32
                while s >= 32:
                    mem[u] = mem[t]
                    _3692 = mem[96]
                    s = s - 32
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_5043 + mem[_5032] + floor32(mem[_4954]) + 32] = Mask(8 * -(mem[_4954] % 32) + 32, -(8 * -(mem[_4954] % 32) + 32) + 256, mem[_5043 + mem[_5032] + floor32(mem[_4954]) + 32]) or mem[mem[_4954 + 32] + floor32(mem[_4954]) + -(mem[_4954] % 32) + 32 len mem[_4954] % 32]
                _3692 = mem[96]
                s = _2493
                idx = idx + 1
                s = _5043
                continue 
            require _2493 < sub_49c38b0a.length
            require sub_49c38b0a[_2493].length > 0
            require _2493 < sub_49c38b0a.length
            mem[0] = 17
            _3903 = mem[64]
            mem[64] = mem[64] + ceil32(sub_49c38b0a[_2493].length) + 32
            mem[_3903] = sub_49c38b0a[_2493].length
            mem[0] = sha3(17) + _2493
            mem[_3903 + 32] = sub_49c38b0a[_2493].field_0
            t = _3903 + 32
            u = sha3(sha3(17) + _2493)
            while _3903 + sub_49c38b0a[_2493].length > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            _4918 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4918] = 0
            mem[_4918 + 32] = 0
            _4940 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4940] = sub_49c38b0a[_2493].length
            mem[_4940 + 32] = _3903 + 32
            _5026 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5026] = 0
            mem[_5026 + 32] = 0
            _5030 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5030] = mem[s]
            mem[_5030 + 32] = s + 32
            _5039 = mem[_5030]
            _5040 = mem[64]
            mem[mem[64]] = mem[_5030] + sub_49c38b0a[_2493].length
            mem[64] = mem[64] + floor32(_5039 + sub_49c38b0a[_2493].length + 31) + 32
            if _5039 + sub_49c38b0a[_2493].length:
                mem[_5040 + 32 len 32 * _5039 + sub_49c38b0a[_2493].length] = code.data[22749 len 32 * _5039 + sub_49c38b0a[_2493].length]
            s = mem[_5030]
            t = mem[_5030 + 32]
            u = _5040 + 32
            while s >= 32:
                mem[u] = mem[t]
                s = s - 32
                t = t + 32
                u = u + 32
                continue 
            mem[_5040 + floor32(mem[_5030]) + 32] = Mask(8 * -(mem[_5030] % 32) + 32, -(8 * -(mem[_5030] % 32) + 32) + 256, mem[_5040 + floor32(mem[_5030]) + 32]) or mem[mem[_5030 + 32] + floor32(mem[_5030]) + -(mem[_5030] % 32) + 32 len mem[_5030] % 32]
            s = mem[_4940]
            t = mem[_4940 + 32]
            u = _5040 + mem[_5030] + 32
            while s >= 32:
                mem[u] = mem[t]
                s = s - 32
                t = t + 32
                u = u + 32
                continue 
            mem[_5040 + mem[_5030] + floor32(mem[_4940]) + 32] = Mask(8 * -(mem[_4940] % 32) + 32, -(8 * -(mem[_4940] % 32) + 32) + 256, mem[_5040 + mem[_5030] + floor32(mem[_4940]) + 32]) or mem[mem[_4940 + 32] + floor32(mem[_4940]) + -(mem[_4940] % 32) + 32 len mem[_4940] % 32]
            s = _2493
            idx = idx + 1
            s = _5040
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[s]
        _2492 = mem[s]
        mem[mem[64] + 64 len ceil32(mem[s])] = mem[s + 32 len ceil32(mem[s])]
        if not _2492 % 32:
            return 32, mem[mem[64] + 32 len _2492 + 32]
        mem[floor32(_2492) + mem[64] + 64] = mem[floor32(_2492) + mem[64] + -(_2492 % 32) + 96 len _2492 % 32]
        return 32, mem[mem[64] + 32 len floor32(_2492) + 64]
    mem[64] = (32 * arg1.length) + ceil32(sub_cbaec30f.length) + 160
    mem[(32 * arg1.length) + 128] = sub_cbaec30f.length
    mem[0] = 13
    mem[(32 * arg1.length) + 160] = uint256(sub_cbaec30f.field_0)
    idx = (32 * arg1.length) + 160
    s = 0
    while (32 * arg1.length) + sub_cbaec30f.length + 128 > idx:
        mem[idx + 32] = sub_cbaec30f[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    s = 0
    idx = 0
    s = (32 * arg1.length) + 128
    while idx < arg1.length:
        require idx < mem[96]
        _2505 = mem[(32 * idx) + 128]
        _3693 = mem[96]
        t = 0
        while t < _3693:
            if idx != t:
                require t < mem[96]
                require _2505 != mem[(32 * t) + 128]
                _3693 = mem[96]
                t = t + 1
                continue 
            require _2505 < sub_49c38b0a.length
            require sub_49c38b0a[_2505].length > 0
            require _2505 < sub_49c38b0a.length
            mem[0] = 17
            _4031 = mem[64]
            mem[64] = mem[64] + ceil32(sub_49c38b0a[_2505].length) + 32
            mem[_4031] = sub_49c38b0a[_2505].length
            mem[0] = sha3(17) + _2505
            mem[_4031 + 32] = sub_49c38b0a[_2505].field_0
            t = _4031 + 32
            u = sha3(sha3(17) + _2505)
            while _4031 + sub_49c38b0a[_2505].length > t:
                _3693 = mem[96]
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            _4921 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4921] = 0
            mem[_4921 + 32] = 0
            _5006 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5006] = sub_49c38b0a[_2505].length
            mem[_5006 + 32] = _4031 + 32
            _5029 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5029] = 0
            mem[_5029 + 32] = 0
            _5036 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5036] = mem[s]
            mem[_5036 + 32] = s + 32
            _5048 = mem[_5036]
            _5049 = mem[64]
            mem[mem[64]] = mem[_5036] + sub_49c38b0a[_2505].length
            mem[64] = mem[64] + floor32(_5048 + sub_49c38b0a[_2505].length + 31) + 32
            if _5048 + sub_49c38b0a[_2505].length:
                mem[_5049 + 32 len 32 * _5048 + sub_49c38b0a[_2505].length] = code.data[22749 len 32 * _5048 + sub_49c38b0a[_2505].length]
            s = mem[_5036]
            t = mem[_5036 + 32]
            u = _5049 + 32
            while s >= 32:
                mem[u] = mem[t]
                _3693 = mem[96]
                s = s - 32
                t = t + 32
                u = u + 32
                continue 
            mem[_5049 + floor32(mem[_5036]) + 32] = Mask(8 * -(mem[_5036] % 32) + 32, -(8 * -(mem[_5036] % 32) + 32) + 256, mem[_5049 + floor32(mem[_5036]) + 32]) or mem[mem[_5036 + 32] + floor32(mem[_5036]) + -(mem[_5036] % 32) + 32 len mem[_5036] % 32]
            s = mem[_5006]
            t = mem[_5006 + 32]
            u = _5049 + mem[_5036] + 32
            while s >= 32:
                mem[u] = mem[t]
                _3693 = mem[96]
                s = s - 32
                t = t + 32
                u = u + 32
                continue 
            mem[_5049 + mem[_5036] + floor32(mem[_5006]) + 32] = Mask(8 * -(mem[_5006] % 32) + 32, -(8 * -(mem[_5006] % 32) + 32) + 256, mem[_5049 + mem[_5036] + floor32(mem[_5006]) + 32]) or mem[mem[_5006 + 32] + floor32(mem[_5006]) + -(mem[_5006] % 32) + 32 len mem[_5006] % 32]
            _3693 = mem[96]
            s = _2505
            idx = idx + 1
            s = _5049
            continue 
        require _2505 < sub_49c38b0a.length
        require sub_49c38b0a[_2505].length > 0
        require _2505 < sub_49c38b0a.length
        mem[0] = 17
        _3910 = mem[64]
        mem[64] = mem[64] + ceil32(sub_49c38b0a[_2505].length) + 32
        mem[_3910] = sub_49c38b0a[_2505].length
        mem[0] = sha3(17) + _2505
        mem[_3910 + 32] = sub_49c38b0a[_2505].field_0
        t = _3910 + 32
        u = sha3(sha3(17) + _2505)
        while _3910 + sub_49c38b0a[_2505].length > t:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        _4920 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4920] = 0
        mem[_4920 + 32] = 0
        _4992 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4992] = sub_49c38b0a[_2505].length
        mem[_4992 + 32] = _3910 + 32
        _5028 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5028] = 0
        mem[_5028 + 32] = 0
        _5034 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5034] = mem[s]
        mem[_5034 + 32] = s + 32
        _5045 = mem[_5034]
        _5046 = mem[64]
        mem[mem[64]] = mem[_5034] + sub_49c38b0a[_2505].length
        mem[64] = mem[64] + floor32(_5045 + sub_49c38b0a[_2505].length + 31) + 32
        if _5045 + sub_49c38b0a[_2505].length:
            mem[_5046 + 32 len 32 * _5045 + sub_49c38b0a[_2505].length] = code.data[22749 len 32 * _5045 + sub_49c38b0a[_2505].length]
        s = mem[_5034]
        t = mem[_5034 + 32]
        u = _5046 + 32
        while s >= 32:
            mem[u] = mem[t]
            s = s - 32
            t = t + 32
            u = u + 32
            continue 
        mem[_5046 + floor32(mem[_5034]) + 32] = Mask(8 * -(mem[_5034] % 32) + 32, -(8 * -(mem[_5034] % 32) + 32) + 256, mem[_5046 + floor32(mem[_5034]) + 32]) or mem[mem[_5034 + 32] + floor32(mem[_5034]) + -(mem[_5034] % 32) + 32 len mem[_5034] % 32]
        s = mem[_4992]
        t = mem[_4992 + 32]
        u = _5046 + mem[_5034] + 32
        while s >= 32:
            mem[u] = mem[t]
            s = s - 32
            t = t + 32
            u = u + 32
            continue 
        mem[_5046 + mem[_5034] + floor32(mem[_4992]) + 32] = Mask(8 * -(mem[_4992] % 32) + 32, -(8 * -(mem[_4992] % 32) + 32) + 256, mem[_5046 + mem[_5034] + floor32(mem[_4992]) + 32]) or mem[mem[_4992 + 32] + floor32(mem[_4992]) + -(mem[_4992] % 32) + 32 len mem[_4992] % 32]
        s = _2505
        idx = idx + 1
        s = _5046
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[s]
    _2504 = mem[s]
    mem[mem[64] + 64 len ceil32(mem[s])] = mem[s + 32 len ceil32(mem[s])]
    if not _2504 % 32:
        return 32, mem[mem[64] + 32 len _2504 + 32]
    mem[floor32(_2504) + mem[64] + 64] = mem[floor32(_2504) + mem[64] + -(_2504 % 32) + 96 len _2504 % 32]
    return 32, mem[mem[64] + 32 len floor32(_2504) + 64]
}



}
