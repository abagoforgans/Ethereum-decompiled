contract main {




// =====================  Runtime code  =====================


address owner;
address sub_56c82ab3Address;
address sub_643204ccAddress;
address sub_3a84444aAddress;
address sub_a95e9b33Address;
address sub_deff28f5Address;
address sub_2ed53a6aAddress;
array of struct stor7;
mapping of struct stor99;

function sub_2ed53a6a(?) {
    return sub_2ed53a6aAddress
}

function sub_3a84444a(?) {
    return sub_3a84444aAddress
}

function sub_56c82ab3(?) {
    return sub_56c82ab3Address
}

function sub_643204cc(?) {
    return sub_643204ccAddress
}

function owner() {
    return owner
}

function sub_a95e9b33(?) {
    return sub_a95e9b33Address
}

function sub_deff28f5(?) {
    return sub_deff28f5Address
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Invalid Owner Address'
    owner = arg1
}

function sub_8ad6764a(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 8
    mem[ceil32(arg1.length) + 128] = address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].field_0)
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getUserContracts(address arg1) {
    if not uint256(stor7[address(arg1)].field_0):
        mem[(32 * uint256(stor7[address(arg1)].field_0)) + 128] = 32
        mem[(32 * uint256(stor7[address(arg1)].field_0)) + 160] = uint256(stor7[address(arg1)].field_0)
        mem[(32 * uint256(stor7[address(arg1)].field_0)) + 192 len floor32(uint256(stor7[address(arg1)].field_0))] = mem[128 len floor32(uint256(stor7[address(arg1)].field_0))]
        return memory
          from (32 * uint256(stor7[address(arg1)].field_0)) + 128
           len (96 * uint256(stor7[address(arg1)].field_0)) + 64
    mem[128] = address(stor7[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(stor7[address(arg1)].field_0)) + 96 > idx:
        mem[idx + 32] = address(stor7[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor7[address(arg1)].field_0)) + 192 len floor32(uint256(stor7[address(arg1)].field_0))] = mem[128 len floor32(uint256(stor7[address(arg1)].field_0))]
    return Array(len=uint256(stor7[address(arg1)].field_0), data=mem[128 len floor32(uint256(stor7[address(arg1)].field_0))], mem[(32 * uint256(stor7[address(arg1)].field_0)) + floor32(uint256(stor7[address(arg1)].field_0)) + 192 len (32 * uint256(stor7[address(arg1)].field_0)) - floor32(uint256(stor7[address(arg1)].field_0))]), 
}

function sub_5636c7cd(?) payable {
    mem[128 len arg7.length] = arg7[all]
    mem[ceil32(arg7.length) + 128 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
    mem[ceil32(arg7.length) + floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32] = mem[floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32]
    mem[arg7.length + ceil32(arg7.length) + 128] = 8
    if uint8(stor[mem[ceil32(arg7.length) + floor32(arg7.length) + 128 len (arg7.length % 32) + 32]][call.data[arg7 + 36 len floor32(arg7.length)]].field_160):
        revert with 0, 'contract already exists'
    mem[ceil32(arg7.length) + 128] = 55
    mem[ceil32(arg7.length) + 160] = 0x3d602d80600a3d3981f3363d3d373d3d3d363d73bebebebebebebebebebebebe
    mem[ceil32(arg7.length) + 192] = 0xbebebebebebebebe5af43d82803e903d91602b57fd5bf3000000000000000000
    idx = 0
    while idx < 20:
        require idx + 20 < 55
        mem[ceil32(arg7.length) + idx + 180 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_a95e9b33Address', 4))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_a95e9b33Address', 4))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_a95e9b33Address', 4))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_a95e9b33Address', 4))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: mem[ceil32(arg7.length) + 160 len 55]
    mem[ceil32(arg7.length) + 260] = arg8
    mem[ceil32(arg7.length) + 292] = msg.sender
    mem[ceil32(arg7.length) + 324] = arg1
    mem[ceil32(arg7.length) + 356] = arg2
    mem[ceil32(arg7.length) + 388] = arg3
    mem[ceil32(arg7.length) + 420] = arg4
    mem[ceil32(arg7.length) + 452] = arg5
    mem[ceil32(arg7.length) + 484] = arg6
    mem[ceil32(arg7.length) + 516] = 320
    mem[ceil32(arg7.length) + 548] = arg7.length
    mem[ceil32(arg7.length) + 580 len ceil32(arg7.length)] = arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x97b06c55 with:
         gas gas_remaining wei
        args owner, address(arg8), msg.sender, address(arg1), arg2, arg3, arg4, arg5, arg6, Array(len=arg7.length, data=arg7[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(stor7[address(msg.sender)].field_0)++
    address(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = address(create.new_address)
    mem[ceil32(arg7.length) + 288 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
    mem[ceil32(arg7.length) + floor32(arg7.length) + -(arg7.length % 32) + 320 len arg7.length % 32] = mem[floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32]
    mem[arg7.length + ceil32(arg7.length) + 288] = 8
    address(stor[mem[ceil32(arg7.length) + floor32(arg7.length) + 288 len (arg7.length % 32) + 32]][call.data[arg7 + 36 len floor32(arg7.length)]].field_0) = uint64(create.new_address) << 96
    Mask(96, 0, stor[mem[ceil32(arg7.length) + floor32(arg7.length) + 288 len (arg7.length % 32) + 32]][call.data[arg7 + 36 len floor32(arg7.length)]].field_160) = 1
    return address(create.new_address)
}

function sub_a7648b8c(?) payable {
    mem[128 len arg7.length] = arg7[all]
    mem[ceil32(arg7.length) + 128 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
    mem[ceil32(arg7.length) + floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32] = mem[floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32]
    mem[arg7.length + ceil32(arg7.length) + 128] = 8
    if uint8(stor[mem[ceil32(arg7.length) + floor32(arg7.length) + 128 len (arg7.length % 32) + 32]][call.data[arg7 + 36 len floor32(arg7.length)]].field_160):
        revert with 0, 'contract already exists'
    mem[ceil32(arg7.length) + 128] = 55
    mem[ceil32(arg7.length) + 160] = 0x3d602d80600a3d3981f3363d3d373d3d3d363d73bebebebebebebebebebebebe
    mem[ceil32(arg7.length) + 192] = 0xbebebebebebebebe5af43d82803e903d91602b57fd5bf3000000000000000000
    idx = 0
    while idx < 20:
        require idx + 20 < 55
        mem[ceil32(arg7.length) + idx + 180 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_56c82ab3Address', 1))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_56c82ab3Address', 1))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_56c82ab3Address', 1))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_56c82ab3Address', 1))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: mem[ceil32(arg7.length) + 160 len 55]
    mem[ceil32(arg7.length) + 260] = msg.sender
    mem[ceil32(arg7.length) + 292] = arg8
    mem[ceil32(arg7.length) + 324] = arg1
    mem[ceil32(arg7.length) + 356] = arg2
    mem[ceil32(arg7.length) + 388] = arg3
    mem[ceil32(arg7.length) + 420] = arg4
    mem[ceil32(arg7.length) + 452] = arg5
    mem[ceil32(arg7.length) + 484] = arg6
    mem[ceil32(arg7.length) + 516] = 320
    mem[ceil32(arg7.length) + 548] = arg7.length
    mem[ceil32(arg7.length) + 580 len ceil32(arg7.length)] = arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x97b06c55 with:
         gas gas_remaining wei
        args owner, msg.sender, address(arg8), address(arg1), arg2, arg3, arg4, arg5, arg6, Array(len=arg7.length, data=arg7[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(stor7[address(msg.sender)].field_0)++
    address(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = address(create.new_address)
    mem[ceil32(arg7.length) + 288 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
    mem[ceil32(arg7.length) + floor32(arg7.length) + -(arg7.length % 32) + 320 len arg7.length % 32] = mem[floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32]
    mem[arg7.length + ceil32(arg7.length) + 288] = 8
    address(stor[mem[ceil32(arg7.length) + floor32(arg7.length) + 288 len (arg7.length % 32) + 32]][call.data[arg7 + 36 len floor32(arg7.length)]].field_0) = uint64(create.new_address) << 96
    Mask(96, 0, stor[mem[ceil32(arg7.length) + floor32(arg7.length) + 288 len (arg7.length % 32) + 32]][call.data[arg7 + 36 len floor32(arg7.length)]].field_160) = 1
    return address(create.new_address)
}

function sub_54da22be(?) {
    mem[128 len arg8.length] = arg8[all]
    mem[ceil32(arg8.length) + 128 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
    mem[ceil32(arg8.length) + floor32(arg8.length) + -(arg8.length % 32) + 160 len arg8.length % 32] = mem[floor32(arg8.length) + -(arg8.length % 32) + 160 len arg8.length % 32]
    mem[arg8.length + ceil32(arg8.length) + 128] = 8
    if uint8(stor[mem[ceil32(arg8.length) + floor32(arg8.length) + 128 len (arg8.length % 32) + 32]][call.data[arg8 + 36 len floor32(arg8.length)]].field_160):
        revert with 0, 'contract already exists'
    mem[ceil32(arg8.length) + 128] = 55
    mem[ceil32(arg8.length) + 160] = 0x3d602d80600a3d3981f3363d3d373d3d3d363d73bebebebebebebebebebebebe
    mem[ceil32(arg8.length) + 192] = 0xbebebebebebebebe5af43d82803e903d91602b57fd5bf3000000000000000000
    idx = 0
    while idx < 20:
        require idx + 20 < 55
        mem[ceil32(arg8.length) + idx + 180 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_2ed53a6aAddress', 6))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_2ed53a6aAddress', 6))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_2ed53a6aAddress', 6))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_2ed53a6aAddress', 6))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: mem[ceil32(arg8.length) + 160 len 55]
    mem[ceil32(arg8.length) + 260] = arg9
    mem[ceil32(arg8.length) + 292] = msg.sender
    mem[ceil32(arg8.length) + 324] = arg1
    mem[ceil32(arg8.length) + 356] = arg2
    mem[ceil32(arg8.length) + 388] = arg3
    mem[ceil32(arg8.length) + 420] = arg4
    mem[ceil32(arg8.length) + 452] = arg5
    mem[ceil32(arg8.length) + 484] = arg6
    mem[ceil32(arg8.length) + 516] = arg7
    mem[ceil32(arg8.length) + 548] = 352
    mem[ceil32(arg8.length) + 580] = arg8.length
    mem[ceil32(arg8.length) + 612 len ceil32(arg8.length)] = arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x901564dc with:
         gas gas_remaining wei
        args owner, address(arg9), msg.sender, address(arg1), address(arg2), arg3, arg4, arg5, arg6, arg7, Array(len=arg8.length, data=arg8[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(stor7[address(msg.sender)].field_0)++
    address(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = address(create.new_address)
    mem[ceil32(arg8.length) + 288 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
    mem[ceil32(arg8.length) + floor32(arg8.length) + -(arg8.length % 32) + 320 len arg8.length % 32] = mem[floor32(arg8.length) + -(arg8.length % 32) + 160 len arg8.length % 32]
    mem[arg8.length + ceil32(arg8.length) + 288] = 8
    address(stor[mem[ceil32(arg8.length) + floor32(arg8.length) + 288 len (arg8.length % 32) + 32]][call.data[arg8 + 36 len floor32(arg8.length)]].field_0) = uint64(create.new_address) << 96
    Mask(96, 0, stor[mem[ceil32(arg8.length) + floor32(arg8.length) + 288 len (arg8.length % 32) + 32]][call.data[arg8 + 36 len floor32(arg8.length)]].field_160) = 1
    return address(create.new_address)
}

function sub_59eafcf7(?) {
    mem[128 len arg8.length] = arg8[all]
    mem[ceil32(arg8.length) + 128 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
    mem[ceil32(arg8.length) + floor32(arg8.length) + -(arg8.length % 32) + 160 len arg8.length % 32] = mem[floor32(arg8.length) + -(arg8.length % 32) + 160 len arg8.length % 32]
    mem[arg8.length + ceil32(arg8.length) + 128] = 8
    if uint8(stor[mem[ceil32(arg8.length) + floor32(arg8.length) + 128 len (arg8.length % 32) + 32]][call.data[arg8 + 36 len floor32(arg8.length)]].field_160):
        revert with 0, 'contract already exists'
    mem[ceil32(arg8.length) + 128] = 55
    mem[ceil32(arg8.length) + 160] = 0x3d602d80600a3d3981f3363d3d373d3d3d363d73bebebebebebebebebebebebe
    mem[ceil32(arg8.length) + 192] = 0xbebebebebebebebe5af43d82803e903d91602b57fd5bf3000000000000000000
    idx = 0
    while idx < 20:
        require idx + 20 < 55
        mem[ceil32(arg8.length) + idx + 180 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_deff28f5Address', 5))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_deff28f5Address', 5))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_deff28f5Address', 5))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_deff28f5Address', 5))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: mem[ceil32(arg8.length) + 160 len 55]
    mem[ceil32(arg8.length) + 260] = msg.sender
    mem[ceil32(arg8.length) + 292] = arg9
    mem[ceil32(arg8.length) + 324] = arg1
    mem[ceil32(arg8.length) + 356] = arg2
    mem[ceil32(arg8.length) + 388] = arg3
    mem[ceil32(arg8.length) + 420] = arg4
    mem[ceil32(arg8.length) + 452] = arg5
    mem[ceil32(arg8.length) + 484] = arg6
    mem[ceil32(arg8.length) + 516] = arg7
    mem[ceil32(arg8.length) + 548] = 352
    mem[ceil32(arg8.length) + 580] = arg8.length
    mem[ceil32(arg8.length) + 612 len ceil32(arg8.length)] = arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x901564dc with:
         gas gas_remaining wei
        args owner, msg.sender, address(arg9), address(arg1), address(arg2), arg3, arg4, arg5, arg6, arg7, Array(len=arg8.length, data=arg8[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(stor7[address(msg.sender)].field_0)++
    address(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = address(create.new_address)
    mem[ceil32(arg8.length) + 288 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
    mem[ceil32(arg8.length) + floor32(arg8.length) + -(arg8.length % 32) + 320 len arg8.length % 32] = mem[floor32(arg8.length) + -(arg8.length % 32) + 160 len arg8.length % 32]
    mem[arg8.length + ceil32(arg8.length) + 288] = 8
    address(stor[mem[ceil32(arg8.length) + floor32(arg8.length) + 288 len (arg8.length % 32) + 32]][call.data[arg8 + 36 len floor32(arg8.length)]].field_0) = uint64(create.new_address) << 96
    Mask(96, 0, stor[mem[ceil32(arg8.length) + floor32(arg8.length) + 288 len (arg8.length % 32) + 32]][call.data[arg8 + 36 len floor32(arg8.length)]].field_160) = 1
    return address(create.new_address)
}

function sub_6aee24a5(?) payable {
    mem[128 len arg7.length] = arg7[all]
    mem[ceil32(arg7.length) + 128 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
    mem[ceil32(arg7.length) + floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32] = mem[floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32]
    mem[arg7.length + ceil32(arg7.length) + 128] = 8
    if uint8(stor[mem[ceil32(arg7.length) + floor32(arg7.length) + 128 len (arg7.length % 32) + 32]][call.data[arg7 + 36 len floor32(arg7.length)]].field_160):
        revert with 0, 'contract already exists'
    mem[ceil32(arg7.length) + 128] = 55
    mem[ceil32(arg7.length) + 160] = 0x3d602d80600a3d3981f3363d3d373d3d3d363d73bebebebebebebebebebebebe
    mem[ceil32(arg7.length) + 192] = 0xbebebebebebebebe5af43d82803e903d91602b57fd5bf3000000000000000000
    idx = 0
    while idx < 20:
        require idx + 20 < 55
        mem[ceil32(arg7.length) + idx + 180 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_643204ccAddress', 2))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_643204ccAddress', 2))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_643204ccAddress', 2))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_643204ccAddress', 2))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: mem[ceil32(arg7.length) + 160 len 55]
    mem[ceil32(arg7.length) + 260] = arg8
    mem[ceil32(arg7.length) + 292] = msg.sender
    mem[ceil32(arg7.length) + 324] = arg1
    mem[ceil32(arg7.length) + 356] = arg2
    mem[ceil32(arg7.length) + 388] = arg3
    mem[ceil32(arg7.length) + 420] = arg4
    mem[ceil32(arg7.length) + 452] = arg5
    mem[ceil32(arg7.length) + 484] = arg6
    mem[ceil32(arg7.length) + 516] = 320
    mem[ceil32(arg7.length) + 548] = arg7.length
    mem[ceil32(arg7.length) + 580 len ceil32(arg7.length)] = arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x97b06c55 with:
         gas gas_remaining wei
        args owner, address(arg8), msg.sender, address(arg1), arg2, arg3, arg4, arg5, arg6, Array(len=arg7.length, data=arg7[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value <= 0:
        uint256(stor7[address(msg.sender)].field_0)++
        address(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = address(create.new_address)
        mem[ceil32(arg7.length) + 288 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
        mem[ceil32(arg7.length) + floor32(arg7.length) + -(arg7.length % 32) + 320 len arg7.length % 32] = mem[floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32]
        mem[arg7.length + ceil32(arg7.length) + 288] = 8
        address(stor[mem[ceil32(arg7.length) + 292 len arg7.length + 28]][0].field_0) = uint64(create.new_address) << 96
        Mask(96, 0, stor[mem[ceil32(arg7.length) + 292 len arg7.length + 28]][0].field_160) = 1
    else:
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x3c68eb81 with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint256(stor7[address(msg.sender)].field_0)++
        address(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = address(create.new_address)
        mem[ceil32(arg7.length) + 288 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
        mem[ceil32(arg7.length) + floor32(arg7.length) + -(arg7.length % 32) + 320 len arg7.length % 32] = mem[floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32]
        mem[arg7.length + ceil32(arg7.length) + 288] = 8
        address(stor[mem[ceil32(arg7.length) + 320 len arg7.length]][0x3c68eb8100000000000000000000000000000000000000000000000000000000].field_0) = uint64(create.new_address) << 96
        Mask(96, 0, stor[mem[ceil32(arg7.length) + 320 len arg7.length]][0x3c68eb8100000000000000000000000000000000000000000000000000000000].field_160) = 1
    return address(create.new_address)
}

function sub_01e40862(?) payable {
    mem[128 len arg7.length] = arg7[all]
    mem[ceil32(arg7.length) + 128 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
    mem[ceil32(arg7.length) + floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32] = mem[floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32]
    mem[arg7.length + ceil32(arg7.length) + 128] = 8
    if uint8(stor[mem[ceil32(arg7.length) + floor32(arg7.length) + 128 len (arg7.length % 32) + 32]][call.data[arg7 + 36 len floor32(arg7.length)]].field_160):
        revert with 0, 'contract already exists'
    mem[ceil32(arg7.length) + 128] = 55
    mem[ceil32(arg7.length) + 160] = 0x3d602d80600a3d3981f3363d3d373d3d3d363d73bebebebebebebebebebebebe
    mem[ceil32(arg7.length) + 192] = 0xbebebebebebebebe5af43d82803e903d91602b57fd5bf3000000000000000000
    idx = 0
    while idx < 20:
        require idx + 20 < 55
        mem[ceil32(arg7.length) + idx + 180 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_3a84444aAddress', 3))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_3a84444aAddress', 3))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_3a84444aAddress', 3))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'sub_3a84444aAddress', 3))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: mem[ceil32(arg7.length) + 160 len 55]
    mem[ceil32(arg7.length) + 260] = msg.sender
    mem[ceil32(arg7.length) + 292] = arg8
    mem[ceil32(arg7.length) + 324] = arg1
    mem[ceil32(arg7.length) + 356] = arg2
    mem[ceil32(arg7.length) + 388] = arg3
    mem[ceil32(arg7.length) + 420] = arg4
    mem[ceil32(arg7.length) + 452] = arg5
    mem[ceil32(arg7.length) + 484] = arg6
    mem[ceil32(arg7.length) + 516] = 320
    mem[ceil32(arg7.length) + 548] = arg7.length
    mem[ceil32(arg7.length) + 580 len ceil32(arg7.length)] = arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x97b06c55 with:
         gas gas_remaining wei
        args owner, msg.sender, address(arg8), address(arg1), arg2, arg3, arg4, arg5, arg6, Array(len=arg7.length, data=arg7[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value < arg4:
        uint256(stor7[address(msg.sender)].field_0)++
        address(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = address(create.new_address)
        mem[ceil32(arg7.length) + 288 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
        mem[ceil32(arg7.length) + floor32(arg7.length) + -(arg7.length % 32) + 320 len arg7.length % 32] = mem[floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32]
        mem[arg7.length + ceil32(arg7.length) + 288] = 8
        address(stor[mem[ceil32(arg7.length) + 292 len arg7.length + 28]][0].field_0) = uint64(create.new_address) << 96
        Mask(96, 0, stor[mem[ceil32(arg7.length) + 292 len arg7.length + 28]][0].field_160) = 1
    else:
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x6f58baa7 with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint256(stor7[address(msg.sender)].field_0)++
        address(stor7[address(msg.sender)][uint256(stor7[address(msg.sender)].field_0)].field_0) = address(create.new_address)
        mem[ceil32(arg7.length) + 288 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
        mem[ceil32(arg7.length) + floor32(arg7.length) + -(arg7.length % 32) + 320 len arg7.length % 32] = mem[floor32(arg7.length) + -(arg7.length % 32) + 160 len arg7.length % 32]
        mem[arg7.length + ceil32(arg7.length) + 288] = 8
        address(stor[mem[ceil32(arg7.length) + 320 len arg7.length]][0x6f58baa700000000000000000000000000000000000000000000000000000000].field_0) = uint64(create.new_address) << 96
        Mask(96, 0, stor[mem[ceil32(arg7.length) + 320 len arg7.length]][0x6f58baa700000000000000000000000000000000000000000000000000000000].field_160) = 1
    return address(create.new_address)
}



}
