contract main {




// =====================  Runtime code  =====================


address libraryAddress;

function libraryAddress() {
    return libraryAddress
}

function _fallback() payable {
    revert
}

function onlyCreate() {
    mem[128] = 0x600034603b57603080600f833981f36000368180378080368173bebebebebebe
    mem[160] = 0xbebebebebebebebebebebebebebe5af43d82803e15602c573d90f35b3d90fd00
    idx = 0
    while idx < 20:
        require idx + 26 < 63
        mem[idx + 154 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'libraryAddress', 0))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'libraryAddress', 0))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'libraryAddress', 0))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'libraryAddress', 0))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: mem[128 len 63]
}

function sub_5c141f41(?) {
    mem[ceil32(arg1.length) + 160] = 0x600034603b57603080600f833981f36000368180378080368173bebebebebebe
    mem[ceil32(arg1.length) + 192] = 0xbebebebebebebebebebebebebebe5af43d82803e15602c573d90f35b3d90fd00
    idx = 0
    while idx < 20:
        require idx + 26 < 63
        mem[ceil32(arg1.length) + idx + 186 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'libraryAddress', 0))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'libraryAddress', 0))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'libraryAddress', 0))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'libraryAddress', 0))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: mem[ceil32(arg1.length) + 160 len 63]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf9fbdb9e with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x5c964e59: Array(len=arg1.length, data=arg1[all]), address(create.new_address)
}



}
