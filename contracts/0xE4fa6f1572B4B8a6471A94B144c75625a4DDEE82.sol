contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 24 * 3600
    stor1 = 168 * 24 * 3600
    stor2 = 720 * 24 * 3600
    return code.data[42 len 3108]
}



// =====================  Runtime code  =====================


address stor3;
uint256 stor3;
array of uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor6;
address stor7;
uint256 stor7;

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.return_data[12 len 20] == msg.sender
    mem[64] = ceil32(arg2.length) + 160
    mem[ceil32(arg2.length) + 128] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s
            continue 
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s
            continue 
        require idx < arg2.length
        idx = idx + 1
        s = (10 * s) + mem[idx + 128 len 1] - 48
        continue 
    if s / 1000 < stor5:
        call address(stor7) with:
           value eth.balance(this.address) wei
             gas 0 wei
    else:
        call address(stor6) with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function oraclize_query(string arg1, string arg2) payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
    call address(stor3).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, arg1.length + 128, arg1.length, arg1[all], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
            call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, arg1.length + 128, arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 324 len -(arg2.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 324 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 292 len -(arg1.length % 32) + 32], arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
            call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 292 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 356 len -(arg2.length % 32) + 32]
    require ext_call.success
    return ext_call.return_data[0]
}

function escrow(uint256 arg1, string arg2, address arg3, uint256 arg4) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 7
    mem[ceil32(arg2.length) + 160] = 'DEVCON1'
    mem[0] = 4
    stor4[] = Array(len=arg2.length, data=arg2[all])
    stor5 = arg1
    uint256(stor6) = arg3 or Mask(96, 160, uint256(stor6))
    uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
    mem[ceil32(arg2.length) + 192] = 3
    mem[ceil32(arg2.length) + 224] = 'URL'
    mem[ceil32(arg2.length) + 256] = 40
    mem[ceil32(arg2.length) + 288] = '    https://insight.bitpay.com/a'
    mem[ceil32(arg2.length) + 320] = 'pi/addr/'
    mem[ceil32(arg2.length) + 352] = 0
    mem[ceil32(arg2.length) + 384] = 0
    mem[ceil32(arg2.length) + 416] = 0
    mem[ceil32(arg2.length) + 448] = 0
    mem[64] = ceil32(arg2.length) + 736
    mem[ceil32(arg2.length) + 480] = 222
    mem[ceil32(arg2.length) + 512 len 222] = code.data[2886 len 222]
    idx = 0
    s = 0
    while idx < 40:
        require idx < 40
        require s < 222
        mem[s + ceil32(arg2.length) + 512] = Mask(8, 248, mem[ceil32(arg2.length) + idx + 288])
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = 40
    while idx < arg2.length:
        require idx < arg2.length
        require s < 222
        mem[s + ceil32(arg2.length) + 512] = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        s = s + 1
        continue 
    idx = mem[96] + 40
    while idx < mem[ceil32(arg2.length) + 480]:
        require idx < mem[ceil32(arg2.length) + 480]
        mem[idx + ceil32(arg2.length) + 512] = 0
        idx = idx + 1
        continue 
    _1298 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1298] = 8
    mem[_1298 + 32] = '/balance'
    _1303 = mem[64]
    mem[64] = mem[64] + 32
    mem[_1303] = 0
    _1304 = mem[64]
    mem[64] = mem[64] + 32
    mem[_1304] = 0
    _1305 = mem[64]
    mem[64] = mem[64] + 32
    mem[_1305] = 0
    _1306 = mem[64]
    mem[64] = mem[64] + 32
    mem[_1306] = 0
    _1307 = mem[64]
    mem[64] = mem[64] + 256
    mem[_1307] = 222
    mem[_1307 + 32 len 222] = code.data[2886 len 222]
    _1502 = mem[ceil32(arg2.length) + 480]
    idx = 0
    s = 0
    while idx < _1502:
        require idx < mem[ceil32(arg2.length) + 480]
        require s < 222
        mem[s + _1307 + 32] = Mask(8, 248, mem[ceil32(arg2.length) + idx + 512])
        _1502 = mem[ceil32(arg2.length) + 480]
        idx = idx + 1
        s = s + 1
        continue 
    _1698 = mem[_1298]
    idx = 0
    s = _1502
    while idx < _1698:
        require idx < mem[_1298]
        require s < 222
        mem[s + _1307 + 32] = Mask(8, 248, mem[_1298 + idx + 32])
        _1698 = mem[_1298]
        idx = idx + 1
        s = s + 1
        continue 
    idx = _1502 + _1698
    while idx < mem[_1307]:
        require idx < mem[_1307]
        mem[idx + _1307 + 32] = 0
        idx = idx + 1
        continue 
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
    mem[mem[64]] = 0x524f388900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[ceil32(arg2.length) + 192]
    _1889 = mem[ceil32(arg2.length) + 192]
    mem[mem[64] + 68 len mem[ceil32(arg2.length) + 192]] = mem[ceil32(arg2.length) + 224 len mem[ceil32(arg2.length) + 192]]
    if not _1889 % 32:
        call address(stor3).getPrice(string rg1) with:
             gas gas_remaining - 25050 wei
            args 32, mem[mem[64] + 36 len _1889 + 32]
        require ext_call.success
        mem[mem[64]] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = mem[ceil32(arg2.length) + 192]
        _1896 = mem[ceil32(arg2.length) + 192]
        mem[mem[64] + 132 len mem[ceil32(arg2.length) + 192]] = mem[ceil32(arg2.length) + 224 len mem[ceil32(arg2.length) + 192]]
        if not _1896 % 32:
            mem[mem[64] + 68] = _1896 + 128
            mem[_1896 + mem[64] + 132] = mem[_1307]
            _1899 = mem[_1307]
            mem[_1896 + mem[64] + 164 len mem[_1307]] = mem[_1307 + 32 len mem[_1307]]
            if not _1899 % 32:
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, _1896 + 128, mem[mem[64] + 100 len _1899 + _1896 + 64]
            else:
                mem[floor32(_1899) + _1896 + mem[64] + 164] = mem[floor32(_1899) + _1896 + mem[64] + -(_1899 % 32) + 196 len _1899 % 32]
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, _1896 + 128, mem[mem[64] + 100 len floor32(_1899) + _1896 + 96]
        else:
            mem[floor32(_1896) + mem[64] + 132] = mem[floor32(_1896) + mem[64] + -(_1896 % 32) + 164 len _1896 % 32]
            mem[mem[64] + 68] = floor32(_1896) + 160
            mem[floor32(_1896) + mem[64] + 164] = mem[_1307]
            _1909 = mem[_1307]
            mem[floor32(_1896) + mem[64] + 196 len mem[_1307]] = mem[_1307 + 32 len mem[_1307]]
            if not _1909 % 32:
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, floor32(_1896) + 160, mem[mem[64] + 100 len _1909 + floor32(_1896) + 96]
            else:
                mem[floor32(_1909) + floor32(_1896) + mem[64] + 196] = mem[floor32(_1909) + floor32(_1896) + mem[64] + -(_1909 % 32) + 228 len _1909 % 32]
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, floor32(_1896) + 160, mem[mem[64] + 100 len floor32(_1909) + floor32(_1896) + 128]
    else:
        mem[floor32(_1889) + mem[64] + 68] = mem[floor32(_1889) + mem[64] + -(_1889 % 32) + 100 len _1889 % 32]
        call address(stor3).getPrice(string rg1) with:
             gas gas_remaining - 25050 wei
            args 32, mem[mem[64] + 36 len floor32(_1889) + 64]
        require ext_call.success
        mem[mem[64]] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = mem[ceil32(arg2.length) + 192]
        _1905 = mem[ceil32(arg2.length) + 192]
        mem[mem[64] + 132 len mem[ceil32(arg2.length) + 192]] = mem[ceil32(arg2.length) + 224 len mem[ceil32(arg2.length) + 192]]
        if not _1905 % 32:
            mem[mem[64] + 68] = _1905 + 128
            mem[_1905 + mem[64] + 132] = mem[_1307]
            _1911 = mem[_1307]
            mem[_1905 + mem[64] + 164 len mem[_1307]] = mem[_1307 + 32 len mem[_1307]]
            if not _1911 % 32:
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, _1905 + 128, mem[mem[64] + 100 len _1911 + _1905 + 64]
            else:
                mem[floor32(_1911) + _1905 + mem[64] + 164] = mem[floor32(_1911) + _1905 + mem[64] + -(_1911 % 32) + 196 len _1911 % 32]
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, _1905 + 128, mem[mem[64] + 100 len floor32(_1911) + _1905 + 96]
        else:
            mem[floor32(_1905) + mem[64] + 132] = mem[floor32(_1905) + mem[64] + -(_1905 % 32) + 164 len _1905 % 32]
            mem[mem[64] + 68] = floor32(_1905) + 160
            mem[floor32(_1905) + mem[64] + 164] = mem[_1307]
            _1921 = mem[_1307]
            mem[floor32(_1905) + mem[64] + 196 len mem[_1307]] = mem[_1307 + 32 len mem[_1307]]
            if not _1921 % 32:
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, floor32(_1905) + 160, mem[mem[64] + 100 len _1921 + floor32(_1905) + 96]
            else:
                mem[floor32(_1921) + floor32(_1905) + mem[64] + 196] = mem[floor32(_1921) + floor32(_1905) + mem[64] + -(_1921 % 32) + 228 len _1921 % 32]
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, floor32(_1905) + 160, mem[mem[64] + 100 len floor32(_1921) + floor32(_1905) + 128]
    require ext_call.success
}



}
