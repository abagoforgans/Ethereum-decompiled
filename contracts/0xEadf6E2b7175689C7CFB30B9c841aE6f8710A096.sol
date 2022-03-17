contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 24 * 3600
    stor1 = 168 * 24 * 3600
    stor2 = 720 * 24 * 3600
    return code.data[42 len 2941]
}



// =====================  Runtime code  =====================


address stor3;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor5;
address stor6;
uint256 stor6;

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
    if s / 1000 < stor4:
        call address(stor6) with:
           value eth.balance(this.address) wei
             gas 0 wei
    else:
        call address(stor5) with:
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
    stor4 = arg1
    uint256(stor5) = arg3 or Mask(96, 160, uint256(stor5))
    uint256(stor6) = msg.sender or Mask(96, 160, uint256(stor6))
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
    mem[ceil32(arg2.length) + 512 len 222] = code.data[2719 len 222]
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
    _260 = mem[64]
    mem[64] = mem[64] + 64
    mem[_260] = 8
    mem[_260 + 32] = '/balance'
    _261 = mem[64]
    mem[64] = mem[64] + 32
    mem[_261] = 0
    _262 = mem[64]
    mem[64] = mem[64] + 32
    mem[_262] = 0
    _263 = mem[64]
    mem[64] = mem[64] + 32
    mem[_263] = 0
    _264 = mem[64]
    mem[64] = mem[64] + 32
    mem[_264] = 0
    _265 = mem[64]
    mem[64] = mem[64] + 256
    mem[_265] = 222
    mem[_265 + 32 len 222] = code.data[2719 len 222]
    _334 = mem[ceil32(arg2.length) + 480]
    idx = 0
    s = 0
    while idx < _334:
        require idx < mem[ceil32(arg2.length) + 480]
        require s < 222
        mem[s + _265 + 32] = Mask(8, 248, mem[ceil32(arg2.length) + idx + 512])
        _334 = mem[ceil32(arg2.length) + 480]
        idx = idx + 1
        s = s + 1
        continue 
    _402 = mem[_260]
    idx = 0
    s = _334
    while idx < _402:
        require idx < mem[_260]
        require s < 222
        mem[s + _265 + 32] = Mask(8, 248, mem[_260 + idx + 32])
        _402 = mem[_260]
        idx = idx + 1
        s = s + 1
        continue 
    idx = _334 + _402
    while idx < mem[_265]:
        require idx < mem[_265]
        mem[idx + _265 + 32] = 0
        idx = idx + 1
        continue 
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor3) = ext_call.return_data[0] or Mask(96, 160, uint256(stor3))
    mem[mem[64]] = 0x524f388900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[ceil32(arg2.length) + 192]
    _474 = mem[ceil32(arg2.length) + 192]
    mem[mem[64] + 68 len mem[ceil32(arg2.length) + 192]] = mem[ceil32(arg2.length) + 224 len mem[ceil32(arg2.length) + 192]]
    if not _474 % 32:
        call address(stor3).getPrice(string rg1) with:
             gas gas_remaining - 25050 wei
            args 32, mem[mem[64] + 36 len _474 + 32]
        require ext_call.success
        mem[mem[64]] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = mem[ceil32(arg2.length) + 192]
        _481 = mem[ceil32(arg2.length) + 192]
        mem[mem[64] + 132 len mem[ceil32(arg2.length) + 192]] = mem[ceil32(arg2.length) + 224 len mem[ceil32(arg2.length) + 192]]
        if not _481 % 32:
            mem[mem[64] + 68] = _481 + 128
            mem[_481 + mem[64] + 132] = mem[_265]
            _484 = mem[_265]
            mem[_481 + mem[64] + 164 len mem[_265]] = mem[_265 + 32 len mem[_265]]
            if not _484 % 32:
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, _481 + 128, mem[mem[64] + 100 len _484 + _481 + 64]
            else:
                mem[floor32(_484) + _481 + mem[64] + 164] = mem[floor32(_484) + _481 + mem[64] + -(_484 % 32) + 196 len _484 % 32]
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, _481 + 128, mem[mem[64] + 100 len floor32(_484) + _481 + 96]
        else:
            mem[floor32(_481) + mem[64] + 132] = mem[floor32(_481) + mem[64] + -(_481 % 32) + 164 len _481 % 32]
            mem[mem[64] + 68] = floor32(_481) + 160
            mem[floor32(_481) + mem[64] + 164] = mem[_265]
            _494 = mem[_265]
            mem[floor32(_481) + mem[64] + 196 len mem[_265]] = mem[_265 + 32 len mem[_265]]
            if not _494 % 32:
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, floor32(_481) + 160, mem[mem[64] + 100 len _494 + floor32(_481) + 96]
            else:
                mem[floor32(_494) + floor32(_481) + mem[64] + 196] = mem[floor32(_494) + floor32(_481) + mem[64] + -(_494 % 32) + 228 len _494 % 32]
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, floor32(_481) + 160, mem[mem[64] + 100 len floor32(_494) + floor32(_481) + 128]
    else:
        mem[floor32(_474) + mem[64] + 68] = mem[floor32(_474) + mem[64] + -(_474 % 32) + 100 len _474 % 32]
        call address(stor3).getPrice(string rg1) with:
             gas gas_remaining - 25050 wei
            args 32, mem[mem[64] + 36 len floor32(_474) + 64]
        require ext_call.success
        mem[mem[64]] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = mem[ceil32(arg2.length) + 192]
        _490 = mem[ceil32(arg2.length) + 192]
        mem[mem[64] + 132 len mem[ceil32(arg2.length) + 192]] = mem[ceil32(arg2.length) + 224 len mem[ceil32(arg2.length) + 192]]
        if not _490 % 32:
            mem[mem[64] + 68] = _490 + 128
            mem[_490 + mem[64] + 132] = mem[_265]
            _496 = mem[_265]
            mem[_490 + mem[64] + 164 len mem[_265]] = mem[_265 + 32 len mem[_265]]
            if not _496 % 32:
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, _490 + 128, mem[mem[64] + 100 len _496 + _490 + 64]
            else:
                mem[floor32(_496) + _490 + mem[64] + 164] = mem[floor32(_496) + _490 + mem[64] + -(_496 % 32) + 196 len _496 % 32]
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, _490 + 128, mem[mem[64] + 100 len floor32(_496) + _490 + 96]
        else:
            mem[floor32(_490) + mem[64] + 132] = mem[floor32(_490) + mem[64] + -(_490 % 32) + 164 len _490 % 32]
            mem[mem[64] + 68] = floor32(_490) + 160
            mem[floor32(_490) + mem[64] + 164] = mem[_265]
            _506 = mem[_265]
            mem[floor32(_490) + mem[64] + 196 len mem[_265]] = mem[_265 + 32 len mem[_265]]
            if not _506 % 32:
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, floor32(_490) + 160, mem[mem[64] + 100 len _506 + floor32(_490) + 96]
            else:
                mem[floor32(_506) + floor32(_490) + mem[64] + 196] = mem[floor32(_506) + floor32(_490) + mem[64] + -(_506 % 32) + 228 len _506 % 32]
                call address(stor3).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 34050 wei
                    args arg4, 96, floor32(_490) + 160, mem[mem[64] + 100 len floor32(_506) + floor32(_490) + 128]
    require ext_call.success
}



}
